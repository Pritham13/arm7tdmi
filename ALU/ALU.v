`define ADD 4'b0000  // 0b0000 represents addition
`define SUB 4'b0001  // 0b0001 represents subtraction
`define ADDS 4'b0010  // 0b0010 represents add with carry flag
`define SUBS 4'b0011  // 0b0011 represents subtraction with negative flag
`define CMP 4'b0100  // 0b0100 represents comparison
`define AND 4'b0111  // 0b0111 represents bitwise AND
`define OR 4'b1000  // 0b1000 represents bitwise OR
`define XOR 4'b1001  // 0b1001 represents bitwise XOR
`define MVN 4'b1010  // 0b1010 represents bitwise NOT


module ALU_test(
    input [31:0] operand_a, operand_b,
    input [3:0] alu_control,
    output reg [31:0] result,
    output reg zero_flag,
    output reg carry_flag,
    output reg overflow_flag,
    output reg negative_flag
);
reg [32:0] in2_w;
    always @(*)
        begin
             case(alu_control)
                `ADD: 
                    result = operand_a + operand_b;
                `SUB: 
                    result = operand_a - operand_b;
                `ADDS: 
                    begin
                        in2_w = operand_a + operand_b;  // Signed arithmetic

                        if (in2_w[32:31] == 2'b01)
                            result = {1'b0, {(32-1){1'b1}}};
                        else if (in2_w[32:31] == 2'b10)
                            result = {1'b1, {(32-1){1'b0}}};
                        else
                            result = in2_w[31:0];

                        overflow_flag = (in2_w[32:31] == 2'b01 || in2_w[32:31] == 2'b10);
                    end
                `AND: 
                    result = operand_a & operand_b;
                `OR: 
                    result = operand_a | operand_b;
                `XOR: 
                    result = operand_a ^ operand_b;
                `MVN: 
                    result = ~operand_a;
                `CMP: 
                    if (operand_a < operand_b)
                        result = 32'd1;
                    else
                        result = 32'd0;
             endcase
        end
endmodule


