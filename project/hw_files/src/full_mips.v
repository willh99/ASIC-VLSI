// combined mips processor with memory
module full_mips (clk, reset);
   input clk, reset;

   wire    		memread;
	wire			memwrite;
   wire	[7:0] adr;
	wire	[7:0]	writedata;
   wire	[7:0] memdata;
   wire	   en = 1;

   // instantiate the mips processor
   mips mips(clk, reset, memdata, memread, memwrite, adr, writedata);

   // instantiate memory for code and data
   mem_sim mem_sim(clk, en, memwrite, adr, writedata, memdata);

endmodule
