module Control (
    input clk,
    input [2:0]tem,
    input [3:0]opcode,
    output branch_op,alu_op,mul_op
);
    case (opcode)
        3'b00?:alu_op=opcode;
        3'b000:mul_op=opcode;
        3'b101:mul_op=opcode;
    endcase
endmodule