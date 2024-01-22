module Control (
    input [31:0]instruction,
    output reg [31:0]ALUop,multiply_op,
    output reg [23:0]Branch_op
);
always @ (*)//to be changed later
begin
    case (instruction[27:25])
        3'b001:ALUop = instruction;
        3'b101:Branch_op = instruction[23:0];
        3'b000:multiply_op = instruction;
    endcase
end
endmodule