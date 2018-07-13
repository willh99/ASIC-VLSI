//-------------------------------------------------------
// mips.v
// Max Yi (byyi@hmc.edu) and David_Harris@hmc.edu 12/9/03
//
// Modified by Erik Brunvand (University of Utah) to have 
// consistent little endian byte ordering for reading and 
// writing (12/06)
//
// Reformated into depricated verision by William Horowitz
// and Andrew Yoon (April 2018)
// 
// Note that this no longer uses Verilog 2001 syntax
//-------------------------------------------------------


// simplified MIPS processor
// Top level module
module mips(clk, reset, memdata, memread, memwrite, adr, writedata);

   parameter WIDTH = 8, REGBITS = 3;
   input clk, reset;
	input  [WIDTH-1:0] memdata;
	output             memread, memwrite;
	output [WIDTH-1:0] adr, writedata;
	
   wire [31:0] instr;
   wire        zero, alusrca, memtoreg, iord, pcen, regwrite, regdst;
   wire [1:0]  aluop,pcsource,alusrcb;
   wire [3:0]  irwrite;
   wire [2:0]  alucont;

   controller  cont(clk, reset, instr[31:26], zero, memread, memwrite, 
                    alusrca, memtoreg, iord, pcen, regwrite, regdst,
                    pcsource, alusrcb, aluop, irwrite);
   alucontrol  ac(aluop, instr[5:0], alucont);
   datapath    dp(clk, reset, memdata, alusrca, memtoreg, iord, pcen,
                  regwrite, regdst, pcsource, alusrcb, irwrite, alucont,
                  zero, instr, adr, writedata);
endmodule

// Finite state machine controller
module controller(clk, reset, op, zero, memread, memwrite, alusrca, memtoreg, iord, pcen, regwrite, regdst, pcsource, alusrcb, aluop, irwrite);
                  
	input clk, reset;
	input [5:0] op;
	input zero;
	
	output memread, memwrite, alusrca, memtoreg, iord;
	reg memread, memwrite, alusrca, memtoreg, iord;
	
	output pcen;
	
	output regwrite, regdst;
	reg regwrite, regdst;
	
	output [1:0] pcsource, alusrcb, aluop;
	reg [1:0] pcsource, alusrcb, aluop;
	
	output [3:0] irwrite;
	reg [3:0] irwrite;

   parameter   FETCH1  =  4'b0001;
   parameter   FETCH2  =  4'b0010;
   parameter   FETCH3  =  4'b0011;
   parameter   FETCH4  =  4'b0100;
   parameter   DECODE  =  4'b0101;
   parameter   MEMADR  =  4'b0110;
   parameter   LBRD    =  4'b0111;
   parameter   LBWR    =  4'b1000;
   parameter   SBWR    =  4'b1001;
   parameter   RTYPEEX =  4'b1010;
   parameter   RTYPEWR =  4'b1011;
   parameter   BEQEX   =  4'b1100;
   parameter   JEX     =  4'b1101;
   parameter   ADDIWR  =  4'b1110;

   parameter   LB      =  6'b100000;
   parameter   SB      =  6'b101000;
   parameter   RTYPE   =  6'b0;
   parameter   BEQ     =  6'b000100;
   parameter   J       =  6'b000010;
   parameter	ADDI	  =  6'b001000;

   reg [3:0] state, nextstate;
   reg       pcwrite, pcwritecond;

   // state register
   always @(posedge clk)
      if(reset) state <= FETCH1;
      else state <= nextstate;

   // next state logic
   always @(state)
      begin
         case(state)
            FETCH1:  nextstate <= FETCH2;
            FETCH2:  nextstate <= FETCH3;
            FETCH3:  nextstate <= FETCH4;
            FETCH4:  nextstate <= DECODE;
            DECODE:  case(op)
                        LB:      nextstate <= MEMADR;
                        SB:      nextstate <= MEMADR;
                        RTYPE:   nextstate <= RTYPEEX;
                        BEQ:     nextstate <= BEQEX;
                        J:       nextstate <= JEX;
                        ADDI:		nextstate <= MEMADR;
                        default: nextstate <= FETCH1; // should never happen
                     endcase
            MEMADR:  case(op)
                        LB:      nextstate <= LBRD;
                        SB:      nextstate <= SBWR;
                        ADDI:		nextstate <= ADDIWR;
                        default: nextstate <= FETCH1; // should never happen
                     endcase
            LBRD:    nextstate <= LBWR;
            LBWR:    nextstate <= FETCH1;
            SBWR:    nextstate <= FETCH1;
            RTYPEEX: nextstate <= RTYPEWR;
            RTYPEWR: nextstate <= FETCH1;
            BEQEX:   nextstate <= FETCH1;
            JEX:     nextstate <= FETCH1;
            ADDIWR:	nextstate <= FETCH1;
            default: nextstate <= FETCH1; // should never happen
         endcase
      end

   always @(state)
      begin
            // set all outputs to zero, then conditionally assert 
	    // just the appropriate ones
            irwrite <= 4'b0000;
            pcwrite <= 0; pcwritecond <= 0;
            regwrite <= 0; regdst <= 0;
            memread <= 0; memwrite <= 0;
            alusrca <= 0; alusrcb <= 2'b00; aluop <= 2'b00;
            pcsource <= 2'b00;
            iord <= 0; memtoreg <= 0;
            case(state)
               FETCH1: 
                  begin
                     memread <= 1; 
                     irwrite <= 4'b0001; // changed to reflect new memory and
                     alusrcb <= 2'b01;   // get the IR bits in the right spots
                     pcwrite <= 1;       // FETCH 2,3,4 also changed... 
                  end
               FETCH2: 
                  begin
                     memread <= 1;
                     irwrite <= 4'b0010;
                     alusrcb <= 2'b01;
                     pcwrite <= 1;
                  end
               FETCH3:
                  begin
                     memread <= 1;
                     irwrite <= 4'b0100;
                     alusrcb <= 2'b01;
                     pcwrite <= 1;
                  end
               FETCH4:
                  begin
                     memread <= 1;
                     irwrite <= 4'b1000;
                     alusrcb <= 2'b01;
                     pcwrite <= 1;
                  end
               DECODE: alusrcb <= 2'b11;
               MEMADR:
                  begin
                     alusrca <= 1;
                     alusrcb <= 2'b10;
                  end
               LBRD:
                  begin
                     memread <= 1;
                     iord    <= 1;
                  end
               LBWR:
                  begin
                     regwrite <= 1;
                     memtoreg <= 1;
                  end
               SBWR:
                  begin
                     memwrite <= 1;
                     iord     <= 1;
                  end
               RTYPEEX: 
                  begin
                     alusrca <= 1;
                     aluop   <= 2'b10;
                  end
               RTYPEWR:
                  begin
                     regdst   <= 1;
                     regwrite <= 1;
                  end
               BEQEX:
                  begin
                     alusrca     <= 1;
                     aluop       <= 2'b01;
                     pcwritecond <= 1;
                     pcsource    <= 2'b01;
                  end
               JEX:
                  begin
                     pcwrite  <= 1;
                     pcsource <= 2'b10;
                  end
               ADDIWR:
               	begin
               		//memwrite <= 1;
               		regwrite <= 1;
                     iord     <= 1;
               	end
         endcase
      end
   assign pcen = pcwrite | (pcwritecond & zero); // program counter enable
endmodule

// Generate control bits for ALU
module alucontrol(aluop, funct, alucont);
	input [1:0] aluop; 
	input [5:0] funct;
	output [2:0] alucont;
	reg [2:0] alucont;
	
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

// Datapath, including register file, ALU, muxes, and other registers
module datapath(clk, reset, memdata, alusrca, memtoreg, iord, pcen, regwrite, regdst, pcsource, alusrcb, irwrite, alucont, zero, instr, adr, writedata);
	
	parameter WIDTH = 8, REGBITS = 3;
	input clk, reset;
	input [WIDTH-1:0] memdata; 
	input alusrca, memtoreg, iord;
	input pcen, regwrite, regdst;
	input [1:0] pcsource, alusrcb;
	input [3:0] irwrite;
	input  [2:0] alucont;
	output zero; 
	output [31:0] instr; 
	output [WIDTH-1:0] adr, writedata;
	
   // the size of the parameters must be changed to match the WIDTH parameter
   parameter CONST_ZERO = 8'b0;
   parameter CONST_ONE =  8'b1;

   wire [REGBITS-1:0] ra1, ra2, wa;
   wire [WIDTH-1:0]   pc, nextpc, md, rd1, rd2, wd, a, src1, src2, aluresult,
                          aluout, constx4;

   // shift left constant field by 2
   assign constx4 = {instr[WIDTH-3:0],2'b00};

   // register file address fields
   assign ra1 = instr[REGBITS+20:21];
   assign ra2 = instr[REGBITS+15:16];
   mux2reg regmux(instr[REGBITS+15:16], instr[REGBITS+10:11], regdst, wa);

   // independent of bit width, load instruction into four 
   // 8-bit registers over four cycles
   flopen ir0(clk, irwrite[3], memdata[7:0], instr[7:0]);
   flopen ir1(clk, irwrite[2], memdata[7:0], instr[15:8]);
   flopen ir2(clk, irwrite[1], memdata[7:0], instr[23:16]);
   flopen ir3(clk, irwrite[0], memdata[7:0], instr[31:24]);

   // datapath
   flopenr pcreg(clk, reset, pcen, nextpc, pc);
   flop mdr(clk, memdata, md);
   flop areg(clk, rd1, a);	
   flop wrd(clk, rd2, writedata);
   flop res(clk, aluresult, aluout);
   
   mux2 adrmux(pc, aluout, iord, adr);
   mux2 src1mux(pc, a, alusrca, src1);
   mux2 wdmux(aluout, md, memtoreg, wd);

	// mux4 src2mux(writedata, CONST_ONE, instr[WIDTH-1:0], constx4, alusrcb, src2);
	assign src2 = alusrcb[1] ? (alusrcb[0] ? constx4:instr[WIDTH-1:0]) : 
				   (alusrcb[0] ? CONST_ONE:writedata);
	// mux4 pcmux(aluresult, aluout, constx4, CONST_ZERO, pcsource, nextpc);
	assign nextpc = pcsource[1] ? (pcsource[0] ? CONST_ZERO : constx4) :
				      (pcsource[0] ? aluout : aluresult);
   
   regfile rf(clk, regwrite, ra1, ra2, wa, wd, rd1, rd2);
   
   alu alunit(src1, src2, alucont, aluresult);
   
   zerodetect zd(aluresult, zero);
endmodule

module alu(a, b, alucont, result);
	
	parameter WIDTH = 8;
	input [WIDTH-1:0] a, b;
 	input [2:0] alucont;
 	output [WIDTH-1:0] result;
 	reg [WIDTH-1:0] result;
 	
   wire     [WIDTH-1:0] b2, sum, slt;

   assign b2 = alucont[2] ? ~b:b; 
   assign sum = a + b2 + alucont[2];
   // slt should be 1 if most significant bit of sum is 1
   assign slt = sum[WIDTH-1];

   always@(a or b or alucont or sum or slt)
      case(alucont[1:0])
         2'b00: result <= a & b;
         2'b01: result <= a | b;
         2'b10: result <= sum;
         2'b11: result <= slt;
      endcase
endmodule

module regfile(clk, regwrite, ra1, ra2, wa, wd, rd1, rd2);
                 
	parameter WIDTH = 8, REGBITS = 3;
	input clk;
	input regwrite;
	input [REGBITS-1:0] ra1, ra2, wa;
	input [WIDTH-1:0] wd;
	output [WIDTH-1:0] rd1, rd2;

   reg  [WIDTH-1:0] RAM [(1<<REGBITS)-1:0];

   // three ported register file
   // read two ports combinationally
   // write third port on rising edge of clock
   // register 0 hardwired to 0
   always @(posedge clk)
      if (regwrite) RAM[wa] <= wd;	

   assign rd1 = ra1 ? RAM[ra1] : 0;
   assign rd2 = ra2 ? RAM[ra2] : 0;
   
   initial
	begin
	$monitor("Reg0 = %d :: Reg1 = %d :: Reg2 = %d :: Reg3 = %d :: Reg4 = %d Reg5 = %d :: Reg6 = %d :: Reg7 = %d", RAM[0], RAM[1], RAM[2], RAM[3], RAM[4], RAM[5], RAM[6], RAM[7]);
	end
endmodule

module zerodetect(a,y);
	parameter WIDTH = 8;
	
	input [WIDTH-1:0] a; 
	output y;
	
   assign y = (a==0);
endmodule	

module flop(clk, d, q);
	parameter WIDTH = 8;
	input clk; 
	input [WIDTH-1:0] d; 
	output [WIDTH-1:0] q;
	reg [WIDTH-1:0] q;
	
   always @(posedge clk)
      q <= d;
endmodule

module flopen(clk, en, d, q);
	parameter WIDTH = 8;
	input clk, en;
	input [WIDTH-1:0] d; 
	output [WIDTH-1:0] q;
	reg [WIDTH-1:0] q;
	
   always @(posedge clk)
      if (en) q <= d;
endmodule

module flopenr(clk, reset, en, d, q);
 	parameter WIDTH = 8;
 	input clk, reset, en;
	input [WIDTH-1:0] d;
	output [WIDTH-1:0] q;
	reg [WIDTH-1:0] q;
 	
   always @(posedge clk)
      if      (reset) q <= 0;
      else if (en)    q <= d;
endmodule

module mux2reg(d0, d1, s, y);
	parameter WIDTH = 3;
	input  [WIDTH-1:0] d0, d1; 
	input s;
	output [WIDTH-1:0] y;
	
   assign y = s ? d1 : d0; 
endmodule

module mux2(d0, d1, s, y);
	parameter WIDTH = 8;
	input  [WIDTH-1:0] d0, d1; 
	input s;
	output [WIDTH-1:0] y;
	
   assign y = s ? d1 : d0; 
endmodule

/*module mux4(d0, d1, d2, d3, s, y);
	parameter WIDTH = 8;
	input [WIDTH-1:0] d0, d1, d2, d3;
	input [1:0] s;
	output [WIDTH-1:0] y;
	wire [WIDTH-1:0] y1, y2;

	//assign y = s[1] ? (s[0] ? d3:d2) : (s[0] ? d1:d0);
	assign y1 = s[0] ? d1 : d0;
	assign y2 = s[0] ? d3 : d2;
	assign y = s[1] ? y2 : y1;	

	
	mux2 M1(d0, d1, s[0], y1);
	mux2 M2(d2, d3, s[0], y2);
	mux2 M3(y1, y2, s[1], y);
endmodule */
