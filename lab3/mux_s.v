//------------------
// filename: mux_s.v
//------------------


module mux (c,a,b,s);
  input a,b,s;
  output c;

  not I1 (wire1, s);
  and I2 (wire2, a, wire1);
  and I3 (wire3, b, wire1);
  or I4 (c, wire2, wire3);

endmodule
