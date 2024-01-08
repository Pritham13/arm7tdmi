
module Control(input [31:0] instruction,
  input [3:0] condition_flags, // Flags like N, C, V, Z
  input [31:0] current_PC,
  output reg [31:0] new_PC,
  output reg branch_taken);
  //hgbn 
  wire opcode = instruction[24:21];
  reg [23:0]branch_offset = {instruction [23:0]}
      // Sign-extend the offset to 32 bits
      reg [31:0] signed_offset;
      signed_offset = {{8{branch_offset[23]}}, branch_offset};

    // Check if the instruction is a branch
    if (opcode == BRANCH_OPCODE) begin
      // Extract the target address or offset from the instruction
      // Calculate the new PC based on the branch type and condition flags
      // For conditional branches, check the condition flags
      // Update branch_taken accordingly
      // Update the new_PC
    end
  end
endmodule
