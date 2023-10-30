module MAC (
  input [31:0] in1, in2, acc,
  output reg [31:0] sum
);

always @(in1 or in2 or acc )
  begin
    sum = acc + (in1 * in2);
  end

endmodule
