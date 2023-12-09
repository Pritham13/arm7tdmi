module Instruction_mem (
    input PC,
    output reg [31:0] instruction
);
reg [32:0] mem [1024:0]
initial begin
    mem[0]= 32'hEAFFFFFE;    
end
always @ (PC)begin
    instruction = mem[PC];
end
endmodule