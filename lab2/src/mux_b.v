//------------------
// filename: mux_b.v
//------------------

module mux (c,a,b,s);
  input a,b,s;
  output c;

  // Behavioral Style
  assign c=(s)?a:b;
endmodule
