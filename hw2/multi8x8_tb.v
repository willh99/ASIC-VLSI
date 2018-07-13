module multi8x8_tb();

    reg [7:0]a;
    reg [7:0]b;
    reg clk;
    wire [15:0]S;

    multi8x8 m(.a(a),.b(b),.clk(clk),.S(S));

    initial begin
	#10 a=8'b00000001; b=8'b00000001; clk=1'b0;
	#10 a=8'b00000001; b=8'b00000001; clk=1'b1;
	#10 a=8'b00000011; b=8'b00000100; clk=1'b0;
	#10 a=8'b00000011; b=8'b00000100; clk=1'b1;
	#10 a=8'b00000010; b=8'b00000010; clk=1'b0;
	#10 a=8'b00010000; b=8'b10000000; clk=1'b1;
	#10 a=8'b00010000; b=8'b10000000; clk=1'b0;
	#10 $finish;
    end

    initial
    begin
	$display("\t\ttime, \ta,\tb,\tclk,\t\tS");
	$monitor("%d,\t%b,\t%b,\t%b,\t\t%d",$time,a,b,clk,S);
	// Open a db file for saving simulation data
	$shm_open("multi8x8_tb.db");
	// Collect al signals (hierarchically) from the mdule ""
	$shm_probe(multi8x8_tb,"AS");
    end


endmodule
