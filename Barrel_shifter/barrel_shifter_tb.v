module barrel_shifter_tb();
    reg [31:0]data;
    reg [4:0]amt;
    reg rotation;
    wire [31:0] out;
    barrel_shifter bs (.data(data),.amt(amt,.dir_lr(rotation),.out(out)));
    initial begin         
            for (int i = 0; i < 32; ++i)
                begin
                    data = 32'b1; amt = i; dir_lr = ROTATE_LEFT; #10;
                end
            for (int i = 0; i < 32; ++i)
                begin
                    data = 32'b1; amt =i; dir_lr = ROTATE_RIGHT;  #10;
                end
            $stop;
        end
