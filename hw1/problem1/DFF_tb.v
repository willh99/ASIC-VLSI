module DFlipFlop_tb();
  reg clk, D,reset,en;
  wire Q,Qb;

  DFlipFlop DFF(.clk(clk),.async_reset(reset),.D(D),.en(en),.Q(Q),.Qb(Qb));

  initial
  begin
    //Initialize Inputs
    clk=0;
    D=0;
    reset=0;
    en=0;
  end

  always #10 clk=~clk;

  initial
  begin
    #20 D=1'b1;
        reset = 1'b1;

    #10 D = 1'b1;
    #10 D = 1'b0;
        reset=1'b0;
    #10 D = 1'b0;
    #10 D = 1'b1;
    #10 D = 1'b0;

    #10 en=1'b1;
    #10 D=1'b1;
        reset = 1'b1;

    #10 D = 1'b1;
    #10 D = 1'b0;
        reset=1'b0;
    #10 D = 1'b0;
    #10 D = 1'b1;
    #10 D = 1'b0;
    #5 $finish;
  end



  initial
  begin
    $display("\t\ttime, \tclk,\treset,\ten,\tD,\tQ,\tQb");
    $monitor("%d,\t%b,\t%b,\t%b,\t%b,\t%d,\t%d",$time,clk,reset,en,D,Q,Qb);
    // Open a db file for saving simulation data
    $shm_open("DFF_tb.db");
    // Collect al signals (hierarchically) from the mdule ""
    $shm_probe(DFlipFlop_tb,"AS");
  end
endmodule
