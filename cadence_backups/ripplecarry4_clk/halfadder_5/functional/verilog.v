// Created by ihdl
module halfadder_5 ( s, c, a, b );
  input a, b;
  output s, c;


  AND2X2 U1 ( .A(b), .B(a), .Y(c) );
  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
endmodule
