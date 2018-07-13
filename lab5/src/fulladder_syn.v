
module halfadder_1 ( s, c, a, b );
  input a, b;
  output s, c;


  AND2X2 U1 ( .A(b), .B(a), .Y(c) );
  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
endmodule


module halfadder_0 ( s, c, a, b );
  input a, b;
  output s, c;


  AND2X2 U1 ( .A(b), .B(a), .Y(c) );
  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
endmodule


module fulladder ( s, cout, a, b, cin );
  input a, b, cin;
  output s, cout;
  wire   wire1, wire2, wire3, n1, n2, n3, n4, n5, n6;

  halfadder_1 ha1 ( .s(wire1), .c(wire2), .a(n6), .b(n4) );
  halfadder_0 ha2 ( .s(s), .c(wire3), .a(wire1), .b(n2) );
  OR2X2 U1 ( .A(wire2), .B(wire3), .Y(cout) );
  INVX2 U2 ( .A(cin), .Y(n1) );
  INVX2 U3 ( .A(n1), .Y(n2) );
  INVX2 U4 ( .A(b), .Y(n3) );
  INVX2 U5 ( .A(n3), .Y(n4) );
  INVX2 U6 ( .A(a), .Y(n5) );
  INVX2 U7 ( .A(n5), .Y(n6) );
endmodule

