// combined mips processor with memory
module full_mips_scan (clk, reset, test_si, test_se, test_so);
   
	input clk, reset, test_si, test_se;

   wire    		memread;
	wire			memwrite;
   wire	[7:0] adr;
	wire	[7:0]	writedata;
   wire	[7:0] memdata;
   wire		   en = 1;
	output		test_so;		

   // instantiate the mips processor
   mips mips(clk, reset, memdata, memread, memwrite, adr, writedata, 
				 test_si, test_so, test_se);

   // instantiate memory for code and data
   mem_sim mem_sim(clk, en, memwrite, adr, writedata, memdata);

endmodule
