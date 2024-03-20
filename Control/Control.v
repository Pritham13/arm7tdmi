module Control (
    input [31:0]Instruction_Code,
    output reg [31:0]ALUop, multiply_op,
    output reg [23:0]Branch_op);

wire [3:0] opcode;
opcode = Instruction_Code[24:21];

//examines the opcode  
always @ (Instruction_Code)//to be changed later
begin
    case (Instruction_Code[27:25])
        3'b001:enable =  ;//Push control to ALU 
        3'b101:Branch_op = Instruction_Code[23:0];
        3'b000:multiply_op = Instruction_Code;
    endcase
    
end
endmodule


always@(posedge clk || posedge reset)
begin
    instantiate IFU 
end

always@(instruction code)
instantiate ALU decode
    if (branch)
        branching action takes place