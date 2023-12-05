//module to arrange instructions as branch ,data processing ,etc
module Main_Decoder (
    input [3:0] OP,
    output RegWrite,ALUSrc,MemWrite,ResultSrc,Branch
)
always @(OP)
    begin
        case(OP)
        1'b000://data Processing instructions

        endcase
    end

endmodule