module full_adder_tb();
	wire Sum, Carry;
	reg A, B, Cin;
	
	//dut	
	full_adder dut1(.Sum(Sum), .Carry(Carry), .A(A), .B(B), .Cin(Cin));
	
	//stimulus
	initial
		begin
			#0 A=1'b0;
			B=1'b0;
			Cin=1'b0;

			#5 B=1'b1;
			#5 A=1'b1;
			B=1'b0;
			#5 B=1'b1;
			#5 A=1'b0;
			B=1'b0;
			Cin=1'b1;
			#5 B=1'b1;
                        #5 A=1'b1;
                        B=1'b0;
                        #5 B=1'b1;
			#5 $finish;
		end

	//monitor
        initial
                begin
                        $shm_open("full_adder_tb.db");
                        $shm_probe(full_adder_tb,"AS");
                        $shm_save;
                end


endmodule

