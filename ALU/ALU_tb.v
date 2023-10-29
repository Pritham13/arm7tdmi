module ALU_tb();
    reg [31:0] a,b;
    reg [3:0] ALU_control;
    wire ZERO_flag;
    wire [31:0] Result;

    ALU alu_module(.operand_a(a),.operand_b(b),.alu_control(ALU_control),.zero_flag(ZERO_flag),.result(Result));


    initial
        begin
            $dumpfile("alu_output.vcd");
            $dumpvars(0,ALU_tb);
        end
    initial
        begin
            a = 23; b = 42;  ALU_control = 4'b0000;
        #20 a = 23; b = 42;  ALU_control = 4'b0001;
        #20 a = 23; b = 42;  ALU_control = 4'b0010;
        #20 a = 23; b = 42;  ALU_control = 4'b0011;
        #20 a = 23; b = 42;  ALU_control = 4'b0100;
        #20 a = 42; b = 23;  ALU_control = 4'b0110;
        end
    initial
        #150 $finish;
endmodule