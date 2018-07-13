//
//D-FlipFlop Behavioral
//

module DFlipFlop(D,clk,en,async_reset,Q,Qb);
  output Q, Qb;
  input D, clk, en, async_reset;

  assign Q = ~(~(D & clk) & en & ~async_reset);
  assign Qb= (~(D & clk) & en & ~async_reset);

endmodule
