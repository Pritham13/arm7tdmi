module PC_adder (
    input [31:0] a,b,
    output reg c
);
always @ (a,b)
    begin
        c = a+b;
    end
endmodule