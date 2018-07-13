// Created by ihdl
module fulladder_3 ( s, cout, a, b, cin );
  input a, b, cin;
  output s, cout;
  wire   wire1, wire2, wire3;

  halfadder_7 ha1 ( .s(wire1), .c(wire2), .a(a), .b(b) );
  halfadder_6 ha2 ( .s(s), .c(wire3), .a(wire1), .b(cin) );
  OR2X2 U1 ( .A(wire2), .B(wire3), .Y(cout) );
endmodule
