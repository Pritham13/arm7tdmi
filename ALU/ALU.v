/*
ALU Control lines | Function
-----------------------------
        0000    Bitwise-AND
        0001    Bitwise-OR
        0010	Add (A+B)
        0100	Subtract (A-B)
        0101	Set on less than
        0110    Multiply
        0111    Bitwise-XOR
        */
//Note: the control values needs changing
module ALU(
    input [31:0] operand_a, operand_b,
    input [3:0] alu_control,
    output reg [31:0] result,
    output reg zero_flag
);
    always @(*)
        begin
             case(alu_control)
                4'b0000: result = operand_a&operand_b;
                4'b0001: result = operand_a|operand_b;
                4'b0010: result = operand_a+operand_b;
                4'b0011: result = operand_a-operand_b;
                4'b0100: begin
                    if(operand_a<operand_b)
                        result = 1'b1;
                    else
                        result = 1'b0;
                       end
                4'b0110: result = operand_a^operand_b;
            endcase
            if(result ==0)
                zero_flag = 1'b1;
            else    
                zero_flag = 1'b0;
        end
endmodule