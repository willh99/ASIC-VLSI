
module mux ( c, a, b, s );
  input a, b, s;
  output c;
  wire   n3, n4, n5;

  INVX2 U1 ( .A(n3), .Y(c) );
  AOI22X1 U3 ( .A(n5), .B(a), .C(b), .D(n4), .Y(n3) );
  INVX2 U4 ( .A(s), .Y(n4) );
  INVX2 U5 ( .A(n4), .Y(n5) );
endmodule

