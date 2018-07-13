module mips_tb();

   parameter WIDTH = 8;
   parameter REGBITS = 3;
   parameter FINISHTIME = 20000;
   parameter CLKTIME  = 20;

   reg clk;
   reg reset;

   // instantiate devices to be tested
   full_mips fmp(clk, reset);

   // initialize the test, then quit after a while
   initial
      begin
			clk <= 0;
         reset <= 1; 
         #(4*CLKTIME) reset <= 0;
         #FINISHTIME 
	 		$display("Finishing Simulation due to simulation constraint.");
	 		$finish; 
      end

   // generate clock to sequence the tests
   always #CLKTIME clk <= ~clk; 

   // check the data on the memory interface of the mips_dut
   // Check whenever the memwrite signal is active
   always@(negedge clk)
      begin
         if(fmp.memwrite)
            if(fmp.adr == 8'hff & fmp.writedata == 8'h0D)
				begin
               $display("Fibonacci Simulation was successful!!!");
					#(4*CLKTIME)
	       		$display("Ending Simulation.");
               $finish;
				end
		   else begin 
		      $display("Fibonacci Simulation has failed...");
		      $display("Data at address FF should be 0D");
				#(4*CLKTIME)
		 		$display("Ending Simulation.");
		 		$finish;
		   end
      end

	initial	
	begin
		// for generic verilog
		//$dumpfile("waves.lxt");
		//$dumpvars(0,top_tb);
		// for cadence
		$shm_open("mips_tb.db");
		$shm_probe(mips_tb,"AS");

	end

endmodule
