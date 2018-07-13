//
//D-FlipFlop Structural
//

module DFlipFlop(D,clk,Q,Qb);
  output Q, Qb;
  input D, clk;

  not(X,D);
  nand(Y,D,clk);
  nand(Z,X,clk);
  nand(Q,Y,Qb);
  nand(Qb,Z,Q);

endmodule
