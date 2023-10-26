module barrel_shifter(
    input [31:0] operand,
    input shift_bits,
    input [2:0] opcode,
    output reg [31:0] shifted_output
);
    always @ (opcode)begin
            case(opcode)
                3'b000:
                    begin
                      shifted_output = operand_a << shift_bits;
                    end
                3'b001:
                    begin
                      shifted_output = operand_a >> shift_bits;
                    end
    end


endmodule