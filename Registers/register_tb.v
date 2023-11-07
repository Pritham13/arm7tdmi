module testbench_registers;

    // Parameters
    parameter CLOCK_PERIOD = 10;  // Clock period in time units
    parameter SIM_TIME = 100;     // Simulation time in time units

    // Signals
    reg [4:0] read_reg_num1, read_reg_num2, write_reg;
    reg [31:0] write_data;
    wire [31:0] read_data1, read_data2;
    reg regwrite, clock, reset;

    // Instantiate the registers module
    registers uut (
        .read_reg_num1(read_reg_num1),
        .read_reg_num2(read_reg_num2),
        .write_reg(write_reg),
        .write_data(write_data),
        .read_data1(read_data1),
        .read_data2(read_data2),
        .regwrite(regwrite),
        .clock(clock),
        .reset(reset)
    );

    // Clock generation
    always begin
        #5 clock = ~clock;
    end

    // Initial values and test scenarios
    initial begin
        // Initialize signals
        clock = 0;
        reset = 1;
        regwrite = 0;
        read_reg_num1 = 0;
        read_reg_num2 = 1;
        write_reg = 2;
        write_data = 32'hA5A5A5A5;

        // Reset the design
        #10 reset = 0;

        // Perform a write operation
        write_reg = 3;
        write_data = 32'h12345678;
        regwrite = 1;
        #10 regwrite = 0;

        // Perform read operations
        read_reg_num1 = 2;
        read_reg_num2 = 3;
        #10;

        // Finish the simulation
        $display("Read Data 1: %h, Read Data 2: %h", read_data1, read_data2);
        $finish;
    end

    // Simulation time
    initial
        #SIM_TIME $finish;

endmodule
