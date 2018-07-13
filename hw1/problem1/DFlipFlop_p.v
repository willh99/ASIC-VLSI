//
//D-FlipFlop Procedural
//

module DFlipFlop(D,clk,en,async_reset,Q,Qb);
  output Q, Qb;
  reg Q, Qb;
  input D, clk, en, async_reset;

  always @(posedge clk or negedge async_reset)
  begin
    if(en)
    begin
      if(async_reset==1'b1)
      begin
	Q<=D;
	Qb<=~D;
      end
      else
      begin
	Q<=1'b0;
	Qb<=1'b1;
      end
    end
  end
endmodule
