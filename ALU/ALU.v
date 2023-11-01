`define ADD 4'b0000  // 0b0000 represents addition
`define SUB 4'b0001  // 0b0001 represents subtraction
`define ADDS 4'b0010  // 0b0010 represents add with carry flag
`define SUBS 4'b0011  // 0b0011 represents subtraction with negative flag
`define CMP 4'b0100  // 0b0100 represents comparison
`define AND 4'b0111  // 0b0111 represents bitwise AND
`define OR 4'b1000  // 0b1000 represents bitwise OR
`define XOR 4'b1001  // 0b1001 represents bitwise XOR
`define MVN 4'b1010  // 0b1010 represents bitwise NOT


module ALU(
    input [31:0] signed operand_a, operand_b,// the signed part needs to be checked
    input [3:0] alu_control,
    output reg [31:0] result,
    output reg zero_flag,
    output reg carry_flag,
    output reg overflow_flag,
    output reg negative_flag
);
reg [32:0] acc;
    always @(*)
        begin
            zero_flag = 0;
            carry_flag = 0;
            overflow_flag = 0;
            negative_flag = 0;
             case(alu_control)
                `ADD: 
                    result <= operand_a + operand_b;
                    
                `SUB: 
                    result <= operand_a - operand_b;
                   
                `ADDS: 
                    begin
                        acc <= operand_a + operand_b;  // Signed arithmetic
                        case(acc[32:31])
                            2'b01:
                                result <= {1'b0, {(32-1){1'b1}}};
                            2'b10: 
                                result <= {1'b1, {(32-1){1'b0}}};
                            default:
                                result <= acc[31:0];
                        endcase

                        overflow_flag <= (acc[32:31] == 2'b01 || acc[32:31] == 2'b10);
                        if (acc[32] == 1'b1)
                            carry_flag = 1;
                        else 
                            carry_flag = 0;
                    end
                `SUBS:
                    result <= operand_a - operand_b;
                    overflow_flag = ((operand_a[31] == 0) && (result[31] == 1)) || ((a[31] == 1) && (result[31] == 0));//needs to be checked
                    negative_flag = (result[31]==1)? 1:0;

                `AND: 
                    result <= operand_a & operand_b;
                  
                `OR: 
                    result <= operand_a | operand_b;
                    
                `XOR: 
                    result <= operand_a ^ operand_b;
                 
                `MVN: 
                    result <= ~operand_a;
                    
                `CMP: 
                    if (operand_a = operand_b)
                        result <= 32'd1;
                    else if (operand_a < operand_b )
                        result = 32'd2;
                    else if (operand_a > operand_b)
                        result = 32'b3;
             endcase
             if (result == 0)
                zero_flag = 1;
        end
endmodule


