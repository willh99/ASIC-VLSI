module DFF_tb2();
  reg clk, D;
  wire Q,Qb;

  DFlipFlop DFF(.clk(clk),.D(D),.Q(Q),.Qb(Qb));

  initial
  begin
    //Initialize Inputs
    clk=0;
    D=0;
  end

  always #5 clk=~clk;

  initial
  begin
    #8 D=1'b1;
    #8 D=1'b0;
    #8 D=1'b1;
    #8 D=1'b0;
    #8 $finish;
  end

  initial
  begin
    $display("\t\ttime, \tclk,\tD,\tQ,\tQb");
    $monitor("%d,\t%b,\t%b,\t%d,\t%d",$time,clk,D,Q,Qb);
    // Open a db file for saving simulation data
    $shm_open("DFF_tb2.db");
    // Collect al signals (hierarchically) from the mdule ""
    $shm_probe(DFF_tb2,"AS");
  end
endmodule


