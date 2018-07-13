
module halfadder_7 ( s, c, a, b );
  input a, b;
  output s, c;


  AND2X2 U1 ( .A(b), .B(a), .Y(c) );
  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
endmodule


module halfadder_6 ( s, c, a, b );
  input a, b;
  output s, c;


  AND2X2 U1 ( .A(b), .B(a), .Y(c) );
  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
endmodule


module fulladder_3 ( s, cout, a, b, cin );
  input a, b, cin;
  output s, cout;
  wire   wire1, wire2, wire3;

  halfadder_7 ha1 ( .s(wire1), .c(wire2), .a(a), .b(b) );
  halfadder_6 ha2 ( .s(s), .c(wire3), .a(wire1), .b(cin) );
  OR2X2 U1 ( .A(wire2), .B(wire3), .Y(cout) );
endmodule


module halfadder_0 ( s, c, a, b );
  input a, b;
  output s, c;


  AND2X2 U1 ( .A(b), .B(a), .Y(c) );
  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
endmodule


module halfadder_1 ( s, c, a, b );
  input a, b;
  output s, c;


  AND2X2 U1 ( .A(b), .B(a), .Y(c) );
  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
endmodule


module fulladder_0 ( s, cout, a, b, cin );
  input a, b, cin;
  output s, cout;
  wire   wire1, wire2, wire3;

  halfadder_1 ha1 ( .s(wire1), .c(wire2), .a(a), .b(b) );
  halfadder_0 ha2 ( .s(s), .c(wire3), .a(wire1), .b(cin) );
  OR2X2 U1 ( .A(wire2), .B(wire3), .Y(cout) );
endmodule


module halfadder_2 ( s, c, a, b );
  input a, b;
  output s, c;


  AND2X2 U1 ( .A(b), .B(a), .Y(c) );
  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
endmodule


module halfadder_3 ( s, c, a, b );
  input a, b;
  output s, c;


  AND2X2 U1 ( .A(b), .B(a), .Y(c) );
  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
endmodule


module fulladder_1 ( s, cout, a, b, cin );
  input a, b, cin;
  output s, cout;
  wire   wire1, wire2, wire3;

  halfadder_3 ha1 ( .s(wire1), .c(wire2), .a(a), .b(b) );
  halfadder_2 ha2 ( .s(s), .c(wire3), .a(wire1), .b(cin) );
  OR2X2 U1 ( .A(wire2), .B(wire3), .Y(cout) );
endmodule


module halfadder_4 ( s, c, a, b );
  input a, b;
  output s, c;


  AND2X2 U1 ( .A(b), .B(a), .Y(c) );
  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
endmodule


module halfadder_5 ( s, c, a, b );
  input a, b;
  output s, c;


  AND2X2 U1 ( .A(b), .B(a), .Y(c) );
  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
endmodule


module fulladder_2 ( s, cout, a, b, cin );
  input a, b, cin;
  output s, cout;
  wire   wire1, wire2, wire3;

  halfadder_5 ha1 ( .s(wire1), .c(wire2), .a(a), .b(b) );
  halfadder_4 ha2 ( .s(s), .c(wire3), .a(wire1), .b(cin) );
  OR2X2 U1 ( .A(wire2), .B(wire3), .Y(cout) );
endmodule


module ripplecarry4_clk ( sum, cout, a, b, cin, clk, rst, test_si, test_so, 
        test_se );
  output [3:0] sum;
  input [3:0] a;
  input [3:0] b;
  input cin, clk, rst, test_si, test_se;
  output cout, test_so;
  wire   wire0, wire1, c0_reg, wire2, c1_reg, n21, n22, n23, n24, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45;

  fulladder_3 fa0 ( .s(sum[0]), .cout(wire0), .a(n39), .b(n31), .cin(n29) );
  fulladder_2 fa1 ( .s(sum[1]), .cout(wire1), .a(n41), .b(n33), .cin(c0_reg)
         );
  fulladder_1 fa2 ( .s(sum[2]), .cout(wire2), .a(n43), .b(n35), .cin(c1_reg)
         );
  fulladder_0 fa3 ( .s(sum[3]), .cout(cout), .a(n45), .b(n37), .cin(test_so)
         );
  DFFPOSX1_SCAN c0_reg_reg ( .D(n24), .TI(test_si), .TE(test_se), .CLK(clk), 
        .Q(c0_reg) );
  DFFPOSX1_SCAN c1_reg_reg ( .D(n23), .TI(c0_reg), .TE(test_se), .CLK(clk), 
        .Q(c1_reg) );
  DFFPOSX1_SCAN c2_reg_reg ( .D(n22), .TI(c1_reg), .TE(test_se), .CLK(clk), 
        .Q(test_so) );
  AND2X1 U7 ( .A(wire0), .B(n21), .Y(n24) );
  AND2X1 U8 ( .A(wire1), .B(n21), .Y(n23) );
  AND2X1 U9 ( .A(wire2), .B(n21), .Y(n22) );
  INVX1 U10 ( .A(rst), .Y(n21) );
  INVX2 U14 ( .A(cin), .Y(n28) );
  INVX2 U15 ( .A(n28), .Y(n29) );
  INVX2 U16 ( .A(b[0]), .Y(n30) );
  INVX2 U17 ( .A(n30), .Y(n31) );
  INVX2 U18 ( .A(b[1]), .Y(n32) );
  INVX2 U19 ( .A(n32), .Y(n33) );
  INVX2 U20 ( .A(b[2]), .Y(n34) );
  INVX2 U21 ( .A(n34), .Y(n35) );
  INVX2 U22 ( .A(b[3]), .Y(n36) );
  INVX2 U23 ( .A(n36), .Y(n37) );
  INVX2 U24 ( .A(a[0]), .Y(n38) );
  INVX2 U25 ( .A(n38), .Y(n39) );
  INVX2 U26 ( .A(a[1]), .Y(n40) );
  INVX2 U27 ( .A(n40), .Y(n41) );
  INVX2 U28 ( .A(a[2]), .Y(n42) );
  INVX2 U29 ( .A(n42), .Y(n43) );
  INVX2 U30 ( .A(a[3]), .Y(n44) );
  INVX2 U31 ( .A(n44), .Y(n45) );
endmodule

