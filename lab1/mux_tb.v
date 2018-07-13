//------------------
//filename: mux_tb.v
//------------------

module mux_tb();
  wire c;
  reg a,b,s;

  mux m1(.c(c), .a(a), .b(b), .s(s)); 
  // mux m1 is instantiated with a named port style.
  // This should become your common convention for instantiating modules
  // in ECE128.

  initial
    begin
      #0 a=1'b0;
         b=1'b0;
         s=1'b0;
      #5 a=1'b1;
      #5 s=1'b1;
      #5 $finish; // The $finish call ends simulation.
    end

  initial
    begin
      // Open a db file for saving simulation data
      $shm_open ("mux_tb.db");
      // Collect all signals (hierarchically) from the module "mux_tb"
      $shm_probe (mux_tb,"AS");
    end
endmodule

