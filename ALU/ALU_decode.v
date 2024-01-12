module ALU_decode(
    input [31:0]instruction,
    output write_read_en,
    output read_reg1, read_reg2, 
    output [31:0] write_reg, write_data,
    output zero_flag, carry_flag, overflow_flag, negative_flag,
    output regwrite,reg_read
); 
wire I = instruction[25]; //Immediate Operand
wire [7:0]shift;
always@(instruction)
begin
    case(write_read_en):
    1'b0: begin //read enabled
            read_reg1 <= instruction[19:16];
            if (I) begin
            shift <= instruction[11:4];
            read_reg2 <= instruction[3:0];
            end
        end
    1'b1: write_reg <= instruction[15:12]; //write enabled
    default: //read enable    
end            
endmodule