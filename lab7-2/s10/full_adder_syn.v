
module half_adder_1 ( sout, cout, a, b );
  input a, b;
  output sout, cout;


  AND2X2 U1 ( .A(b), .B(a), .Y(cout) );
  XOR2X1 U2 ( .A(b), .B(a), .Y(sout) );
endmodule


module half_adder_0 ( sout, cout, a, b );
  input a, b;
  output sout, cout;


  AND2X2 U1 ( .A(b), .B(a), .Y(cout) );
  XOR2X1 U2 ( .A(b), .B(a), .Y(sout) );
endmodule


module full_adder ( Sum, Carry, A, B, Cin );
  input A, B, Cin;
  output Sum, Carry;
  wire   ab_sum, c1, c2, n1, n2, n3, n4, n5, n6;

  half_adder_1 h1 ( .sout(ab_sum), .cout(c1), .a(n6), .b(n4) );
  half_adder_0 h2 ( .sout(Sum), .cout(c2), .a(ab_sum), .b(n2) );
  OR2X2 U1 ( .A(c1), .B(c2), .Y(Carry) );
  INVX2 U2 ( .A(Cin), .Y(n1) );
  INVX2 U3 ( .A(n1), .Y(n2) );
  INVX2 U4 ( .A(B), .Y(n3) );
  INVX2 U5 ( .A(n3), .Y(n4) );
  INVX2 U6 ( .A(A), .Y(n5) );
  INVX2 U7 ( .A(n5), .Y(n6) );
endmodule

