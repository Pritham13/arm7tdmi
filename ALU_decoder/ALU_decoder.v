module ALU_decoder (
    input [3:0]opcode,
    input reset,
    output reg alu_control
);
always @(posedge reset)begin
    alu_control = 1'b0;
end
always @(opcode)begin
    case opcode
        4'b0:alu_control = 4'd0;//ADD
    endcase
end
endmodule