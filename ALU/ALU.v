`define ADD 4'b0000  // 0b0000 represents addition
`define SUB 4'b0001  // 0b0001 represents subtraction
`define ADDS 4'b0010  // 0b0010 represents add with carry flag
`define SUBS 4'b0011  // 0b0011 represents subtraction with negative flag
`define CMP 4'b0100  // 0b0100 represents comparison
`define AND 4'b0111  // 0b0111 represents bitwise AND
`define OR  4'b1000  // 0b1000 represents bitwise OR
`define XOR 4'b1001  // 0b1001 represents bitwise XOR
`define MVN 4'b1010  // 0b1010 represents bitwise NOT

module ALU(
    input [31:0] operand_a, operand_b,
    input [3:0] alu_control,
    output reg [31:0] result,
    output reg zero_flag,
    output reg carry_flag,
    output reg overflow_flag,
    output reg negative_flag
);
    always @(*)
        begin
             case(alu_control)
                `AND: 
                    result = operand_a & operand_b;
                `ADDS: 
                    overflow_detect(
                        .in1(operand_a),
                        .in2(operand_b),
                        .result(result),
                        .overflow(overflow_flag)
                    );
                    begin
                           zero_flag = (result == 32'd0) ? 1'b1 : 1'b0;
                    end
                `OR: 
                    result = operand_a | operand_b;
                `ADD: 
                    result = operand_a + operand_b;
                `SUB: 
                    result = operand_a - operand_b;
                `XOR: 
                    result = operand_a ^ operand_b;
                // Handle the NOT operation
                `MVN: 
                    result = ~operand_a;
                // Handle the comparison operation
                `CMP: 
                    begin
                        if (operand_a < operand_b)
                            result = 1'b1;
                        else
                            result = 1'b0;
                    end
                   
            endcase
        end
endmodule

module overflow_detect (
    input signed [31:0] in1,
    input signed [31:0] in2,
    output signed [31:0] result,
    output overflow
);

    wire signed [32:0] in2_w;  // Extend 1 bit for saturation

    assign in2_w = in2 + in1;  // Signed arithmetic

    assign result = (in2_w[32:31] == 2'b01) ? {1'b0, {(32-1){1'b1}}}
                                           : (in2_w[32:31] == 2'b10) ? {1'b1, {(32-1){1'b0}}}
                                           : in2_w[31:0];

    assign overflow = (in2_w[32:31] == 2'b01 || in2_w[32:31] == 2'b10);
endmodule
