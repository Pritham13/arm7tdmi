`timescale 1ns/1ns

module registers_tb;

  // Parameters
  parameter CLOCK_PERIOD = 10;

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
    #CLOCK_PERIOD / 2 clock = ~clock;
  end

  // Initial block
  initial begin
    // Initialize inputs
    read_reg_num1 = 0;
    read_reg_num2 = 1;
    write_reg = 2;
    write_data = 32'h12345678;
    zero_flag = 0;
    carry_flag = 0;
    overflow_flag = 0;
    negative_flag = 0;
    regwrite = 1;
    clock = 0;
    reset = 1;

    // Apply reset
    #CLOCK_PERIOD reset = 0;

    // Test case 1: Write data to register
    #CLOCK_PERIOD;
    assert(uut.read_data1 === 32'h0) else $fatal("Test case 1 failed");
    assert(uut.read_data2 === 32'h0) else $fatal("Test case 1 failed");
    assert(uut.CPSR === 4'b0000) else $fatal("Test case 1 failed");

    // Test case 2: Write data to register and check read data
    write_reg = 0;
    write_data = 32'hABCDEF01;
    #CLOCK_PERIOD;
    assert(uut.read_data1 === 32'hABCDEF01) else $fatal("Test case 2 failed");
    assert(uut.read_data2 === 32'h0) else $fatal("Test case 2 failed");
    assert(uut.CPSR === 4'b0000) else $fatal("Test case 2 failed");

    // Add more test cases as needed

    $display("All test cases passed!");
    $stop;
  end

endmodule
