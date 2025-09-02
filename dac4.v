`default_nettype none
module dac4(
  input  wire [3:0] code,        // 0..15
  output wire [7:0] analog_out   // 0..255
);
  wire [11:0] prod = code * 8'd255;
  assign analog_out = prod / 5'd15;


endmodule
