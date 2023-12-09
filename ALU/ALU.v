////////////stuff left : CPSR updation variable and result writeback variable 
`define AND 4'd0
`define EOR 4'd1 //same as XOR
`define SUB 4'd2
`define RSB 4'd3 //Reverse subtraction
`define ADD 4'd4
`define ADC 4'd5
`define SBC 4'd6
`define RSC 4'd7
`define TST 4'd8 
`define TEQ 4'd9
`define CMP 4'd10
`define CMN 4'd11
`define ORR 4'd12
`define MOV 4'd13
`define BIC 4'd14
`define MVN 4'd15
module ALU(
    input signed [31:0] operand_a, operand_b,// the signed part needs to be checked
    input [3:0] alu_control,
    output reg [31:0] result,
    output reg [3:0] nzcv,
    input reset,
    output reg result_writeback,
    output reg nzcv_writeback);

    reg [32:0] ACC, temp;
reg carry_flag,overflow_flag,negative_flag,zero_flag;
always @(*)
    if(reset)
        begin
            zero_flag = 0;
            carry_flag = 0;
            overflow_flag = 0;
            negative_flag = 0;    
        end
    else
    begin
    
         case(alu_control)
            `ADD: begin
                    assign acc = operand_a + operand_b;  // Signed arithmetic
                    case(acc[32:31])
                     2'b01:
                            assign result = {1'b0, {(32-1){1'b1}}};
                        2'b10: 
                            assign result = {1'b1, {(32-1){1'b0}}};
                        default:
                            assign result = acc[31:0];
                    endcase
                    assign overflow_flag = (acc[32:31] == 2'b01 || acc[32:31] == 2'b10);
                    assign carry_flag = (acc[32] == 1'b1);
                 end
            `ADC:begin
                    assign {carry_flag, result} = operand_a + operand_b+carry_flag ;
                    assign zero_flag = (result == 32'd0);
                 end
                
            `SUB:begin
                    assign result = operand_a - operand_b;
                    assign overflow_flag = (operand_a ^ operand_b) & (operand_a ^ result);
                    assign negative_flag = (result[31] == 1'b1) ? 1'b1 : 1'b0;
                 end
            `SBC:begin
                    assign {carry_flag, result} = operand_a - operand_b - ~carry_flag;
                    assign zero_flag = (result == 32'd0) ;
                 end
            `RSC:begin
                    assign {carry_flag, result} = operand_b - operand_a - ~carry_flag;
                    assign zero_flag = (result == 32'd0) ;
                 end
            `AND: begin
                    assign result = operand_a & operand_b;
                    assign zero_flag = (result == 32'd0) ;
                end
            `BIC: begin
                    assign result = operand_a & (~operand_b);
                    assign zero_flag = (result == 32'd0);
                end
            `TST: 
                assign {negative_flag, zero_flag} = {operand_a[31] & operand_b[31], (operand_a & operand_b) == 0};
            `TEQ:
                assign {negative_flag, zero_flag} = {operand_a[31] ^ operand_b[31], (operand_a ^ operand_b) == 0};
              
            `ORR:begin 
                    assign result = operand_a | operand_b;
                    assign zero_flag = (result == 32'd0) ;
                 end
            `EOR:begin
                    assign result = operand_a ^ operand_b;
                    assign zero_flag = (result == 32'd0);
                 end
            `MVN:begin
                    assign result = ~operand_a;
                    assign zero_flag = (result == 32'd0);
                 end
            `RSB:begin
                    assign result = operand_b - operand_a;  
                    assign zero_flag = (result == 32'd0);
                 end
            `CMP:assign {negative_flag, zero_flag, carry_flag, overflow_flag} = {operand_a[31], (operand_a - operand_b == 0), (operand_a >= operand_b), (operand_a[31] & ~operand_b[31] & ((operand_a - operand_b) >> 31))};

            `CMN:assign {negative_flag, zero_flag, carry_flag, overflow_flag} = {operand_a[31], (operand_a + operand_b == 0), (operand_a + operand_b < operand_a), (operand_a[31] & operand_b[31] & ~((operand_a + operand_b) >> 31))};
         endcase

        assign nzcv = {negative_flag,zero_flag,carry_flag,overflow_flag};
    end
endmodule
