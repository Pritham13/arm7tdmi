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

    initial begin
        // Initialize test inputs
        operand_a = 32'hA5A5A5A5;
        operand_b = 32'h5A5A5A5A;
        alu_control = `ADD; // You can change this to test different operations
        
        // Wait for some time
        #10;

        // Display results
        $display("ALU Result: %h", result);
        $display("Zero Flag: %b", zero_flag);
        $display("Carry Flag: %b", carry_flag);
        $display("Overflow Flag: %b", overflow_flag);
        $display("Negative Flag: %b", negative_flag);

        // End the simulation
        $finish;
    end

endmodule
