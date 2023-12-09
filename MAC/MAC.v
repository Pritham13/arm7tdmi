module MAC (
  input signed [31:0] in1, in2, acc,
  input reset,
  output reg [31:0] result,
  output reg nzcv
);
  reg [32:0] sum;

  always @(*)
  if (reset)begin
        negative_flag = 1'b0;
        overflow_flag = 1'b0;
        carry_flag = 1'b0;
        zero_flag = 1'b0;
        nzcv  = {negative_flag,zero_flag,carry_flag,overflow_flag};
  end
  else begin
          sum = acc + (in1 * in2);
          case (sum[32:31])
            2'b01:
              result = {1'b0, {(32-1){1'b1}}};
            2'b10:
              result = {1'b1, {(32-1){1'b0}}};
            default:
              result = sum[31:0];
          endcase
          negative_flag = (result[31] == 1'b1) ? 1'b1 : 1'b0;
          overflow_flag = (sum[32:31] == 2'b01 || sum[32:31] == 2'b10);
          carry_flag = (sum[32] == 1'b1) ? 1'b1 : 1'b0;
          zero_flag = (result == 32'b0) ? 1'b1 : 1'b0;
          nzcv  = {negative_flag,zero_flag,carry_flag,overflow_flag};
      end
endmodule
