module MAC (
  input signed [31:0] in1, in2, acc,
  output reg [31:0] result,
  output reg zero_flag,
  output reg carry_flag,
  output reg overflow_flag,
  output reg negative_flag
);
reg sum[32:0];
always @(in1 or in2 or acc )
  begin
    sum = acc + (in1 * in2);
    case(sum[32:31])
        2'b01:
            result <= {1'b0, {(32-1){1'b1}}};
        2'b10: 
            result <= {1'b1, {(32-1){1'b0}}};
        default:
            result <= acc[31:0];
    endcase
    negative_flag <= (result[31] == 1'b1) ? 1'b1 : 1'b0;
    overflow_flag <= (sum[32:31] == 2'b01 || sum[32:31] == 2'b10);
     if (sum[32] == 1'b1)
        carry_flag <= 1;
    else 
        carry_flag <= 0;
    if (result == 0)
      zero_flag = 1;
    else
      zero_flag = 0;
    
  end

endmodule
