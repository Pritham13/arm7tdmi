`include "ALU.v"
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
module ALU_tb;
  reg signed [31:0] operand_a, operand_b;
  reg [3:0] alu_control;
  reg reset;
  wire [31:0] result;
  wire [3:0] nzcv;
  wire result_writeback, nzcv_writeback;

  ALU myALU (
    .operand_a(operand_a),
    .operand_b(operand_b),
    .alu_control(alu_control),
    .result(result),
    .nzcv(nzcv),
    .reset(reset),
    .result_writeback(result_writeback),
    .nzcv_writeback(nzcv_writeback)
  );

  initial begin
    // Test Case 0: AND
    operand_a = 8'b11001100;
    operand_b = 8'b10101010;
    alu_control = `AND;
    reset = 0;
    #10;

    // Test Case 1: EOR
    operand_a = 8'b11001100;
    operand_b = 8'b10101010;
    alu_control = `EOR;
    reset = 0;
    #10;
    
    // Test Case 2: SUB
    operand_a = 20;
    operand_b = 15;
    alu_control = `SUB;
    reset = 0;
    #10;
    
    // Test Case 3: RSB
    operand_a = 5;
    operand_b = 10;
    alu_control = `RSB;
    reset = 0;
    #10;
    
    // Test Case 4: ADD
    operand_a = 5;
    operand_b = 3;
    alu_control = `ADD;
    reset = 0;
    #10;

    // Test Case 5: ADC
    operand_a = 10;
    operand_b = 15;
    alu_control = `ADC;
    reset = 0;
    #10;

    // Test Case 6: SBC
    operand_a = 15;
    operand_b = 8;
    alu_control = `SBC;
    reset = 0;
    #10;

   // Test Case 7: RSC
    operand_a = 20;
    operand_b = 15;
    alu_control = `RSC;
    reset = 0;
    #10;

    // Test Case 8: TST
    operand_a = 8'b11001100;
    operand_b = 8'b10101010;
    alu_control = `TST;
    reset = 0;
    #10;

    // Test Case 9: TEQ
    operand_a = 8'b11001100;
    operand_b = 8'b10101010;
    alu_control = `TEQ;
    reset = 0;
    #10;

    // Test Case 10: CMP
    operand_a = 10;
    operand_b = 5;
    alu_control = `CMP;
    reset = 0;
    #10;

    // Test Case 11: CMN
    operand_a = 10;
    operand_b = 5;
    alu_control = `CMN;
    reset = 0;
    #10;

    // Test Case 12: ORR
    operand_a = 8'b11001100;
    operand_b = 8'b10101010;
    alu_control = `ORR;
    reset = 0;
    #10;

    // Test Case 13: MOV
    operand_a = 8'b11001100;
    operand_b = 8'b10101010;
    alu_control = `MOV;
    reset = 0;
    #10;

    // Test Case 14: BIC
    operand_a = 8'b11001100;
    operand_b = 8'b10101010;
    alu_control = `BIC;
    reset = 0;
    #10;

    // Test Case 15: MVN
    operand_a = 8'b11001100;
    operand_b = 8'b10101010;
    alu_control = `MVN;
    reset = 0;
    #10;

    $finish;
  end

  initial begin 
    $dumpfile("ALU.vcd");
    $dumpvars;
  end 

endmodule