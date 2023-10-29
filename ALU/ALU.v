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
//////////////////////////////////////
/////Pritham:control values in case statement needs to be changed/////
///////////////////////////////////////////
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
                4'b0101: result = operand_a^operand_b;
                //not operations have to be checked in case only one input is recieved how will it be processed
                4'b0101: result = ~operand_a;
                4'b0101: result = ~operand_b;
                //less than or greater than
                4'b0100: 
                    begin
                        if(operand_a<operand_b)
                            result = 1'b1;
                        else
                            result = 1'b0;
                    end
                //inequality 
                4'b0101: 
                    begin
                        if(operand_a==operand_b)
                            result = 1'b1;
                        else
                            result = 1'b0;
                    end
                //less than or eqaual
                4'b0101: 
                    begin
                        if(operand_a<=operand_b)
                            result = 1'b1;
                        else
                            result = 1'b0;
                    end
                //greater than or equal
                4'b0101: 
                    begin
                        if(operand_a>=operand_b)
                            result = 1'b1;
                        else
                            result = 1'b0;
                    end
            endcase
            if(result ==0)
                zero_flag = 1'b1;
            else    
                zero_flag = 1'b0;
        end
endmodule