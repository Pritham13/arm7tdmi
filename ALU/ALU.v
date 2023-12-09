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
    output reg nzcv_writeback
);

reg [32:0] acc,temp;
reg carry_flag,overflow_flag,negative_flag,zero_flag;
always @(*)
    if(reset)
        begin
            zero_flag = 0;
            carry_flag = 0;
            overflow_flag = 0;
            negative_flag = 0;    
        end
    else begin

         case(alu_control)
            `ADD:begin
                    acc <= operand_a + operand_b;  // Signed arithmetic
                    case(acc[32:31])
                        2'b01:
                            result = {1'b0, {(32-1){1'b1}}};
                        2'b10: 
                            result = {1'b1, {(32-1){1'b0}}};
                        default:
                            result = acc[31:0];
                    endcase
                    overflow_flag = (acc[32:31] == 2'b01 || acc[32:31] == 2'b10);
                    carry_flag = (acc[32] == 1'b1);
                 end
            `ADC:begin
                    acc = operand_a + operand_b;  // Signed arithmetic
                    case(acc[32:31])
                        2'b01:
                            result = {1'b0, {(32-1){1'b1}}};
                        2'b10: 
                            result = {1'b1, {(32-1){1'b0}}};
                        default:
                            result = acc[31:0];
                    endcase
                    overflow_flag = (acc[32:31] == 2'b01 || acc[32:31] == 2'b10);
                    carry_flag = (acc[32] == 1'b1);
                end
                
            `SUB:begin
                    result = operand_a - operand_b;
                    overflow_flag = (operand_a ^ operand_b) & (operand_a ^ result);
                    negative_flag = (result[31] == 1'b1) ? 1'b1 : 1'b0;
                 end
            `SBC:begin
                    {carry_flag, result} = operand_a - operand_b - ~carry_flag;
                    zero_flag = (result == 32'd0) ;
                 end
            `RSC:begin
                    {carry_flag, result} = operand_b - operand_a - ~carry_flag;
                    zero_flag = (result == 32'd0) ;
                 end
            `AND: begin
                    result = operand_a & operand_b;
                    zero_flag = (result == 32'd0) ;
                end
            `BIC: begin
                    result = operand_a & (~operand_b);
                    zero_flag = (result == 32'd0) ;
                end
            `TST: 
                {negative_flag, zero_flag} = {operand_a[31] & operand_b[31], (operand_a & operand_b) == 0};
            `TEQ:
                {negative_flag, zero_flag} = {operand_a[31] ^ operand_b[31], (operand_a ^ operand_b) == 0};
              
            `ORR:begin 
                    result = operand_a | operand_b;
                    zero_flag = (result == 32'd0) ;
                end
            `EOR:begin
                    result = operand_a ^ operand_b;
                    zero_flag = (result == 32'd0) ;
                end
            `MVN:begin
                    result = ~operand_a;
                    zero_flag = (result == 32'd0) ;
                end
            `RSB:begin
                    result = operand_b - operand_a;  
                    zero_flag = (result == 32'd0) ;
                end
            `CMP:{negative_flag, zero_flag, carry_flag, overflow_flag} = {operand_a[31], (operand_a - operand_b == 0), (operand_a >= operand_b), (operand_a[31] & ~operand_b[31] & ((operand_a - operand_b) >> 31))};

            `CMN:{negative_flag, zero_flag, carry_flag, overflow_flag} = {operand_a[31], (operand_a + operand_b == 0), (operand_a + operand_b < operand_a), (operand_a[31] & operand_b[31] & ~((operand_a + operand_b) >> 31))};
         endcase

        nzcv  = {negative_flag,zero_flag,carry_flag,overflow_flag};
    end
endmodule
