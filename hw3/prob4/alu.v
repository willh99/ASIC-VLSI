module alu (result, a, b, alucont) ;

   input  [7:0] a, b ;
   input  [2:0] alucont ;
   output [7:0] result ;

   reg    [7:0] result ;
   wire   [7:0] b2, sum, slt ;

   assign b2 = alucont[2] ? ~b:b ; 
   assign sum = a + b2 + alucont[2] ;
   // slt should be 1 if most significant bit of sum is 1
   assign slt = sum[7] ;

   always@(a or b or alucont or sum or slt)
      case(alucont[1:0])
         2'b00: result <= a & b ;
         2'b01: result <= a | b ;
         2'b10: result <= sum ;
         2'b11: result <= slt ;
      endcase

endmodule
