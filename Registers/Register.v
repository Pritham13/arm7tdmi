// Stuff left :setup the special registers such as CPSR ,LR ,etc
module registers(
    input write_en, read_en,
    input [3:0]read_reg1, read_reg2,
    input [31:0] write_reg, write_data,
    input zero_flag,carry_flag, overflow_flag, negative_flag,
    input clock, reset
    output reg [31:0] read_data1,read_data2,
);
    integer i;
    reg [31:0] register [15:0];
    reg CPSR, LR;
    always @(posedge reset) 
    begin
        for (i=0;i<15;i=i+1)
            begin
                register[i] <= 32'h0; 
            end  
        CPSR <= 4'd0;
    end
    // The register file will always output the vaules corresponding to read register numbers 
    // It is independent of any other signal
    if(read_en)
    begin
        read_data1 = register[read_reg_num1];
        read_data2 = register[read_reg_num2];
    end
    always @(posedge clock)
    begin

        if (write_en) begin
            register[write_reg] <= write_data;
            CPSR <= {negative_flag, zero_flag, carry_flag, overflow_flag}
        end     
    end
endmodule
