module PC_adder (
    input signed [31:0] a,b,
    output signed reg c
);
//note that signed output is used for offset calculation
always @ (a,b)
    begin
        c = a+b;
    end
endmodule