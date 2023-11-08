module MAC (
  input signed [31:0] in1, in2, acc,
  output reg [31:0] result,
  output reg zero_flag,
  output reg carry_flag,
  output reg overflow_flag,
  output reg negative_flag
);
  reg [32:0] sum;

  always @(*)
  begin
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
  end
endmodule
