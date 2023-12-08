//module to arrange instructions as branch ,data processing ,etc
module Main_Decoder (
    input [3:0] OP,
    output RegWrite,ALUSrc,MemWrite,ResultSrc,Branch
)
//op is bits 25-27
always @(OP)
    begin
        casex(OP)
        1'b00x://data Processing instructions
        1'b101://branching
        1'b000://multiply


        endcase
    end

endmodule