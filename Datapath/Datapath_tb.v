`timescale 1ns / 1ps

module DATAPATH_tb;

    // Inputs
    reg [4:0] read_reg_num1_tb;
    reg [4:0] read_reg_num2_tb;
    reg [4:0] write_reg_tb;
    reg [3:0] alu_control_tb;
    reg regwrite_tb;
    reg clock_tb;
    reg reset_tb;

    // Outputs
    wire zero_flag_tb;
    wire carry_flag_tb;
    wire overflow_flag_tb;
    wire negative_flag_tb;

    // Instantiate the DATAPATH module
    DATAPATH dut (
        .read_reg_num1(read_reg_num1_tb),
        .read_reg_num2(read_reg_num2_tb),
        .write_reg(write_reg_tb),
        .alu_control(alu_control_tb),
        .regwrite(regwrite_tb),
        .clock(clock_tb),
        .reset(reset_tb),
        .zero_flag(zero_flag_tb),
        .carry_flag(carry_flag_tb),
        .overflow_flag(overflow_flag_tb),
        .negative_flag(negative_flag_tb)
    );

    // Clock generation
    initial 
    begin
        clock_tb = 0;
        forever #5 clock_tb = ~clock_tb;
    end

    // Test stimulus
    initial 
    begin
        // Initialize inputs
        read_reg_num1_tb = 0;
        read_reg_num2_tb = 1;
        write_reg_tb = 2;
        alu_control_tb = 4'b0000;
        regwrite_tb = 1;
        reset_tb = 0;

        // Apply reset
        reset_tb = 1;
        #10 reset_tb = 0;

        // Test case 1: Addition
        read_reg_num1_tb = 0;
        read_reg_num2_tb = 1;
        write_reg_tb = 2;
        alu_control_tb = 4'b0000;
        regwrite_tb = 1;
        #20;

        // Test case 2: Subtraction
        read_reg_num1_tb = 2;
        read_reg_num2_tb = 1;
        write_reg_tb = 3;
        alu_control_tb = 4'b0001;
        regwrite_tb = 1;
        #20;

        // Test case 3: Compare
        read_reg_num1_tb = 3;
        read_reg_num2_tb = 2;
        alu_control_tb = 4'b0100;
        regwrite_tb = 0;
        #20;

        // Test case 4: Subtraction with overflow
        read_reg_num1_tb = 0;
        read_reg_num2_tb = 1;
        write_reg_tb = 2;
        alu_control_tb = 4'b0001; // SUB
        regwrite_tb = 1;
        #20;

        // Test case 5: ADDS with overflow
        read_reg_num1_tb = 3;
        read_reg_num2_tb = 4;
        write_reg_tb = 5;
        alu_control_tb = 4'b0010; // ADDS
        regwrite_tb = 1;
        #20;

        // Test case 6: SUBS with negative
        read_reg_num1_tb = 6;
        read_reg_num2_tb = 7;
        write_reg_tb = 8;
        alu_control_tb = 4'b0011; // SUBS
        regwrite_tb = 1;
        #20;

        // Test case 7: AND
        read_reg_num1_tb = 9;
        read_reg_num2_tb = 10;
        write_reg_tb = 11;
        alu_control_tb = 4'b0111; // AND
        regwrite_tb = 1;
        #20;

        // Test case 8: OR
        read_reg_num1_tb = 12;
        read_reg_num2_tb = 13;
        write_reg_tb = 14;
        alu_control_tb = 4'b1000; // OR
        regwrite_tb = 1;
        #20;

        // Test case 9: XOR
        read_reg_num1_tb = 15;
        read_reg_num2_tb = 16;
        write_reg_tb = 17;
        alu_control_tb = 4'b1001; // XOR
        regwrite_tb = 1;
        #20;

        // Test case 10: MVN
        read_reg_num1_tb = 18;
        write_reg_tb = 19;
        alu_control_tb = 4'b1010; // MVN
        regwrite_tb = 1;
        #20;

        // Test case 11: CMP (Equal)
        read_reg_num1_tb = 20;
        read_reg_num2_tb = 20;
        alu_control_tb = 4'b0100; // CMP
        regwrite_tb = 0;
        #20;

        // Test case 12: CMP (Greater)
        read_reg_num1_tb = 21;
        read_reg_num2_tb = 22;
        alu_control_tb = 4'b0100; // CMP
        regwrite_tb = 0;
        #20;

        // Test case 13: CMP (Less)
        read_reg_num1_tb = 23;
        read_reg_num2_tb = 24;
        alu_control
    end
endmodule