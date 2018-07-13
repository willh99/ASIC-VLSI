module alu8_tb();

    reg [7:0]a;
    reg [7:0]b;
    reg [2:0]sel;
    wire [15:0]result;

    alu8 alu(.a(a),.b(b),.sel(sel),.result(result));

    initial begin
	#10 a=8'b00001001; b=8'b00000101; sel=3'b001;
	#10 a=8'b00001001; b=8'b00000101; sel=3'b010;
	#10 a=8'b00001001; b=8'b00000101; sel=3'b011;
	#10 a=8'b00001001; b=8'b00000101; sel=3'b100;
	#10 a=8'b00001001; b=8'b00000101; sel=3'b101;
	#10 $finish;
    end

    initial
    begin
	$display("\t\ttime, \ta,\tb,\tsel,\t\tresult");
	$monitor("%d,\t%b,\t%b,\t%b,\t\t%d",$time,a,b,sel,result);
	// Open a db file for saving simulation data
	$shm_open("alu8_tb.db");
	// Collect al signals (hierarchically) from the mdule ""
	$shm_probe(alu8_tb,"AS");
    end


endmodule
