//Verilog HDL for "Digital", "inv_tb_vdriver" "functional"

`timescale 10us/1us

module inv_tb_vdriver ( test_data );

  output test_data;
  reg test_data;

  initial begin
    test_data = 1'b0;
    #15 $finish;
  end

  always #1 test_data = ~test_data;

endmodule
