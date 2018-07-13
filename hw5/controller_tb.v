//SET STATE AS AN OUPUT IN CONTROLLER.V OR DELETE STATE AS AN OUTPUT HERE
module controller_tb();

	reg clk, reset;
	reg [5:0] op;

	wire alusrca, branch, iord, memread, memwrite, memtoreg, pcwrite, regwrite, regdst;
	wire [1:0] alusrcb, aluop, pcsource;
	wire [3:0] irwrite, state;

	controller c1(.alusrca(alusrca), .alusrcb(alusrcb), .aluop(aluop), .branch(branch),
					  .iord(iord), .irwrite(irwrite), .memread(memread),
					  .memwrite(memwrite), .memtoreg(memtoreg), .pcwrite(pcwrite), 
					  .pcsource(pcsource), .regwrite(regwrite), .regdst(regdst),
					  .op(op), .clk(clk), .reset(reset));

	initial
	 begin
	  #0 clk=0;
		  reset=0;
	  #1 reset=1;
	  #1 reset=0;
		  op=6'b0; 
	  #10 op=6'b100000;
	  #10 op=6'b101000;
	  #10 op=6'b000100;
	  #10 op=6'b000010;
	  #2 $finish;
	 end

	always begin
		#1 clk = ~clk;
	end

	initial
	begin
		$monitor("Inputs: op = %b :: reset = %b \nalusrca = %b :: alusrcb = %b \naluop = %b :: branch = %b \niord = %b :: irwrite = %b \nmemread = %b :: memwrite = %b \nmemtoreg = %b :: pcwrite = %b \npcsource = %b :: regwrite = %b \nregdst = %b \n", op, reset, alusrca, alusrcb,aluop, branch, iord, irwrite,memread, memwrite, memtoreg,pcwrite, pcsource, regwrite, regdst);
	end

	initial
	 begin
		// Open a db file for saving simulation data
	  $shm_open ("controller_tb.db");
		// Collect all signals (hierarchically) from the module "mux_tb"
	  $shm_probe (controller_tb,"AS");
	 end
	endmodule
