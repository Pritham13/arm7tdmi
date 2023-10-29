module MAC (
  input clk,
  input [31:0] in1, in2, acc,
  output reg [31:0] sum_high, sum_low
);

reg [63:0] sum = 0;

always @(posedge clk )
  begin
    sum = acc + (in1 * in2);
    sum_high <= sum[63:32];
    sum_low <= sum[31:0];
  end

endmodule
