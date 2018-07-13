module rippleadder_tb();

    reg [7:0]a;
    reg [7:0]b;
    reg cin;
    wire [7:0]S;
    wire cout;

    rippleadder rca(.a(a),.b(b),.cin(cin),.S(S),.cout(cout));

    initial begin
	#10 a=8'b00000001; b=8'b00000001; cin=1'b0;
	#10 a=8'b00000001; b=8'b00000001; cin=1'b1;
	#10 a=8'b00000010; b=8'b00000001; cin=1'b0;
	#10 a=8'b00000001; b=8'b00011011; cin=1'b0;
	#10 a=8'b00000001; b=8'b00000001; cin=1'b1;
	#10 a=8'b11111111; b=8'b00000000; cin=1'b1;
	#10 $finish;
    end

    initial
    begin
	$display("\t\ttime, \ta,\tb,\tcin,\t\tS,\tcout");
	$monitor("%d,\t%b,\t%b,\t%b,\t\t%d,\t%d",$time,a,b,cin,S,cout);
	// Open a db file for saving simulation data
	$shm_open("rippleadder_tb.db");
	// Collect al signals (hierarchically) from the mdule ""
	$shm_probe(rippleadder_tb,"AS");
    end


endmodule
