// Stuff left :setup the special registers such as CPSR ,LR ,etc
module registers(
    input [4:0] read_reg_num1, read_reg_num2,
    input [4:0] write_reg,
    input [31:0] write_data,
    output [31:0] read_data1,read_data2,
    input regwrite,
    input clock,
    input reset
);
    integer i;
    reg [31:0] register [36:0];
    always @(posedge reset) 
    begin
        for (i=0;i<37;i=i+1)
            begin
                register[i] = 32'h0;
            end  
    end
     // The register file will always output the vaules corresponding to read register numbers 
    // It is independent of any other signal
    assign read_data1 = register[read_reg_num1];
    assign read_data2 = register[read_reg_num2];
        always @(posedge clock)
    begin

        if (regwrite) begin
            register[write_reg] = write_data;
        end     
    end
endmodule