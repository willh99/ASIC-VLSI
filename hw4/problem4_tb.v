`timescale 1ns/1ps

module problem4_tb();
	
	//Inputs
	reg a;
	reg clk;
	reg rst;
	
	//Outputs
	wire x;
	wire y;

	problem4 fsm(.x(x), .y(y), .clk(clk), .rst(rst), .a(a));

	initial 
	begin
		//initialize inputs
		clk = 1;
		a = 0;
		rst = 1;

		#2 //global reset
		

		$display("Sequence 1: s0->s3->s4");
		#2; rst = 1;			//s0
		#2; rst = 0; a = 1; 	//s3
		#2; a = 1; 				//s4
		#2; a = 1; 				//s4

		$display("Sequence 2: s0->s1->s2");
		#2; rst = 1;			//s0		
		#2; rst = 0; a = 0; 	//s1
		#2; a = 0; 				//s2
		#2; a = 0; 				//s2
		
		$display("Sequence 3: s0->s3->s1->s2");
		#2; rst = 1;			//s0
		#2; rst = 0; a = 1; 	//s3
		#2; a = 0; 				//s1
		#2; a = 0; 				//s2
		#2; a = 0; 				//s2
		
		$display("Sequence 4: s0->s1->s3->s4");
		#2; rst = 1;			//s0
		#2; rst = 0; a = 0; 	//s1
		#2; a = 1; 				//s3
		#2; a = 1; 				//s4
		#2; a = 1; 				//s4

		$display("Test 5: s0->s1->s2->s3");
		#2; rst = 1;			//s0
		#2; rst = 0; a = 0; 	//s1
		#2; a = 0; 				//s2
		#2; a = 1; 				//s3
		
		$display("Test 6: s0->s3->s4->s1");
		#2; rst = 1;			//s0
		#2; rst = 0; a = 1; 	//s3
		#2; a = 1; 				//s4
		#2; a = 0; 				//s1
		
		#1; $finish;
	end

	// Clock Pulse
	always
	begin
		#1; clk = ~clk;
	end
	
	initial
	begin
		$monitor("X = %b :: Y = %b", x, y);
	end
	
	initial
	begin
		// Open a db file for saving simulation data
		$shm_open ("problem4_tb.db");
		// Collect al signals (hierarchically) from the module
		$shm_probe (problem4_tb, "AS");
	end

endmodule
