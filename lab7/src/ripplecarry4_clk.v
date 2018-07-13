module ripplecarry4_clk (sum, cout, a, b, cin, clk, rst) ;
   input [3:0] a, b ;
   input cin, clk, rst ;
   output [3:0] sum ;
   output cout ;

   wire wire0, wire1, wire2 ;
   reg c0_reg, c1_reg, c2_reg ;

   fulladder fa0( .s(sum[0]), .cout(wire0), .a(a[0]), .b(b[0]), .cin(cin)    );
   fulladder fa1( .s(sum[1]), .cout(wire1), .a(a[1]), .b(b[1]), .cin(c0_reg) );
   fulladder fa2( .s(sum[2]), .cout(wire2), .a(a[2]), .b(b[2]), .cin(c1_reg) );
   fulladder fa3( .s(sum[3]), .cout(cout),  .a(a[3]), .b(b[3]), .cin(c2_reg) );

   always @(posedge clk)
   begin
	if(rst)
	begin
	     c0_reg <= 0 ;
	     c1_reg <= 0 ;
	     c2_reg <= 0 ;
	end
	else
	begin
		c0_reg <= wire0 ;
     		c1_reg <= wire1 ;
		c2_reg <= wire2 ;
	end
   end

endmodule
