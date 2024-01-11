module COntrol(input [31:0] instruction,
output reg out);

wire out1, out2;
wire opcode = instruction[24:21];
wire pre_op = instruction[27:25];//decides the instruction type

always@(instruction)
begin 
    case(pre_op) //synopsis_full_case
        3'b00?: out <= out1; //Data processing
        3'b01?: out <= out2; //Load/Store - Byte/Word
        3'b100: out <= out3; //Load/Store Multiple
        3'b101: out <= out4; //Branch
        default: //mostly ALU
        endcase
    //module instantiations
end 

endmodule