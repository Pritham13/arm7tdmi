module MAC_tb ();
reg [31:0] in_a,in_b,acc;
wire [31:0] out;
MAC mac_inst(.in1(in_a),.in2(in_b),.acc(acc),.sum(out));
integer i;
initial 
    begin
        for ( i=0;i<10;i=i+1)
            begin
                in_a = i;
                in_b = i;
                acc = 0;
                #100;
            end
            #10
            for ( i=0;i<10;i=i+1)
            begin
                in_a = i;
                in_b = i;
                acc = 1;
                #10;
            end
    end
endmodule