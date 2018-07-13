module halfadder_7 (
	s, 
	c, 
	a, 
	b);
   output s;
   output c;
   input a;
   input b;

   AND2X2 U1 (.Y(c), 
	.B(a), 
	.A(b));
   XOR2X1 U2 (.Y(s), 
	.B(a), 
	.A(b));
endmodule

module halfadder_6 (
	s, 
	c, 
	a, 
	b);
   output s;
   output c;
   input a;
   input b;

   AND2X2 U1 (.Y(c), 
	.B(a), 
	.A(b));
   XOR2X1 U2 (.Y(s), 
	.B(a), 
	.A(b));
endmodule

module fulladder_3 (
	s, 
	cout, 
	a, 
	b, 
	cin);
   output s;
   output cout;
   input a;
   input b;
   input cin;

   // Internal wires
   wire wire1;
   wire wire2;
   wire wire3;

   halfadder_7 ha1 (.s(wire1), 
	.c(wire2), 
	.a(a), 
	.b(b));
   halfadder_6 ha2 (.s(s), 
	.c(wire3), 
	.a(wire1), 
	.b(cin));
   OR2X2 U1 (.Y(cout), 
	.B(wire3), 
	.A(wire2));
endmodule

module halfadder_0 (
	s, 
	c, 
	a, 
	b);
   output s;
   output c;
   input a;
   input b;

   AND2X2 U1 (.Y(c), 
	.B(a), 
	.A(b));
   XOR2X1 U2 (.Y(s), 
	.B(a), 
	.A(b));
endmodule

module halfadder_1 (
	s, 
	c, 
	a, 
	b);
   output s;
   output c;
   input a;
   input b;

   AND2X2 U1 (.Y(c), 
	.B(a), 
	.A(b));
   XOR2X1 U2 (.Y(s), 
	.B(a), 
	.A(b));
endmodule

module fulladder_0 (
	s, 
	cout, 
	a, 
	b, 
	cin);
   output s;
   output cout;
   input a;
   input b;
   input cin;

   // Internal wires
   wire wire1;
   wire wire2;
   wire wire3;

   halfadder_1 ha1 (.s(wire1), 
	.c(wire2), 
	.a(a), 
	.b(b));
   halfadder_0 ha2 (.s(s), 
	.c(wire3), 
	.a(wire1), 
	.b(cin));
   OR2X2 U1 (.Y(cout), 
	.B(wire3), 
	.A(wire2));
endmodule

module halfadder_2 (
	s, 
	c, 
	a, 
	b);
   output s;
   output c;
   input a;
   input b;

   AND2X2 U1 (.Y(c), 
	.B(a), 
	.A(b));
   XOR2X1 U2 (.Y(s), 
	.B(a), 
	.A(b));
endmodule

module halfadder_3 (
	s, 
	c, 
	a, 
	b);
   output s;
   output c;
   input a;
   input b;

   AND2X2 U1 (.Y(c), 
	.B(a), 
	.A(b));
   XOR2X1 U2 (.Y(s), 
	.B(a), 
	.A(b));
endmodule

module fulladder_1 (
	s, 
	cout, 
	a, 
	b, 
	cin);
   output s;
   output cout;
   input a;
   input b;
   input cin;

   // Internal wires
   wire wire1;
   wire wire2;
   wire wire3;

   halfadder_3 ha1 (.s(wire1), 
	.c(wire2), 
	.a(a), 
	.b(b));
   halfadder_2 ha2 (.s(s), 
	.c(wire3), 
	.a(wire1), 
	.b(cin));
   OR2X2 U1 (.Y(cout), 
	.B(wire3), 
	.A(wire2));
endmodule

module halfadder_4 (
	s, 
	c, 
	a, 
	b);
   output s;
   output c;
   input a;
   input b;

   AND2X2 U1 (.Y(c), 
	.B(a), 
	.A(b));
   XOR2X1 U2 (.Y(s), 
	.B(a), 
	.A(b));
endmodule

module halfadder_5 (
	s, 
	c, 
	a, 
	b);
   output s;
   output c;
   input a;
   input b;

   AND2X2 U1 (.Y(c), 
	.B(a), 
	.A(b));
   XOR2X1 U2 (.Y(s), 
	.B(a), 
	.A(b));
endmodule

module fulladder_2 (
	s, 
	cout, 
	a, 
	b, 
	cin);
   output s;
   output cout;
   input a;
   input b;
   input cin;

   // Internal wires
   wire wire1;
   wire wire2;
   wire wire3;

   halfadder_5 ha1 (.s(wire1), 
	.c(wire2), 
	.a(a), 
	.b(b));
   halfadder_4 ha2 (.s(s), 
	.c(wire3), 
	.a(wire1), 
	.b(cin));
   OR2X2 U1 (.Y(cout), 
	.B(wire3), 
	.A(wire2));
endmodule

module ripplecarry4_clk (
	sum, 
	cout, 
	a, 
	b, 
	cin, 
	clk, 
	rst, 
	test_si, 
	test_so, 
	test_se);
   output [3:0] sum;
   output cout;
   input [3:0] a;
   input [3:0] b;
   input cin;
   input clk;
   input rst;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire wire0;
   wire wire1;
   wire c0_reg;
   wire wire2;
   wire c1_reg;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;

   fulladder_3 fa0 (.s(sum[0]), 
	.cout(wire0), 
	.a(n39), 
	.b(n31), 
	.cin(n29));
   fulladder_2 fa1 (.s(sum[1]), 
	.cout(wire1), 
	.a(n41), 
	.b(n33), 
	.cin(c0_reg));
   fulladder_1 fa2 (.s(sum[2]), 
	.cout(wire2), 
	.a(n43), 
	.b(n35), 
	.cin(c1_reg));
   fulladder_0 fa3 (.s(sum[3]), 
	.cout(cout), 
	.a(n45), 
	.b(n37), 
	.cin(test_so));
   DFFPOSX1_SCAN c0_reg_reg (.D(n24), 
	.TI(test_si), 
	.TE(test_se), 
	.CLK(clk), 
	.Q(c0_reg));
   DFFPOSX1_SCAN c1_reg_reg (.D(n23), 
	.TI(c0_reg), 
	.TE(test_se), 
	.CLK(clk), 
	.Q(c1_reg));
   DFFPOSX1_SCAN c2_reg_reg (.D(n22), 
	.TI(c1_reg), 
	.TE(test_se), 
	.CLK(clk), 
	.Q(test_so));
   AND2X1 U7 (.Y(n24), 
	.B(n21), 
	.A(wire0));
   AND2X1 U8 (.Y(n23), 
	.B(n21), 
	.A(wire1));
   AND2X1 U9 (.Y(n22), 
	.B(n21), 
	.A(wire2));
   INVX1 U10 (.Y(n21), 
	.A(rst));
   INVX2 U14 (.Y(n28), 
	.A(cin));
   INVX2 U15 (.Y(n29), 
	.A(n28));
   INVX2 U16 (.Y(n30), 
	.A(b[0]));
   INVX2 U17 (.Y(n31), 
	.A(n30));
   INVX2 U18 (.Y(n32), 
	.A(b[1]));
   INVX2 U19 (.Y(n33), 
	.A(n32));
   INVX2 U20 (.Y(n34), 
	.A(b[2]));
   INVX2 U21 (.Y(n35), 
	.A(n34));
   INVX2 U22 (.Y(n36), 
	.A(b[3]));
   INVX2 U23 (.Y(n37), 
	.A(n36));
   INVX2 U24 (.Y(n38), 
	.A(a[0]));
   INVX2 U25 (.Y(n39), 
	.A(n38));
   INVX2 U26 (.Y(n40), 
	.A(a[1]));
   INVX2 U27 (.Y(n41), 
	.A(n40));
   INVX2 U28 (.Y(n42), 
	.A(a[2]));
   INVX2 U29 (.Y(n43), 
	.A(n42));
   INVX2 U30 (.Y(n44), 
	.A(a[3]));
   INVX2 U31 (.Y(n45), 
	.A(n44));
endmodule

