module MAC_tb ();
reg [31:0] in_a,in_b,acc;
wire [31:0] out;
wire zero_flag, carry_flag, overflow_flag, negative_flag;
MAC mac_inst (
.in1(in_a),
.in2(in_b),
.acc(acc),
.result(out),
.zero_flag(zero_flag),
.carry_flag(carry_flag),
.overflow_flag(overflow_flag),
.negative_flag(negative_flag)
);
integer i;
initial 
    begin
        $dumpfile("mac_tb.vcd");
        $dumpvars(0, MAC_tb);
        for ( i=0;i<10;i=i+1)
            begin
                in_a = i;
                in_b = i;
                acc = 0;
                #10;
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