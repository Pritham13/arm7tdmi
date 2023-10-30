module MAC_tb ();
reg [31:0] in_a,in_b,acc;
wire [31:0] out;
MAC(.in1(in_a),.in2(in_b),.acc(acc),.sum(out))
    
endmodule