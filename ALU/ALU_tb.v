module ALU_Testbench;

  reg [31:0] operand_a;
  reg [31:0] operand_b;
  reg [3:0] alu_control;
  
  wire [31:0] result;
  wire zero_flag;
  wire carry_flag;
  wire overflow_flag;
  wire negative_flag;

  // Instantiate the ALU module
  ALU uut (
    .operand_a(operand_a),
    .operand_b(operand_b),
    .alu_control(alu_control),
    .result(result),
    .zero_flag(zero_flag),
    .carry_flag(carry_flag),
    .overflow_flag(overflow_flag),
    .negative_flag(negative_flag)
  );

  // Initialize signals
  initial begin
    $dumpfile("ALU_Testbench.vcd");
    $dumpvars(0, ALU_Testbench);

    // Test case 1: Addition
    operand_a = 10;
    operand_b = 20;
    alu_control = `ADD;
    #10;
    
    // Test case 2: Subtraction
    operand_a = 30;
    operand_b = 15;
    alu_control = `SUB;
    #10;

    // Test case 3: Addition with carry flag
    operand_a = 10;
    operand_b = 20;
    alu_control = `ADDS;
    #10;

    // Test case 4: Subtraction with negative flag
    operand_a = -10;
    operand_b = 5;
    alu_control = `SUBS;
    #10;
    
    // Test case 5: Bitwise AND
    operand_a = 0b1100;
    operand_b = 0b1010;
    alu_control = `AND;
    #10;
    
    // Test case 6: Bitwise OR
    operand_a = 0b1100;
    operand_b = 0b1010;
    alu_control = `OR;
    #10;
    
    // Test case 7: Bitwise XOR
    operand_a = 0b1100;
    operand_b = 0b1010;
    alu_control = `XOR;
    #10;
    
    // Test case 8: Bitwise NOT
    operand_a = 0b1100;
    alu_control = `MVN;
    #10;
    
    // Test case 9: Comparison
    operand_a = 10;
    operand_b = 20;
    alu_control = `CMP;
    #10;

    $finish;
  end
endmodule
