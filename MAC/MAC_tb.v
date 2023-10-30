module MAC_tb ();
reg [31:0] in_a,in_b,acc;
wire [31:0] out;
MAC(.in1(in_a),.in2(in_b),.acc(acc),.sum(out));
integer i;
initial 
    begin
        for ( i=0;i<10;i=i+1)
            begin
                in_a = i;
                in_b = i;
                out = 1'b0;
                #100
            end
            #100
            for ( i=0;i<10;i=i+1)
            begin
                in_a = i;
                in_b = i;
                out = 1'b1;
                out = 1'b1;
                #100
            end
    end
endmodule