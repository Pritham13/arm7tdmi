module MAC (
  input clk,
  input [31:0] in1, in2, acc,
  output reg [31:0] sum
);

always @(posedge clk )
  begin
    sum = acc + (in1 * in2);
  end

endmodule
