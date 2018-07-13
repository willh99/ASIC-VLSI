module dff(D,clk,Q,Qb);
  input D,clk;
  output Q,Qb;
  reg Q,Qb;

  always @(posedge clk)
  begin
    Q<=D;
    Qb<=(~D);
  end
endmodule
