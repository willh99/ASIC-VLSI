module TinyMIPS_tb();

    // Regfile Data
    reg       clk;
    reg	      regwrite;
    reg [2:0] ra1;
    reg [2:0] ra2;
    reg [2:0] wa;
    reg [7:0] wd;
    wire [7:0] rd1,rd2;

    // ALU Control Data
    reg	[5:0] funct;
    reg [1:0] aluop;
    wire [2:0] alucont;

    // ALU Data
    wire [7:0]result;

    regfile reg1 (.rd1(rd1),.rd2(rd2),.clk(clk),.regwrite(regwrite),
		  .ra1(ra1),.ra2(ra2),.wa(wa),.wd(wd));
    alu alu(.result(result),.a(rd1),.b(rd2),.alucont(alucont));
    alucontrol alucontroller(.alucont(alucont),.aluop(aluop),.funct(funct));

    initial begin
	// Initialize inputs
	clk=0;
	ra1 = 3'b001;		// Read from register s1
	ra2 = 3'b010;		// Read from register s2
	wa = 3'b001;		// Address to write to (currently s1)
	aluop = 2'b11;		// Set to default
	funct = 6'b100000;	// Set to add

	#2 regwrite = 1'b1; wd<=8'b00000001;
	
	#2 regwrite = 1'b0; wa = 3'b010;
	
	#2 regwrite = 1'b1; wd<=8'b00000010;

	// Add
	#2 wa=3'b011; 
	#2 funct=6'b100000; 
	#2 wd = result; 
	#2 regwrite=1'b1;
	#2 regwrite=1'b0;
	#2 $display("Contents of s3: %d +%d =%d", rd1, rd2, wd);

	// Sub
	#2 wa=3'b100; 
	#2 funct=6'b100010; 
	#2 wd = result; 
	#2 regwrite=1'b1;
	#2 regwrite=1'b0;
	#2 $display("Contents of s3: %d -%d =%d", rd1, rd2, wd);

	// AND
	#2 wa=3'b101; 
	#2 funct=6'b100100;
	#2 wd = result; 
	#2 regwrite=1'b1;
	#2 regwrite=1'b0;
	#2 $display("Contents of s3: %d &%d=%d", rd1, rd2, wd);

	// OR
	#2 wa=3'b110; 
	#2 funct=6'b100101;
	#2 wd = result; 
	#2 regwrite=1'b1;
	#2 regwrite=1'b0;
	#2 $display("Contents of s3: %d |%d=%d", rd1, rd2, wd);

	// slt
	#2 wa=3'b111; 
	#2 funct=6'b101010;
	#2 wd = result; 
	#2 regwrite=1'b1;
	#2 regwrite=1'b0;
	#2 $display("Contents of s3: slt(%d,%d) = %d", rd1, rd2, wd);

	#10 $finish;
    end


    always begin
	#1 clk = ~clk;
    end


    initial
    begin
	//$display("\t\ttime, \ta,\tb,\tsel,\t\tresult");
	//$monitor("%d,\t%b,\t%b,\t%b,\t\t%d",$time,a,b,sel,result);
	// Open a db file for saving simulation data
	$shm_open("TinyMIPS_tb.db");
	// Collect al signals (hierarchically) from the module
	$shm_probe(TinyMIPS_tb,"AS");
    end


endmodule
