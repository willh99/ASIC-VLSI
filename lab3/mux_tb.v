//------------------
//filename: mux_tb.v
//------------------

`include "globals.vh"
module mux_tb();

	parameter finishtime= 5 ;
	integer N;
	wire c;
	reg [2:0] test_vectors;   // 3-bit wide test vector

	mux m1(.c(c), .a(test_vectors[2]), 
			.b(test_vectors[1]),
			.s(test_vectors[0]));

	initial begin
		// initialize all variables
		$display ("-----------------------------------------------------");
		$display ("                                           ABS");
		$display ("-----------------------------------------------------");
		$monitor ("TIME = %d, test_vectors= %b, c= %b", $time, test_vectors, c);
		test_vectors = 3'b000;
	end

	initial begin
		for(N=0; N<7; N=N+1) begin
			#`DELAY test_vectors = test_vectors+ 1;
			#(`DELAY/5)
			if      (c==test_vectors[2] && test_vectors[0]==1) $display ("PASS");
			else if (c==test_vectors[1] && test_vectors[0]==0) $display ("PASS");
			else $display ("FAIL");
		end

		// everything below will printout after finishtime expires
		#finishtime 
		$display ("Finishing simulation due to simulation constraint.");
		$display ("Time is -%d",$time);
		$finish; 
	end

	initial begin
		// Open a db file for saving simulation data
		$shm_open ("mux_tb.db");
		// Collect all signals (hierarchically) from the module "mux_tb"
		$shm_probe (mux_tb,"AS");
	end
endmodule
