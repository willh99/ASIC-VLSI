module full_adder_tb();
  wire Sum, Cout;
  reg A,B,Cin;

  Full_Adder U1 (.A(A),.B(B),.Cin(Cin),.S(S),.Cout(Cout));

  initial
  begin
    #0 A=0; B=0; Cin=0;

    #1 A=0; B=0; Cin=0;
    #1 A=0; B=1; Cin=0;
    #1 A=0; B=0; Cin=1;
    #1 A=0; B=1; Cin=1;
    #1 A=1; B=0; Cin=0;
    #1 A=1; B=1; Cin=0;
    #1 A=1; B=0; Cin=1;
    #1 A=1; B=1; Cin=1;

    #5 $finish; //finish sim
  end

  initial
  begin
    $display("\t\ttime, \tA,\tB,\tCin,\tS,\tCout");
    $monitor("%d,\t%b,\t%b,\t%b,\t%d,\t%d",$time,A,B,Cin,S,Cout);
    // Open a db file for saving simulation data
    $shm_open("full_adder_tb.db");
    // Collect al signals (hierarchically) from the mdule ""
   $shm_probe(full_adder_tb,"AS");
  end
endmodule
