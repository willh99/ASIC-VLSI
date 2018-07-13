module regfile (rd1, rd2, clk, regwrite, ra1, ra2, wa, wd) ;

// This reg file will only have registers $zero, $s0->$s7
// On a READ, takes in addresses on lines: ra1 and ra2
// Spits out data for those registers on lines: rd1 and rd2

// On a WRITE, regwrite must equal 1 (to signal a write)
// Takes in address of register to write to on line: wa
// Takes in data to write to register on line: wd
// Only performs a WRITE on posedge of clk


   input        clk ;
   input        regwrite ;  // signal to command regfile to 'write' to a reg
   input  [2:0] ra1 ;	    // 3-bit address of $s0 --> $s7 (source reg: RS)
   input  [2:0] ra2 ;	    // 3-bit address of $s0 --> $s7 (source reg: RT)
   input  [2:0] wa  ;  	    // 3-bit address of $s0 --> $s7 (destin reg: RD)

   input  [7:0] wd  ;	    // 8-bit data to write to RD
   output [7:0]  rd1, rd2 ; // 8-bit data to read from RS and RT

   // 2-dimensional register (8x8) -- holds actual registers $s0 through $s7
   reg  [7:0] REGS [7:0];


   // WRITE
   always @(posedge clk)
      if (regwrite) REGS[wa] <= wd;	

   // READ
   assign rd1 = ra1 ? REGS[ra1] : 0;   // looks up address ra1 in reg array
   assign rd2 = ra2 ? REGS[ra2] : 0;   // looks up address ra2 in reg array
   				       // note: register 0 hardwired to 0

endmodule
