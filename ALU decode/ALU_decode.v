module ALU_decode(
    input [31:0]instruction,
    output write_read_en,
    output read_reg1, read_reg2, 
    output [31:0] write_reg, write_data,
    output negative_flag, carry_flag, overflow_flag, zero_flag,  
    output regwrite,reg_read
); 
wire I = instruction[25]; //Immediate Operand
wire [7:0]shift;
always@(instruction)
begin
    if(~ write_read_en) begin //read enabled = 0
            read_reg1 <= instruction[19:16];//4-bit address data because its one amongst the 16 registers
            if (~I) begin
            shift <= instruction[11:4];
            read_reg2 <= instruction[3:0];
            end
            negative_flag <= instruction[31];
            carry_flag    <= instruction[30];
            overflow_flag <= instruction[29];
            zero_flag     <= instruction[28];
        end
    else write_reg <= instruction[15:12]; //write enabled = 1
end            
endmodule