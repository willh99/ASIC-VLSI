module alucontrol( alucont, aluop, funct ) ;

// this module decodes the 'funct' field from the assembly instruction
// it then determines the type of instruction it is: R, I, J
// and creates a 3-bit control line (alucont) for the ALU itself.

// the ALU will rely onlt on the alucont line and not the funct line.


   input  [1:0] aluop   ;
   input  [5:0] funct   ;
   output [2:0] alucont ;

   reg    [2:0] alucont ;

   always @(aluop or funct)
      case(aluop)
         2'b00: alucont <= 3'b010;  // add for lb/sb
         2'b01: alucont <= 3'b110;  // sub (for beq)
         default: case(funct)       // R-Type instructions
                     6'b100000: alucont <= 3'b010; // add (for add)
                     6'b100010: alucont <= 3'b110; // subtract (for sub)
                     6'b100100: alucont <= 3'b000; // logical and (for and)
                     6'b100101: alucont <= 3'b001; // logical or (for or)
                     6'b101010: alucont <= 3'b111; // set on less (for slt)
                     default:   alucont <= 3'b101; // should never happen
                  endcase
      endcase

endmodule
