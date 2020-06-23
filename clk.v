module clk_divider(
  input clk,
  input reset,
  output reg clk2,
  output reg clk4,
  output reg clk8,
  output reg clk16
);
  
  always @(posedge clk)
    clk2 <= ~clk2;
  always @(posedge clk2)
    clk4 <= ~clk4;
  always @(posedge clk4)
    clk8 <= ~clk8;
  always @(posedge clk8)
    clk16 <= ~clk16;
endmodule