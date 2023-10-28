module MAC (
  input clk, reset,
  input [31:0] in1, in2,
  output reg [31:0] sum_high, sum_low
);

reg [63:0] sum;

always @(posedge clk or posedge reset)
  begin
    if (reset)
      begin
        sum_high <= 32'b0;
        sum_low <= 32'b0;
      end
    else
      begin
        sum = sum + (a * b);
        sum_high <= sum[63:32];
        sum_low <= sum[31:0];
    end
end

endmodule
