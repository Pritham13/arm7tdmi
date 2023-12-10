`include "ALU.v"
// Macros for ALU control signals
`define AND 4'd0
`define EOR 4'd1 // same as XOR
`define SUB 4'd2
`define RSB 4'd3 // Reverse subtraction
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


  // Signals
  reg signed [31:0] operand_a, operand_b;
  reg [3:0] alu_control;
  reg reset;
  wire [31:0] result;
  wire [3:0] nzcv;
  wire result_writeback, nzcv_writeback;

  // Instantiate the ALU module
  ALU uut(
    .operand_a(operand_a),
    .operand_b(operand_b),
    .alu_control(alu_control),
    .result(result),
    .nzcv(nzcv),
    .reset(reset),
    .result_writeback(result_writeback),
    .nzcv_writeback(nzcv_writeback)
  );

  // Initial block for stimulus
  initial begin
    $dumpfile("ALU.vcd");
    $dumpvars(0, ALU_tb);
    reset = 1;
    operand_a = 32'd10;
    operand_b = 32'd20;
    #10;
    // Test case 1: ADD
    reset = 0;
    operand_a = 32'd10;
    operand_b = 32'd20;
    alu_control = `ADD; // ADD
    

    #10;

    // Test case 2: SUB
    operand_a = 32'd30;
    operand_b = 32'd10;
    alu_control = `SUB; // SUB
    reset = 0;

    #10;

    // Test case 3: AND
    operand_a = 32'd8;
    operand_b = 32'd5;
    alu_control = `AND; // AND
    reset = 0;

    #10;

    // Test case 4: EOR
    operand_a = 32'd15;
    operand_b = 32'd7;
    alu_control = `EOR; // EOR
    reset = 0;

    #10;

    // Test case 5: RSB
    operand_a = 32'd10;
    operand_b = 32'd20;
    alu_control = `RSB; // RSB
    reset = 0;

    #10;

    // Test case 6: ADC
    operand_a = 32'd2147483647; // Maximum positive signed 32-bit number
    operand_b = 32'd1;
    alu_control = `ADC; // ADC
    reset = 0;

    #10;

    // Test case 7: SBC
    operand_a = 32'd2147483647; // Maximum positive signed 32-bit number
    operand_b = 32'd5;
    alu_control = `SBC; // SBC
    reset = 0;

    #10;

    // Test case 8: RSC
    operand_a = 32'd10;
    operand_b = 32'd20;
    alu_control = `RSC; // RSC
    reset = 0;

    #10;

    // Test case 9: TST
    operand_a = 32'd0;
    operand_b = 32'd0;
    alu_control = `TST; // TST
    reset = 0;

    #10;

    // Test case 10: TEQ
    operand_a = 32'd255;
    operand_b = 32'd255;
    alu_control = `TEQ; // TEQ
    reset = 0;

    #10;

    // Test case 11: CMP
    operand_a = 32'd5;
    operand_b = 32'd3;
    alu_control = `CMP; // CMP
    reset = 0;

    #10;

    // Test case 12: CMN
    operand_a = 32'd2147483647; // Maximum positive signed 32-bit number
    operand_b = 32'd1;
    alu_control = `CMN; // CMN
    reset = 0;

    #10;

    // Test case 13: ORR
    operand_a = 32'd10;
    operand_b = 32'd20;
    alu_control = `ORR; // ORR
    reset = 0;

    #10;

    // Test case 14: MOV
    operand_a = 32'd42;
    operand_b = 32'd0;
    alu_control = `MOV; // MOV
    reset = 0;

    #10;

    // Test case 15: BIC
    operand_a = 32'd255;
    operand_b = 32'd85;
    alu_control = `BIC; // BIC
    reset = 0;

    #10;

    // Test case 16: MVN
    operand_a = 32'd255;
    operand_b = 32'd0;
    alu_control = `MVN; // MVN
    reset = 0;

    #10;

    // Add more test cases as needed

    // End simulation
    $finish;
  end

endmodule
