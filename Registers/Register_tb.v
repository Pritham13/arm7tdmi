`timescale 1ns/1ns

`define ASSERT_EQUAL(actual, expected, message) \
    if (actual !== expected) begin \
        $display("Assertion failed: %s", message); \
        $fatal; \
    end

module registers_tb;

  // Signals
  reg [31:0] read_reg_num1, read_reg_num2, write_reg, write_data;
  reg zero_flag, carry_flag, overflow_flag, negative_flag, regwrite;
  reg clock, reset;

  // Instantiate the registers module
  registers uut (
    .read_reg_num1(read_reg_num1),
    .read_reg_num2(read_reg_num2),
    .write_reg(write_reg),
    .zero_flag(zero_flag),
    .carry_flag(carry_flag),
    .overflow_flag(overflow_flag),
    .negative_flag(negative_flag),
    .write_data(write_data),
    .read_data1(),
    .read_data2(),
    .regwrite(regwrite),
    .clock(clock),
    .reset(reset)
  );

  // Clock generation
  always begin
    #5 clock = ~clock;
  end

  // Initial block
  initial begin
    // Initialize inputs
    read_reg_num1 = 0;  read_reg_num2 = 1;
    write_reg = 2;  write_data = 32'h12345678;
    zero_flag = 0;
    carry_flag = 0;
    overflow_flag = 0;
    negative_flag = 0;
    regwrite = 1;
    clock = 0;
    reset = 1;

    // Apply reset
    #5 reset = 0;

    // Test case 1: Write data to register
    #CLOCK_PERIOD;
    `ASSERT_EQUAL(uut.read_data1, 32'h0, "Test case 1 failed: Unexpected read_data1 value");
    `ASSERT_EQUAL(uut.read_data2, 32'h0, "Test case 1 failed: Unexpected read_data2 value");
    `ASSERT_EQUAL(uut.CPSR, 4'b0000, "Test case 1 failed: Unexpected CPSR value");

    // Test case 2: Write data to register and check read data
    write_reg = 0;
    write_data = 32'hABCDEF01;
    #CLOCK_PERIOD;
    `ASSERT_EQUAL(uut.read_data1, 32'hABCDEF01, "Test case 2 failed: Unexpected read_data1 value");
    `ASSERT_EQUAL(uut.read_data2, 32'h0, "Test case 2 failed: Unexpected read_data2 value");
    `ASSERT_EQUAL(uut.CPSR, 4'b0000, "Test case 2 failed: Unexpected CPSR value");

    $display("All test cases passed!");
    $finish;
  end

endmodule
