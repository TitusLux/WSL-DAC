`timescale 1ns/1ps
module tb_dac4;
  reg  [3:0] code;
  wire [7:0] analog_out;

  dac4 dut(.code(code), .analog_out(analog_out));

  initial begin
    $dumpfile("waves.vcd");
    $dumpvars(0, tb_dac4.dut);

    // watch time, code in decimal and hex and the analog out
    $monitor("t=%0t  code=%2d (0x%0h)  analog_out=%3d", $time, code, code, analog_out);

    // Sweep through all 15 codes with a 5ns delay between each
    code = 0;
    repeat (15) begin
      #5 code = code + 1;
    end

    #5 $finish;
  end
endmodule
