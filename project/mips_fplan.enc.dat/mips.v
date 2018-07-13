module alucontrol (
	aluop, 
	funct, 
	alucont);
   input [1:0] aluop;
   input [5:0] funct;
   output [2:0] alucont;

   // Internal wires
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n7;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;

   INVX2 U3 (.Y(alucont[0]), 
	.A(n13));
   OAI21X1 U10 (.Y(alucont[2]), 
	.C(n8), 
	.B(n19), 
	.A(aluop[1]));
   OAI21X1 U11 (.Y(n8), 
	.C(aluop[1]), 
	.B(n10), 
	.A(n9));
   OAI21X1 U12 (.Y(n10), 
	.C(n17), 
	.B(n18), 
	.A(funct[2]));
   OAI21X1 U13 (.Y(alucont[1]), 
	.C(aluop[1]), 
	.B(n12), 
	.A(n11));
   OAI21X1 U14 (.Y(n12), 
	.C(funct[5]), 
	.B(n15), 
	.A(funct[1]));
   NAND3X1 U15 (.Y(n11), 
	.C(n18), 
	.B(n7), 
	.A(n16));
   OAI21X1 U16 (.Y(n13), 
	.C(aluop[1]), 
	.B(n14), 
	.A(n9));
   OAI21X1 U17 (.Y(n14), 
	.C(n18), 
	.B(n16), 
	.A(n17));
   NAND3X1 U18 (.Y(n9), 
	.C(funct[5]), 
	.B(n7), 
	.A(n15));
   INVX2 U4 (.Y(n7), 
	.A(funct[4]));
   INVX2 U5 (.Y(n15), 
	.A(funct[3]));
   INVX2 U6 (.Y(n16), 
	.A(funct[2]));
   INVX2 U7 (.Y(n17), 
	.A(funct[1]));
   INVX2 U8 (.Y(n18), 
	.A(funct[0]));
   INVX2 U9 (.Y(n19), 
	.A(aluop[0]));
endmodule

module mux2reg (
	d0, 
	d1, 
	s, 
	y);
   input [2:0] d0;
   input [2:0] d1;
   input s;
   output [2:0] y;

   // Internal wires
   wire n5;
   wire n6;
   wire n7;
   wire n2;

   INVX2 U1 (.Y(y[2]), 
	.A(n5));
   INVX2 U2 (.Y(y[1]), 
	.A(n6));
   INVX2 U3 (.Y(y[0]), 
	.A(n7));
   AOI22X1 U5 (.Y(n5), 
	.D(d1[2]), 
	.C(s), 
	.B(n2), 
	.A(d0[2]));
   AOI22X1 U6 (.Y(n6), 
	.D(s), 
	.C(d1[1]), 
	.B(n2), 
	.A(d0[1]));
   AOI22X1 U7 (.Y(n7), 
	.D(s), 
	.C(d1[0]), 
	.B(n2), 
	.A(d0[0]));
   INVX2 U4 (.Y(n2), 
	.A(s));
endmodule

module mux2_2 (
	d0, 
	d1, 
	s, 
	y);
   input [7:0] d0;
   input [7:0] d1;
   input s;
   output [7:0] y;

   // Internal wires
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;

   INVX2 U1 (.Y(y[7]), 
	.A(n10));
   INVX2 U2 (.Y(y[6]), 
	.A(n11));
   INVX2 U3 (.Y(y[5]), 
	.A(n12));
   INVX2 U4 (.Y(y[4]), 
	.A(n13));
   INVX2 U5 (.Y(y[3]), 
	.A(n14));
   INVX2 U6 (.Y(y[2]), 
	.A(n15));
   INVX2 U7 (.Y(y[1]), 
	.A(n16));
   INVX2 U8 (.Y(y[0]), 
	.A(n17));
   AOI22X1 U10 (.Y(n10), 
	.D(d1[7]), 
	.C(s), 
	.B(n18), 
	.A(d0[7]));
   AOI22X1 U11 (.Y(n11), 
	.D(s), 
	.C(d1[6]), 
	.B(n18), 
	.A(d0[6]));
   AOI22X1 U12 (.Y(n12), 
	.D(s), 
	.C(d1[5]), 
	.B(n18), 
	.A(d0[5]));
   AOI22X1 U13 (.Y(n13), 
	.D(s), 
	.C(d1[4]), 
	.B(n18), 
	.A(d0[4]));
   AOI22X1 U14 (.Y(n14), 
	.D(s), 
	.C(d1[3]), 
	.B(n18), 
	.A(d0[3]));
   AOI22X1 U15 (.Y(n15), 
	.D(s), 
	.C(d1[2]), 
	.B(n18), 
	.A(d0[2]));
   AOI22X1 U16 (.Y(n16), 
	.D(s), 
	.C(d1[1]), 
	.B(n18), 
	.A(d0[1]));
   AOI22X1 U17 (.Y(n17), 
	.D(s), 
	.C(d1[0]), 
	.B(n18), 
	.A(d0[0]));
   INVX2 U9 (.Y(n18), 
	.A(s));
endmodule

module mux2_1 (
	d0, 
	d1, 
	s, 
	y);
   input [7:0] d0;
   input [7:0] d1;
   input s;
   output [7:0] y;

   // Internal wires
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;

   INVX2 U1 (.Y(y[7]), 
	.A(n26));
   INVX2 U2 (.Y(y[6]), 
	.A(n25));
   INVX2 U3 (.Y(y[5]), 
	.A(n24));
   INVX2 U4 (.Y(y[4]), 
	.A(n23));
   INVX2 U5 (.Y(y[3]), 
	.A(n22));
   INVX2 U6 (.Y(y[2]), 
	.A(n21));
   INVX2 U7 (.Y(y[1]), 
	.A(n20));
   INVX2 U8 (.Y(y[0]), 
	.A(n19));
   AOI22X1 U10 (.Y(n26), 
	.D(d1[7]), 
	.C(s), 
	.B(n18), 
	.A(d0[7]));
   AOI22X1 U11 (.Y(n25), 
	.D(s), 
	.C(d1[6]), 
	.B(n18), 
	.A(d0[6]));
   AOI22X1 U12 (.Y(n24), 
	.D(s), 
	.C(d1[5]), 
	.B(n18), 
	.A(d0[5]));
   AOI22X1 U13 (.Y(n23), 
	.D(s), 
	.C(d1[4]), 
	.B(n18), 
	.A(d0[4]));
   AOI22X1 U14 (.Y(n22), 
	.D(s), 
	.C(d1[3]), 
	.B(n18), 
	.A(d0[3]));
   AOI22X1 U15 (.Y(n21), 
	.D(s), 
	.C(d1[2]), 
	.B(n18), 
	.A(d0[2]));
   AOI22X1 U16 (.Y(n20), 
	.D(s), 
	.C(d1[1]), 
	.B(n18), 
	.A(d0[1]));
   AOI22X1 U17 (.Y(n19), 
	.D(s), 
	.C(d1[0]), 
	.B(n18), 
	.A(d0[0]));
   INVX2 U9 (.Y(n18), 
	.A(s));
endmodule

module mux2_0 (
	d0, 
	d1, 
	s, 
	y);
   input [7:0] d0;
   input [7:0] d1;
   input s;
   output [7:0] y;

   // Internal wires
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;

   INVX2 U1 (.Y(y[7]), 
	.A(n26));
   INVX2 U2 (.Y(y[6]), 
	.A(n25));
   INVX2 U3 (.Y(y[5]), 
	.A(n24));
   INVX2 U4 (.Y(y[4]), 
	.A(n23));
   INVX2 U5 (.Y(y[3]), 
	.A(n22));
   INVX2 U6 (.Y(y[2]), 
	.A(n21));
   INVX2 U7 (.Y(y[1]), 
	.A(n20));
   INVX2 U8 (.Y(y[0]), 
	.A(n19));
   AOI22X1 U10 (.Y(n26), 
	.D(d1[7]), 
	.C(s), 
	.B(n18), 
	.A(d0[7]));
   AOI22X1 U11 (.Y(n25), 
	.D(s), 
	.C(d1[6]), 
	.B(n18), 
	.A(d0[6]));
   AOI22X1 U12 (.Y(n24), 
	.D(s), 
	.C(d1[5]), 
	.B(n18), 
	.A(d0[5]));
   AOI22X1 U13 (.Y(n23), 
	.D(s), 
	.C(d1[4]), 
	.B(n18), 
	.A(d0[4]));
   AOI22X1 U14 (.Y(n22), 
	.D(s), 
	.C(d1[3]), 
	.B(n18), 
	.A(d0[3]));
   AOI22X1 U15 (.Y(n21), 
	.D(s), 
	.C(d1[2]), 
	.B(n18), 
	.A(d0[2]));
   AOI22X1 U16 (.Y(n20), 
	.D(s), 
	.C(d1[1]), 
	.B(n18), 
	.A(d0[1]));
   AOI22X1 U17 (.Y(n19), 
	.D(s), 
	.C(d1[0]), 
	.B(n18), 
	.A(d0[0]));
   INVX2 U9 (.Y(n18), 
	.A(s));
endmodule

module alu_DW01_add_0 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [7:0] A;
   input [7:0] B;
   input CI;
   output [7:0] SUM;
   output CO;

   // Internal wires
   wire [7:1] carry;

   FAX1 U1_7 (.YS(SUM[7]), 
	.C(carry[7]), 
	.B(B[7]), 
	.A(A[7]));
   FAX1 U1_6 (.YS(SUM[6]), 
	.YC(carry[7]), 
	.C(carry[6]), 
	.B(B[6]), 
	.A(A[6]));
   FAX1 U1_5 (.YS(SUM[5]), 
	.YC(carry[6]), 
	.C(carry[5]), 
	.B(B[5]), 
	.A(A[5]));
   FAX1 U1_4 (.YS(SUM[4]), 
	.YC(carry[5]), 
	.C(carry[4]), 
	.B(B[4]), 
	.A(A[4]));
   FAX1 U1_3 (.YS(SUM[3]), 
	.YC(carry[4]), 
	.C(carry[3]), 
	.B(B[3]), 
	.A(A[3]));
   FAX1 U1_2 (.YS(SUM[2]), 
	.YC(carry[3]), 
	.C(carry[2]), 
	.B(B[2]), 
	.A(A[2]));
   FAX1 U1_1 (.YS(SUM[1]), 
	.YC(carry[2]), 
	.C(carry[1]), 
	.B(B[1]), 
	.A(A[1]));
   FAX1 U1_0 (.YS(SUM[0]), 
	.YC(carry[1]), 
	.C(CI), 
	.B(B[0]), 
	.A(A[0]));
endmodule

module alu (
	a, 
	b, 
	alucont, 
	result);
   input [7:0] a;
   input [7:0] b;
   input [2:0] alucont;
   output [7:0] result;

   // Internal wires
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
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
   wire n18;
   wire n19;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire [7:0] b2;
   wire [7:0] sum;

   OAI21X1 U21 (.Y(result[7]), 
	.C(n21), 
	.B(n41), 
	.A(n20));
   AOI22X1 U22 (.Y(n21), 
	.D(a[7]), 
	.C(n56), 
	.B(n22), 
	.A(b[7]));
   OAI21X1 U23 (.Y(n22), 
	.C(n23), 
	.B(n42), 
	.A(alucont[1]));
   OAI21X1 U24 (.Y(result[6]), 
	.C(n24), 
	.B(n43), 
	.A(n20));
   AOI22X1 U25 (.Y(n24), 
	.D(n56), 
	.C(a[6]), 
	.B(n25), 
	.A(b[6]));
   OAI21X1 U26 (.Y(n25), 
	.C(n23), 
	.B(n44), 
	.A(alucont[1]));
   OAI21X1 U27 (.Y(result[5]), 
	.C(n26), 
	.B(n45), 
	.A(n20));
   AOI22X1 U28 (.Y(n26), 
	.D(n56), 
	.C(a[5]), 
	.B(n27), 
	.A(b[5]));
   OAI21X1 U29 (.Y(n27), 
	.C(n23), 
	.B(n46), 
	.A(alucont[1]));
   OAI21X1 U30 (.Y(result[4]), 
	.C(n28), 
	.B(n47), 
	.A(n20));
   AOI22X1 U31 (.Y(n28), 
	.D(n56), 
	.C(a[4]), 
	.B(n29), 
	.A(b[4]));
   OAI21X1 U32 (.Y(n29), 
	.C(n23), 
	.B(n48), 
	.A(alucont[1]));
   OAI21X1 U33 (.Y(result[3]), 
	.C(n30), 
	.B(n49), 
	.A(n20));
   AOI22X1 U34 (.Y(n30), 
	.D(n56), 
	.C(a[3]), 
	.B(n31), 
	.A(b[3]));
   OAI21X1 U35 (.Y(n31), 
	.C(n23), 
	.B(n50), 
	.A(alucont[1]));
   OAI21X1 U36 (.Y(result[2]), 
	.C(n32), 
	.B(n51), 
	.A(n20));
   AOI22X1 U37 (.Y(n32), 
	.D(n56), 
	.C(a[2]), 
	.B(n33), 
	.A(b[2]));
   OAI21X1 U38 (.Y(n33), 
	.C(n23), 
	.B(n52), 
	.A(alucont[1]));
   OAI21X1 U39 (.Y(result[1]), 
	.C(n34), 
	.B(n53), 
	.A(n20));
   AOI22X1 U40 (.Y(n34), 
	.D(n56), 
	.C(a[1]), 
	.B(n35), 
	.A(b[1]));
   OAI21X1 U41 (.Y(n35), 
	.C(n23), 
	.B(n54), 
	.A(alucont[1]));
   NAND2X1 U42 (.Y(result[0]), 
	.B(n37), 
	.A(n36));
   AOI22X1 U43 (.Y(n37), 
	.D(n39), 
	.C(b[0]), 
	.B(sum[7]), 
	.A(n38));
   OAI21X1 U44 (.Y(n39), 
	.C(n23), 
	.B(n55), 
	.A(alucont[1]));
   NOR2X1 U45 (.Y(n38), 
	.B(n18), 
	.A(n58));
   AOI22X1 U46 (.Y(n36), 
	.D(n57), 
	.C(sum[0]), 
	.B(n56), 
	.A(a[0]));
   NAND2X1 U47 (.Y(n20), 
	.B(n58), 
	.A(alucont[1]));
   NAND2X1 U48 (.Y(n23), 
	.B(n18), 
	.A(alucont[0]));
   XOR2X1 U49 (.Y(b2[7]), 
	.B(alucont[2]), 
	.A(b[7]));
   XOR2X1 U50 (.Y(b2[6]), 
	.B(alucont[2]), 
	.A(b[6]));
   XOR2X1 U51 (.Y(b2[5]), 
	.B(alucont[2]), 
	.A(b[5]));
   XOR2X1 U52 (.Y(b2[4]), 
	.B(n40), 
	.A(b[4]));
   XOR2X1 U53 (.Y(b2[3]), 
	.B(n40), 
	.A(b[3]));
   XOR2X1 U54 (.Y(b2[2]), 
	.B(n40), 
	.A(b[2]));
   XOR2X1 U55 (.Y(b2[1]), 
	.B(n40), 
	.A(b[1]));
   XOR2X1 U56 (.Y(b2[0]), 
	.B(n40), 
	.A(b[0]));
   alu_DW01_add_0 add_1_root_add_317_2 (.A({ a[7],
		a[6],
		a[5],
		a[4],
		a[3],
		a[2],
		a[1],
		a[0] }), 
	.B({ b2[7],
		b2[6],
		b2[5],
		b2[4],
		b2[3],
		b2[2],
		b2[1],
		b2[0] }), 
	.CI(n40), 
	.SUM({ sum[7],
		sum[6],
		sum[5],
		sum[4],
		sum[3],
		sum[2],
		sum[1],
		sum[0] }));
   INVX2 U2 (.Y(n40), 
	.A(n19));
   INVX2 U3 (.Y(n19), 
	.A(alucont[2]));
   INVX2 U4 (.Y(n18), 
	.A(alucont[1]));
   INVX2 U5 (.Y(n41), 
	.A(sum[7]));
   INVX2 U6 (.Y(n42), 
	.A(a[7]));
   INVX2 U7 (.Y(n43), 
	.A(sum[6]));
   INVX2 U8 (.Y(n44), 
	.A(a[6]));
   INVX2 U9 (.Y(n45), 
	.A(sum[5]));
   INVX2 U10 (.Y(n46), 
	.A(a[5]));
   INVX2 U11 (.Y(n47), 
	.A(sum[4]));
   INVX2 U12 (.Y(n48), 
	.A(a[4]));
   INVX2 U13 (.Y(n49), 
	.A(sum[3]));
   INVX2 U14 (.Y(n50), 
	.A(a[3]));
   INVX2 U15 (.Y(n51), 
	.A(sum[2]));
   INVX2 U16 (.Y(n52), 
	.A(a[2]));
   INVX2 U17 (.Y(n53), 
	.A(sum[1]));
   INVX2 U18 (.Y(n54), 
	.A(a[1]));
   INVX2 U19 (.Y(n55), 
	.A(a[0]));
   INVX2 U20 (.Y(n56), 
	.A(n23));
   INVX2 U57 (.Y(n57), 
	.A(n20));
   INVX2 U58 (.Y(n58), 
	.A(alucont[0]));
endmodule

module zerodetect (
	a, 
	y);
   input [7:0] a;
   output y;

   // Internal wires
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;

   NOR2X1 U1 (.Y(y), 
	.B(n2), 
	.A(n1));
   NAND2X1 U2 (.Y(n2), 
	.B(n4), 
	.A(n3));
   NOR2X1 U3 (.Y(n4), 
	.B(a[2]), 
	.A(a[3]));
   NOR2X1 U4 (.Y(n3), 
	.B(a[0]), 
	.A(a[1]));
   NAND2X1 U5 (.Y(n1), 
	.B(n6), 
	.A(n5));
   NOR2X1 U6 (.Y(n6), 
	.B(a[6]), 
	.A(a[7]));
   NOR2X1 U7 (.Y(n5), 
	.B(a[4]), 
	.A(a[5]));
endmodule

module flop_test_0 (
	clk, 
	d, 
	q, 
	test_si, 
	test_se);
   input clk;
   input [7:0] d;
   output [7:0] q;
   input test_si;
   input test_se;

   DFFPOSX1_SCAN q_reg_7_ (.TI(q[6]), 
	.TE(test_se), 
	.Q(q[7]), 
	.D(d[7]), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_6_ (.TI(q[5]), 
	.TE(test_se), 
	.Q(q[6]), 
	.D(d[6]), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_5_ (.TI(q[4]), 
	.TE(test_se), 
	.Q(q[5]), 
	.D(d[5]), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_4_ (.TI(q[3]), 
	.TE(test_se), 
	.Q(q[4]), 
	.D(d[4]), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_3_ (.TI(q[2]), 
	.TE(test_se), 
	.Q(q[3]), 
	.D(d[3]), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_2_ (.TI(q[1]), 
	.TE(test_se), 
	.Q(q[2]), 
	.D(d[2]), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_1_ (.TI(q[0]), 
	.TE(test_se), 
	.Q(q[1]), 
	.D(d[1]), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_0_ (.TI(test_si), 
	.TE(test_se), 
	.Q(q[0]), 
	.D(d[0]), 
	.CLK(clk));
endmodule

module flopen_test_0 (
	clk, 
	en, 
	d, 
	q, 
	test_si, 
	test_se);
   input clk;
   input en;
   input [7:0] d;
   output [7:0] q;
   input test_si;
   input test_se;

   // Internal wires
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n42;

   AOI22X1 U11 (.Y(n10), 
	.D(n42), 
	.C(q[7]), 
	.B(d[7]), 
	.A(en));
   AOI22X1 U12 (.Y(n11), 
	.D(n42), 
	.C(q[6]), 
	.B(en), 
	.A(d[6]));
   AOI22X1 U13 (.Y(n12), 
	.D(n42), 
	.C(q[5]), 
	.B(en), 
	.A(d[5]));
   AOI22X1 U14 (.Y(n13), 
	.D(n42), 
	.C(q[4]), 
	.B(en), 
	.A(d[4]));
   AOI22X1 U15 (.Y(n14), 
	.D(n42), 
	.C(q[3]), 
	.B(en), 
	.A(d[3]));
   AOI22X1 U16 (.Y(n15), 
	.D(n42), 
	.C(q[2]), 
	.B(en), 
	.A(d[2]));
   AOI22X1 U17 (.Y(n16), 
	.D(n42), 
	.C(q[1]), 
	.B(en), 
	.A(d[1]));
   AOI22X1 U18 (.Y(n17), 
	.D(n42), 
	.C(q[0]), 
	.B(en), 
	.A(d[0]));
   DFFPOSX1_SCAN q_reg_7_ (.TI(q[6]), 
	.TE(test_se), 
	.Q(q[7]), 
	.D(n33), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_6_ (.TI(q[5]), 
	.TE(test_se), 
	.Q(q[6]), 
	.D(n32), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_5_ (.TI(q[4]), 
	.TE(test_se), 
	.Q(q[5]), 
	.D(n31), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_4_ (.TI(q[3]), 
	.TE(test_se), 
	.Q(q[4]), 
	.D(n30), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_3_ (.TI(q[2]), 
	.TE(test_se), 
	.Q(q[3]), 
	.D(n29), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_2_ (.TI(q[1]), 
	.TE(test_se), 
	.Q(q[2]), 
	.D(n28), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_1_ (.TI(q[0]), 
	.TE(test_se), 
	.Q(q[1]), 
	.D(n27), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_0_ (.TI(test_si), 
	.TE(test_se), 
	.Q(q[0]), 
	.D(n26), 
	.CLK(clk));
   INVX2 U10 (.Y(n33), 
	.A(n10));
   INVX2 U19 (.Y(n32), 
	.A(n11));
   INVX2 U20 (.Y(n31), 
	.A(n12));
   INVX2 U21 (.Y(n30), 
	.A(n13));
   INVX2 U22 (.Y(n29), 
	.A(n14));
   INVX2 U23 (.Y(n28), 
	.A(n15));
   INVX2 U24 (.Y(n27), 
	.A(n16));
   INVX2 U25 (.Y(n26), 
	.A(n17));
   INVX2 U26 (.Y(n42), 
	.A(en));
endmodule

module flopen_test_1 (
	clk, 
	en, 
	d, 
	q, 
	test_si, 
	test_se);
   input clk;
   input en;
   input [7:0] d;
   output [7:0] q;
   input test_si;
   input test_se;

   // Internal wires
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;

   AOI22X1 U11 (.Y(n50), 
	.D(n42), 
	.C(q[7]), 
	.B(d[7]), 
	.A(en));
   AOI22X1 U12 (.Y(n49), 
	.D(n42), 
	.C(q[6]), 
	.B(en), 
	.A(d[6]));
   AOI22X1 U13 (.Y(n48), 
	.D(n42), 
	.C(q[5]), 
	.B(en), 
	.A(d[5]));
   AOI22X1 U14 (.Y(n47), 
	.D(n42), 
	.C(q[4]), 
	.B(en), 
	.A(d[4]));
   AOI22X1 U15 (.Y(n46), 
	.D(n42), 
	.C(q[3]), 
	.B(en), 
	.A(d[3]));
   AOI22X1 U16 (.Y(n45), 
	.D(n42), 
	.C(q[2]), 
	.B(en), 
	.A(d[2]));
   AOI22X1 U17 (.Y(n44), 
	.D(n42), 
	.C(q[1]), 
	.B(en), 
	.A(d[1]));
   AOI22X1 U18 (.Y(n43), 
	.D(n42), 
	.C(q[0]), 
	.B(en), 
	.A(d[0]));
   DFFPOSX1_SCAN q_reg_7_ (.TI(q[6]), 
	.TE(test_se), 
	.Q(q[7]), 
	.D(n33), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_6_ (.TI(q[5]), 
	.TE(test_se), 
	.Q(q[6]), 
	.D(n32), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_5_ (.TI(q[4]), 
	.TE(test_se), 
	.Q(q[5]), 
	.D(n31), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_4_ (.TI(q[3]), 
	.TE(test_se), 
	.Q(q[4]), 
	.D(n30), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_3_ (.TI(q[2]), 
	.TE(test_se), 
	.Q(q[3]), 
	.D(n29), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_2_ (.TI(q[1]), 
	.TE(test_se), 
	.Q(q[2]), 
	.D(n28), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_1_ (.TI(q[0]), 
	.TE(test_se), 
	.Q(q[1]), 
	.D(n27), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_0_ (.TI(test_si), 
	.TE(test_se), 
	.Q(q[0]), 
	.D(n26), 
	.CLK(clk));
   INVX2 U10 (.Y(n33), 
	.A(n50));
   INVX2 U19 (.Y(n32), 
	.A(n49));
   INVX2 U20 (.Y(n31), 
	.A(n48));
   INVX2 U21 (.Y(n30), 
	.A(n47));
   INVX2 U22 (.Y(n29), 
	.A(n46));
   INVX2 U23 (.Y(n28), 
	.A(n45));
   INVX2 U24 (.Y(n27), 
	.A(n44));
   INVX2 U25 (.Y(n26), 
	.A(n43));
   INVX2 U26 (.Y(n42), 
	.A(en));
endmodule

module flopen_test_2 (
	clk, 
	en, 
	d, 
	q, 
	test_si, 
	test_se);
   input clk;
   input en;
   input [7:0] d;
   output [7:0] q;
   input test_si;
   input test_se;

   // Internal wires
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;

   AOI22X1 U11 (.Y(n50), 
	.D(n42), 
	.C(q[7]), 
	.B(d[7]), 
	.A(en));
   AOI22X1 U12 (.Y(n49), 
	.D(n42), 
	.C(q[6]), 
	.B(en), 
	.A(d[6]));
   AOI22X1 U13 (.Y(n48), 
	.D(n42), 
	.C(q[5]), 
	.B(en), 
	.A(d[5]));
   AOI22X1 U14 (.Y(n47), 
	.D(n42), 
	.C(q[4]), 
	.B(en), 
	.A(d[4]));
   AOI22X1 U15 (.Y(n46), 
	.D(n42), 
	.C(q[3]), 
	.B(en), 
	.A(d[3]));
   AOI22X1 U16 (.Y(n45), 
	.D(n42), 
	.C(q[2]), 
	.B(en), 
	.A(d[2]));
   AOI22X1 U17 (.Y(n44), 
	.D(n42), 
	.C(q[1]), 
	.B(en), 
	.A(d[1]));
   AOI22X1 U18 (.Y(n43), 
	.D(n42), 
	.C(q[0]), 
	.B(en), 
	.A(d[0]));
   DFFPOSX1_SCAN q_reg_7_ (.TI(q[6]), 
	.TE(test_se), 
	.Q(q[7]), 
	.D(n33), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_6_ (.TI(q[5]), 
	.TE(test_se), 
	.Q(q[6]), 
	.D(n32), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_5_ (.TI(q[4]), 
	.TE(test_se), 
	.Q(q[5]), 
	.D(n31), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_4_ (.TI(q[3]), 
	.TE(test_se), 
	.Q(q[4]), 
	.D(n30), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_3_ (.TI(q[2]), 
	.TE(test_se), 
	.Q(q[3]), 
	.D(n29), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_2_ (.TI(q[1]), 
	.TE(test_se), 
	.Q(q[2]), 
	.D(n28), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_1_ (.TI(q[0]), 
	.TE(test_se), 
	.Q(q[1]), 
	.D(n27), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_0_ (.TI(test_si), 
	.TE(test_se), 
	.Q(q[0]), 
	.D(n26), 
	.CLK(clk));
   INVX2 U10 (.Y(n33), 
	.A(n50));
   INVX2 U19 (.Y(n32), 
	.A(n49));
   INVX2 U20 (.Y(n31), 
	.A(n48));
   INVX2 U21 (.Y(n30), 
	.A(n47));
   INVX2 U22 (.Y(n29), 
	.A(n46));
   INVX2 U23 (.Y(n28), 
	.A(n45));
   INVX2 U24 (.Y(n27), 
	.A(n44));
   INVX2 U25 (.Y(n26), 
	.A(n43));
   INVX2 U26 (.Y(n42), 
	.A(en));
endmodule

module flopen_test_3 (
	clk, 
	en, 
	d, 
	q, 
	test_si, 
	test_se);
   input clk;
   input en;
   input [7:0] d;
   output [7:0] q;
   input test_si;
   input test_se;

   // Internal wires
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;

   AOI22X1 U11 (.Y(n50), 
	.D(n42), 
	.C(q[7]), 
	.B(d[7]), 
	.A(en));
   AOI22X1 U12 (.Y(n49), 
	.D(n42), 
	.C(q[6]), 
	.B(en), 
	.A(d[6]));
   AOI22X1 U13 (.Y(n48), 
	.D(n42), 
	.C(q[5]), 
	.B(en), 
	.A(d[5]));
   AOI22X1 U14 (.Y(n47), 
	.D(n42), 
	.C(q[4]), 
	.B(en), 
	.A(d[4]));
   AOI22X1 U15 (.Y(n46), 
	.D(n42), 
	.C(q[3]), 
	.B(en), 
	.A(d[3]));
   AOI22X1 U16 (.Y(n45), 
	.D(n42), 
	.C(q[2]), 
	.B(en), 
	.A(d[2]));
   AOI22X1 U17 (.Y(n44), 
	.D(n42), 
	.C(q[1]), 
	.B(en), 
	.A(d[1]));
   AOI22X1 U18 (.Y(n43), 
	.D(n42), 
	.C(q[0]), 
	.B(en), 
	.A(d[0]));
   DFFPOSX1_SCAN q_reg_7_ (.TI(q[6]), 
	.TE(test_se), 
	.Q(q[7]), 
	.D(n33), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_6_ (.TI(q[5]), 
	.TE(test_se), 
	.Q(q[6]), 
	.D(n32), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_5_ (.TI(q[4]), 
	.TE(test_se), 
	.Q(q[5]), 
	.D(n31), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_4_ (.TI(q[3]), 
	.TE(test_se), 
	.Q(q[4]), 
	.D(n30), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_3_ (.TI(q[2]), 
	.TE(test_se), 
	.Q(q[3]), 
	.D(n29), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_2_ (.TI(q[1]), 
	.TE(test_se), 
	.Q(q[2]), 
	.D(n28), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_1_ (.TI(q[0]), 
	.TE(test_se), 
	.Q(q[1]), 
	.D(n27), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_0_ (.TI(test_si), 
	.TE(test_se), 
	.Q(q[0]), 
	.D(n26), 
	.CLK(clk));
   INVX2 U10 (.Y(n33), 
	.A(n50));
   INVX2 U19 (.Y(n32), 
	.A(n49));
   INVX2 U20 (.Y(n31), 
	.A(n48));
   INVX2 U21 (.Y(n30), 
	.A(n47));
   INVX2 U22 (.Y(n29), 
	.A(n46));
   INVX2 U23 (.Y(n28), 
	.A(n45));
   INVX2 U24 (.Y(n27), 
	.A(n44));
   INVX2 U25 (.Y(n26), 
	.A(n43));
   INVX2 U26 (.Y(n42), 
	.A(en));
endmodule

module flop_test_1 (
	clk, 
	d, 
	q, 
	test_si, 
	test_se);
   input clk;
   input [7:0] d;
   output [7:0] q;
   input test_si;
   input test_se;

   DFFPOSX1_SCAN q_reg_7_ (.TI(q[6]), 
	.TE(test_se), 
	.Q(q[7]), 
	.D(d[7]), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_6_ (.TI(q[5]), 
	.TE(test_se), 
	.Q(q[6]), 
	.D(d[6]), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_5_ (.TI(q[4]), 
	.TE(test_se), 
	.Q(q[5]), 
	.D(d[5]), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_4_ (.TI(q[3]), 
	.TE(test_se), 
	.Q(q[4]), 
	.D(d[4]), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_3_ (.TI(q[2]), 
	.TE(test_se), 
	.Q(q[3]), 
	.D(d[3]), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_2_ (.TI(q[1]), 
	.TE(test_se), 
	.Q(q[2]), 
	.D(d[2]), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_1_ (.TI(q[0]), 
	.TE(test_se), 
	.Q(q[1]), 
	.D(d[1]), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_0_ (.TI(test_si), 
	.TE(test_se), 
	.Q(q[0]), 
	.D(d[0]), 
	.CLK(clk));
endmodule

module flopenr_test_1 (
	clk, 
	reset, 
	en, 
	d, 
	q, 
	test_si, 
	test_se);
   input clk;
   input reset;
   input en;
   input [7:0] d;
   output [7:0] q;
   input test_si;
   input test_se;

   // Internal wires
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n36;

   AOI22X1 U11 (.Y(n10), 
	.D(n12), 
	.C(d[7]), 
	.B(n11), 
	.A(q[7]));
   AOI22X1 U12 (.Y(n13), 
	.D(n12), 
	.C(d[6]), 
	.B(n11), 
	.A(q[6]));
   AOI22X1 U13 (.Y(n14), 
	.D(n12), 
	.C(d[5]), 
	.B(n11), 
	.A(q[5]));
   AOI22X1 U14 (.Y(n15), 
	.D(n12), 
	.C(d[4]), 
	.B(n11), 
	.A(q[4]));
   AOI22X1 U15 (.Y(n16), 
	.D(n12), 
	.C(d[3]), 
	.B(n11), 
	.A(q[3]));
   AOI22X1 U16 (.Y(n17), 
	.D(n12), 
	.C(d[2]), 
	.B(n11), 
	.A(q[2]));
   AOI22X1 U17 (.Y(n18), 
	.D(n12), 
	.C(d[1]), 
	.B(n11), 
	.A(q[1]));
   AOI22X1 U18 (.Y(n19), 
	.D(n12), 
	.C(d[0]), 
	.B(n11), 
	.A(q[0]));
   NOR2X1 U19 (.Y(n11), 
	.B(reset), 
	.A(n12));
   NOR2X1 U20 (.Y(n12), 
	.B(reset), 
	.A(n36));
   DFFPOSX1_SCAN q_reg_7_ (.TI(q[6]), 
	.TE(test_se), 
	.Q(q[7]), 
	.D(n27), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_6_ (.TI(q[5]), 
	.TE(test_se), 
	.Q(q[6]), 
	.D(n26), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_5_ (.TI(q[4]), 
	.TE(test_se), 
	.Q(q[5]), 
	.D(n25), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_4_ (.TI(q[3]), 
	.TE(test_se), 
	.Q(q[4]), 
	.D(n24), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_3_ (.TI(q[2]), 
	.TE(test_se), 
	.Q(q[3]), 
	.D(n23), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_2_ (.TI(q[1]), 
	.TE(test_se), 
	.Q(q[2]), 
	.D(n22), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_1_ (.TI(q[0]), 
	.TE(test_se), 
	.Q(q[1]), 
	.D(n21), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_0_ (.TI(test_si), 
	.TE(test_se), 
	.Q(q[0]), 
	.D(n20), 
	.CLK(clk));
   INVX2 U10 (.Y(n20), 
	.A(n19));
   INVX2 U21 (.Y(n21), 
	.A(n18));
   INVX2 U22 (.Y(n22), 
	.A(n17));
   INVX2 U23 (.Y(n23), 
	.A(n16));
   INVX2 U24 (.Y(n24), 
	.A(n15));
   INVX2 U25 (.Y(n25), 
	.A(n14));
   INVX2 U26 (.Y(n26), 
	.A(n13));
   INVX2 U27 (.Y(n27), 
	.A(n10));
   INVX2 U28 (.Y(n36), 
	.A(en));
endmodule

module flop_test_2 (
	clk, 
	d, 
	q, 
	test_si, 
	test_se);
   input clk;
   input [7:0] d;
   output [7:0] q;
   input test_si;
   input test_se;

   DFFPOSX1_SCAN q_reg_7_ (.TI(q[6]), 
	.TE(test_se), 
	.Q(q[7]), 
	.D(d[7]), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_6_ (.TI(q[5]), 
	.TE(test_se), 
	.Q(q[6]), 
	.D(d[6]), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_5_ (.TI(q[4]), 
	.TE(test_se), 
	.Q(q[5]), 
	.D(d[5]), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_4_ (.TI(q[3]), 
	.TE(test_se), 
	.Q(q[4]), 
	.D(d[4]), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_3_ (.TI(q[2]), 
	.TE(test_se), 
	.Q(q[3]), 
	.D(d[3]), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_2_ (.TI(q[1]), 
	.TE(test_se), 
	.Q(q[2]), 
	.D(d[2]), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_1_ (.TI(q[0]), 
	.TE(test_se), 
	.Q(q[1]), 
	.D(d[1]), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_0_ (.TI(test_si), 
	.TE(test_se), 
	.Q(q[0]), 
	.D(d[0]), 
	.CLK(clk));
endmodule

module regfile_test_1 (
	clk, 
	regwrite, 
	ra1, 
	ra2, 
	wa, 
	wd, 
	rd1, 
	rd2, 
	test_si, 
	test_so, 
	test_se);
   input clk;
   input regwrite;
   input [2:0] ra1;
   input [2:0] ra2;
   input [2:0] wa;
   input [7:0] wd;
   output [7:0] rd1;
   output [7:0] rd2;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire RAM_62_;
   wire RAM_61_;
   wire RAM_60_;
   wire RAM_59_;
   wire RAM_58_;
   wire RAM_57_;
   wire RAM_56_;
   wire RAM_55_;
   wire RAM_54_;
   wire RAM_53_;
   wire RAM_52_;
   wire RAM_51_;
   wire RAM_50_;
   wire RAM_49_;
   wire RAM_48_;
   wire RAM_47_;
   wire RAM_46_;
   wire RAM_45_;
   wire RAM_44_;
   wire RAM_43_;
   wire RAM_42_;
   wire RAM_41_;
   wire RAM_40_;
   wire RAM_39_;
   wire RAM_38_;
   wire RAM_37_;
   wire RAM_36_;
   wire RAM_35_;
   wire RAM_34_;
   wire RAM_33_;
   wire RAM_32_;
   wire RAM_31_;
   wire RAM_30_;
   wire RAM_29_;
   wire RAM_28_;
   wire RAM_27_;
   wire RAM_26_;
   wire RAM_25_;
   wire RAM_24_;
   wire RAM_23_;
   wire RAM_22_;
   wire RAM_21_;
   wire RAM_20_;
   wire RAM_19_;
   wire RAM_18_;
   wire RAM_17_;
   wire RAM_16_;
   wire RAM_15_;
   wire RAM_14_;
   wire RAM_13_;
   wire RAM_12_;
   wire RAM_11_;
   wire RAM_10_;
   wire RAM_9_;
   wire RAM_8_;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n192;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire n205;
   wire n206;
   wire n207;
   wire n208;
   wire n209;
   wire n210;
   wire n211;
   wire n212;
   wire n213;
   wire n214;
   wire n215;
   wire n216;
   wire n217;
   wire n218;
   wire n219;
   wire n220;
   wire n221;
   wire n222;
   wire n223;
   wire n224;
   wire n225;
   wire n226;
   wire n227;
   wire n228;
   wire n229;
   wire n230;
   wire n231;
   wire n232;
   wire n233;
   wire n234;
   wire n235;
   wire n236;
   wire n237;
   wire n238;
   wire n239;
   wire n240;
   wire n241;
   wire n242;
   wire n243;
   wire n244;
   wire n245;
   wire n246;
   wire n247;
   wire n248;
   wire n249;
   wire n250;
   wire n251;
   wire n252;
   wire n253;
   wire n254;
   wire n255;
   wire n256;
   wire n257;
   wire n258;
   wire n259;
   wire n260;
   wire n261;
   wire n262;
   wire n263;
   wire n264;
   wire n265;
   wire n266;
   wire n267;
   wire n268;
   wire n269;
   wire n286;
   wire n287;
   wire n288;
   wire n289;
   wire n290;
   wire n291;
   wire n292;
   wire n293;
   wire n294;
   wire n295;
   wire n296;
   wire n297;
   wire n298;
   wire n299;
   wire n300;
   wire n301;
   wire n302;
   wire n303;
   wire n304;
   wire n305;
   wire n306;
   wire n307;
   wire n308;
   wire n309;
   wire n310;
   wire n311;
   wire n312;
   wire n313;
   wire n314;
   wire n315;
   wire n316;
   wire n317;
   wire n318;
   wire n319;
   wire n320;
   wire n321;
   wire n322;
   wire n323;
   wire n324;
   wire n325;
   wire n326;
   wire n327;
   wire n328;
   wire n329;
   wire n330;
   wire n331;
   wire n332;
   wire n333;
   wire n334;
   wire n335;
   wire n336;
   wire n337;
   wire n338;
   wire n339;
   wire n340;
   wire n341;
   wire n342;
   wire n343;
   wire n344;
   wire n345;
   wire n346;
   wire n347;
   wire n348;
   wire n349;
   wire n350;
   wire n351;
   wire n352;
   wire n409;
   wire n410;
   wire n411;
   wire n412;
   wire n413;
   wire n414;
   wire n415;
   wire n416;
   wire n417;
   wire n418;
   wire n419;
   wire n420;
   wire n421;
   wire n422;
   wire n423;
   wire n424;
   wire n425;
   wire n426;
   wire n427;
   wire n428;
   wire n429;
   wire n430;
   wire n431;
   wire n432;
   wire n433;

   AND2X2 U2 (.Y(n226), 
	.B(regwrite), 
	.A(wa[2]));
   NOR2X1 U85 (.Y(rd2[7]), 
	.B(n84), 
	.A(n83));
   OAI21X1 U86 (.Y(n84), 
	.C(n86), 
	.B(n85), 
	.A(RAM_15_));
   OAI21X1 U87 (.Y(n86), 
	.C(n291), 
	.B(n88), 
	.A(n87));
   OAI22X1 U88 (.Y(n88), 
	.D(n304), 
	.C(RAM_31_), 
	.B(n303), 
	.A(RAM_47_));
   NOR2X1 U89 (.Y(n87), 
	.B(n422), 
	.A(test_so));
   OAI21X1 U90 (.Y(n83), 
	.C(n92), 
	.B(n91), 
	.A(n291));
   AOI21X1 U91 (.Y(n91), 
	.C(n94), 
	.B(n425), 
	.A(n93));
   OAI22X1 U92 (.Y(n94), 
	.D(n304), 
	.C(RAM_23_), 
	.B(n303), 
	.A(RAM_39_));
   NOR2X1 U93 (.Y(rd2[6]), 
	.B(n96), 
	.A(n95));
   OAI21X1 U94 (.Y(n96), 
	.C(n97), 
	.B(n85), 
	.A(RAM_14_));
   OAI21X1 U95 (.Y(n97), 
	.C(n291), 
	.B(n99), 
	.A(n98));
   OAI22X1 U96 (.Y(n99), 
	.D(n304), 
	.C(RAM_30_), 
	.B(n303), 
	.A(RAM_46_));
   NOR2X1 U97 (.Y(n98), 
	.B(n422), 
	.A(RAM_62_));
   OAI21X1 U98 (.Y(n95), 
	.C(n92), 
	.B(n100), 
	.A(n291));
   AOI21X1 U99 (.Y(n100), 
	.C(n101), 
	.B(n426), 
	.A(n93));
   OAI22X1 U100 (.Y(n101), 
	.D(n304), 
	.C(RAM_22_), 
	.B(n303), 
	.A(RAM_38_));
   NOR2X1 U101 (.Y(rd2[5]), 
	.B(n103), 
	.A(n102));
   OAI21X1 U102 (.Y(n103), 
	.C(n104), 
	.B(n85), 
	.A(RAM_13_));
   OAI21X1 U103 (.Y(n104), 
	.C(n291), 
	.B(n106), 
	.A(n105));
   OAI22X1 U104 (.Y(n106), 
	.D(n304), 
	.C(RAM_29_), 
	.B(n303), 
	.A(RAM_45_));
   NOR2X1 U105 (.Y(n105), 
	.B(n422), 
	.A(RAM_61_));
   OAI21X1 U106 (.Y(n102), 
	.C(n92), 
	.B(n107), 
	.A(ra2[0]));
   AOI21X1 U107 (.Y(n107), 
	.C(n108), 
	.B(n427), 
	.A(n93));
   OAI22X1 U108 (.Y(n108), 
	.D(n304), 
	.C(RAM_21_), 
	.B(n303), 
	.A(RAM_37_));
   NOR2X1 U109 (.Y(rd2[4]), 
	.B(n110), 
	.A(n109));
   OAI21X1 U110 (.Y(n110), 
	.C(n111), 
	.B(n85), 
	.A(RAM_12_));
   OAI21X1 U111 (.Y(n111), 
	.C(n291), 
	.B(n113), 
	.A(n112));
   OAI22X1 U112 (.Y(n113), 
	.D(n304), 
	.C(RAM_28_), 
	.B(n303), 
	.A(RAM_44_));
   NOR2X1 U113 (.Y(n112), 
	.B(n422), 
	.A(RAM_60_));
   OAI21X1 U114 (.Y(n109), 
	.C(n92), 
	.B(n114), 
	.A(ra2[0]));
   AOI21X1 U115 (.Y(n114), 
	.C(n115), 
	.B(n428), 
	.A(n93));
   OAI22X1 U116 (.Y(n115), 
	.D(n304), 
	.C(RAM_20_), 
	.B(n303), 
	.A(RAM_36_));
   NOR2X1 U117 (.Y(rd2[3]), 
	.B(n117), 
	.A(n116));
   OAI21X1 U118 (.Y(n117), 
	.C(n118), 
	.B(n85), 
	.A(RAM_11_));
   OAI21X1 U119 (.Y(n118), 
	.C(n291), 
	.B(n120), 
	.A(n119));
   OAI22X1 U120 (.Y(n120), 
	.D(n304), 
	.C(RAM_27_), 
	.B(n303), 
	.A(RAM_43_));
   NOR2X1 U121 (.Y(n119), 
	.B(n422), 
	.A(RAM_59_));
   OAI21X1 U122 (.Y(n116), 
	.C(n92), 
	.B(n121), 
	.A(ra2[0]));
   AOI21X1 U123 (.Y(n121), 
	.C(n122), 
	.B(n429), 
	.A(n93));
   OAI22X1 U124 (.Y(n122), 
	.D(n304), 
	.C(RAM_19_), 
	.B(n303), 
	.A(RAM_35_));
   NOR2X1 U125 (.Y(rd2[2]), 
	.B(n124), 
	.A(n123));
   OAI21X1 U126 (.Y(n124), 
	.C(n125), 
	.B(n85), 
	.A(RAM_10_));
   OAI21X1 U127 (.Y(n125), 
	.C(n291), 
	.B(n127), 
	.A(n126));
   OAI22X1 U128 (.Y(n127), 
	.D(n304), 
	.C(RAM_26_), 
	.B(n303), 
	.A(RAM_42_));
   NOR2X1 U129 (.Y(n126), 
	.B(n422), 
	.A(RAM_58_));
   OAI21X1 U130 (.Y(n123), 
	.C(n92), 
	.B(n128), 
	.A(ra2[0]));
   AOI21X1 U131 (.Y(n128), 
	.C(n129), 
	.B(n430), 
	.A(n93));
   OAI22X1 U132 (.Y(n129), 
	.D(n304), 
	.C(RAM_18_), 
	.B(n303), 
	.A(RAM_34_));
   NOR2X1 U133 (.Y(rd2[1]), 
	.B(n131), 
	.A(n130));
   OAI21X1 U134 (.Y(n131), 
	.C(n132), 
	.B(n85), 
	.A(RAM_9_));
   OAI21X1 U135 (.Y(n132), 
	.C(n291), 
	.B(n134), 
	.A(n133));
   OAI22X1 U136 (.Y(n134), 
	.D(n304), 
	.C(RAM_25_), 
	.B(n303), 
	.A(RAM_41_));
   NOR2X1 U137 (.Y(n133), 
	.B(n422), 
	.A(RAM_57_));
   OAI21X1 U138 (.Y(n130), 
	.C(n92), 
	.B(n135), 
	.A(n291));
   AOI21X1 U139 (.Y(n135), 
	.C(n136), 
	.B(n431), 
	.A(n93));
   OAI22X1 U140 (.Y(n136), 
	.D(n304), 
	.C(RAM_17_), 
	.B(n303), 
	.A(RAM_33_));
   NOR2X1 U141 (.Y(rd2[0]), 
	.B(n146), 
	.A(n137));
   OAI21X1 U142 (.Y(n146), 
	.C(n147), 
	.B(n85), 
	.A(RAM_8_));
   OAI21X1 U143 (.Y(n147), 
	.C(n291), 
	.B(n149), 
	.A(n148));
   OAI22X1 U144 (.Y(n149), 
	.D(n304), 
	.C(RAM_24_), 
	.B(n303), 
	.A(RAM_40_));
   NOR2X1 U145 (.Y(n148), 
	.B(n422), 
	.A(RAM_56_));
   NAND2X1 U146 (.Y(n85), 
	.B(n423), 
	.A(n424));
   OAI21X1 U147 (.Y(n137), 
	.C(n92), 
	.B(n150), 
	.A(n291));
   NAND3X1 U148 (.Y(n92), 
	.C(n290), 
	.B(n423), 
	.A(n424));
   AOI21X1 U149 (.Y(n150), 
	.C(n151), 
	.B(n432), 
	.A(n93));
   OAI22X1 U150 (.Y(n151), 
	.D(n304), 
	.C(RAM_16_), 
	.B(n303), 
	.A(RAM_32_));
   NOR2X1 U153 (.Y(n93), 
	.B(n424), 
	.A(n423));
   NOR2X1 U154 (.Y(rd1[7]), 
	.B(n153), 
	.A(n152));
   OAI21X1 U155 (.Y(n153), 
	.C(n155), 
	.B(n154), 
	.A(RAM_15_));
   OAI21X1 U156 (.Y(n155), 
	.C(n293), 
	.B(n157), 
	.A(n156));
   OAI22X1 U157 (.Y(n157), 
	.D(n302), 
	.C(RAM_31_), 
	.B(n301), 
	.A(RAM_47_));
   NOR2X1 U158 (.Y(n156), 
	.B(n419), 
	.A(test_so));
   OAI21X1 U159 (.Y(n152), 
	.C(n161), 
	.B(n160), 
	.A(n293));
   AOI21X1 U160 (.Y(n160), 
	.C(n163), 
	.B(n425), 
	.A(n162));
   OAI22X1 U161 (.Y(n163), 
	.D(n302), 
	.C(RAM_23_), 
	.B(n301), 
	.A(RAM_39_));
   NOR2X1 U162 (.Y(rd1[6]), 
	.B(n165), 
	.A(n164));
   OAI21X1 U163 (.Y(n165), 
	.C(n166), 
	.B(n154), 
	.A(RAM_14_));
   OAI21X1 U164 (.Y(n166), 
	.C(n293), 
	.B(n168), 
	.A(n167));
   OAI22X1 U165 (.Y(n168), 
	.D(n302), 
	.C(RAM_30_), 
	.B(n301), 
	.A(RAM_46_));
   NOR2X1 U166 (.Y(n167), 
	.B(n419), 
	.A(RAM_62_));
   OAI21X1 U167 (.Y(n164), 
	.C(n161), 
	.B(n169), 
	.A(n293));
   AOI21X1 U168 (.Y(n169), 
	.C(n170), 
	.B(n426), 
	.A(n162));
   OAI22X1 U169 (.Y(n170), 
	.D(n302), 
	.C(RAM_22_), 
	.B(n301), 
	.A(RAM_38_));
   NOR2X1 U170 (.Y(rd1[5]), 
	.B(n172), 
	.A(n171));
   OAI21X1 U171 (.Y(n172), 
	.C(n173), 
	.B(n154), 
	.A(RAM_13_));
   OAI21X1 U172 (.Y(n173), 
	.C(n293), 
	.B(n175), 
	.A(n174));
   OAI22X1 U173 (.Y(n175), 
	.D(n302), 
	.C(RAM_29_), 
	.B(n301), 
	.A(RAM_45_));
   NOR2X1 U174 (.Y(n174), 
	.B(n419), 
	.A(RAM_61_));
   OAI21X1 U175 (.Y(n171), 
	.C(n161), 
	.B(n176), 
	.A(ra1[0]));
   AOI21X1 U176 (.Y(n176), 
	.C(n177), 
	.B(n427), 
	.A(n162));
   OAI22X1 U177 (.Y(n177), 
	.D(n302), 
	.C(RAM_21_), 
	.B(n301), 
	.A(RAM_37_));
   NOR2X1 U178 (.Y(rd1[4]), 
	.B(n179), 
	.A(n178));
   OAI21X1 U179 (.Y(n179), 
	.C(n180), 
	.B(n154), 
	.A(RAM_12_));
   OAI21X1 U180 (.Y(n180), 
	.C(n293), 
	.B(n182), 
	.A(n181));
   OAI22X1 U181 (.Y(n182), 
	.D(n302), 
	.C(RAM_28_), 
	.B(n301), 
	.A(RAM_44_));
   NOR2X1 U182 (.Y(n181), 
	.B(n419), 
	.A(RAM_60_));
   OAI21X1 U183 (.Y(n178), 
	.C(n161), 
	.B(n183), 
	.A(ra1[0]));
   AOI21X1 U184 (.Y(n183), 
	.C(n184), 
	.B(n428), 
	.A(n162));
   OAI22X1 U185 (.Y(n184), 
	.D(n302), 
	.C(RAM_20_), 
	.B(n301), 
	.A(RAM_36_));
   NOR2X1 U186 (.Y(rd1[3]), 
	.B(n186), 
	.A(n185));
   OAI21X1 U187 (.Y(n186), 
	.C(n187), 
	.B(n154), 
	.A(RAM_11_));
   OAI21X1 U188 (.Y(n187), 
	.C(n293), 
	.B(n189), 
	.A(n188));
   OAI22X1 U189 (.Y(n189), 
	.D(n302), 
	.C(RAM_27_), 
	.B(n301), 
	.A(RAM_43_));
   NOR2X1 U190 (.Y(n188), 
	.B(n419), 
	.A(RAM_59_));
   OAI21X1 U191 (.Y(n185), 
	.C(n161), 
	.B(n190), 
	.A(ra1[0]));
   AOI21X1 U192 (.Y(n190), 
	.C(n191), 
	.B(n429), 
	.A(n162));
   OAI22X1 U193 (.Y(n191), 
	.D(n302), 
	.C(RAM_19_), 
	.B(n301), 
	.A(RAM_35_));
   NOR2X1 U194 (.Y(rd1[2]), 
	.B(n193), 
	.A(n192));
   OAI21X1 U195 (.Y(n193), 
	.C(n194), 
	.B(n154), 
	.A(RAM_10_));
   OAI21X1 U196 (.Y(n194), 
	.C(n293), 
	.B(n196), 
	.A(n195));
   OAI22X1 U197 (.Y(n196), 
	.D(n302), 
	.C(RAM_26_), 
	.B(n301), 
	.A(RAM_42_));
   NOR2X1 U198 (.Y(n195), 
	.B(n419), 
	.A(RAM_58_));
   OAI21X1 U199 (.Y(n192), 
	.C(n161), 
	.B(n197), 
	.A(ra1[0]));
   AOI21X1 U200 (.Y(n197), 
	.C(n198), 
	.B(n430), 
	.A(n162));
   OAI22X1 U201 (.Y(n198), 
	.D(n302), 
	.C(RAM_18_), 
	.B(n301), 
	.A(RAM_34_));
   NOR2X1 U202 (.Y(rd1[1]), 
	.B(n200), 
	.A(n199));
   OAI21X1 U203 (.Y(n200), 
	.C(n201), 
	.B(n154), 
	.A(RAM_9_));
   OAI21X1 U204 (.Y(n201), 
	.C(n293), 
	.B(n203), 
	.A(n202));
   OAI22X1 U205 (.Y(n203), 
	.D(n302), 
	.C(RAM_25_), 
	.B(n301), 
	.A(RAM_41_));
   NOR2X1 U206 (.Y(n202), 
	.B(n419), 
	.A(RAM_57_));
   OAI21X1 U207 (.Y(n199), 
	.C(n161), 
	.B(n204), 
	.A(n293));
   AOI21X1 U208 (.Y(n204), 
	.C(n205), 
	.B(n431), 
	.A(n162));
   OAI22X1 U209 (.Y(n205), 
	.D(n302), 
	.C(RAM_17_), 
	.B(n301), 
	.A(RAM_33_));
   NOR2X1 U210 (.Y(rd1[0]), 
	.B(n207), 
	.A(n206));
   OAI21X1 U211 (.Y(n207), 
	.C(n208), 
	.B(n154), 
	.A(RAM_8_));
   OAI21X1 U212 (.Y(n208), 
	.C(n293), 
	.B(n210), 
	.A(n209));
   OAI22X1 U213 (.Y(n210), 
	.D(n302), 
	.C(RAM_24_), 
	.B(n301), 
	.A(RAM_40_));
   NOR2X1 U214 (.Y(n209), 
	.B(n419), 
	.A(RAM_56_));
   NAND2X1 U215 (.Y(n154), 
	.B(n420), 
	.A(n421));
   OAI21X1 U216 (.Y(n206), 
	.C(n161), 
	.B(n211), 
	.A(n293));
   NAND3X1 U217 (.Y(n161), 
	.C(n292), 
	.B(n420), 
	.A(n421));
   AOI21X1 U218 (.Y(n211), 
	.C(n212), 
	.B(n432), 
	.A(n162));
   OAI22X1 U219 (.Y(n212), 
	.D(n302), 
	.C(RAM_16_), 
	.B(n301), 
	.A(RAM_32_));
   NOR2X1 U222 (.Y(n162), 
	.B(n421), 
	.A(n420));
   AOI22X1 U223 (.Y(n213), 
	.D(wd[1]), 
	.C(n294), 
	.B(RAM_9_), 
	.A(n214));
   AOI22X1 U224 (.Y(n215), 
	.D(wd[0]), 
	.C(n294), 
	.B(RAM_8_), 
	.A(n214));
   AOI22X1 U225 (.Y(n217), 
	.D(n300), 
	.C(wd[7]), 
	.B(test_so), 
	.A(n218));
   AOI22X1 U226 (.Y(n219), 
	.D(n300), 
	.C(wd[6]), 
	.B(RAM_62_), 
	.A(n218));
   AOI22X1 U227 (.Y(n220), 
	.D(n300), 
	.C(wd[5]), 
	.B(RAM_61_), 
	.A(n218));
   AOI22X1 U228 (.Y(n221), 
	.D(n300), 
	.C(wd[4]), 
	.B(RAM_60_), 
	.A(n218));
   AOI22X1 U229 (.Y(n222), 
	.D(n300), 
	.C(wd[3]), 
	.B(RAM_59_), 
	.A(n218));
   AOI22X1 U230 (.Y(n223), 
	.D(n300), 
	.C(wd[2]), 
	.B(RAM_58_), 
	.A(n218));
   AOI22X1 U231 (.Y(n224), 
	.D(n300), 
	.C(wd[1]), 
	.B(RAM_57_), 
	.A(n218));
   AOI22X1 U232 (.Y(n225), 
	.D(n300), 
	.C(wd[0]), 
	.B(RAM_56_), 
	.A(n218));
   NAND3X1 U233 (.Y(n218), 
	.C(wa[1]), 
	.B(wa[0]), 
	.A(n226));
   OAI22X1 U234 (.Y(n145), 
	.D(n227), 
	.C(n409), 
	.B(n425), 
	.A(n299));
   OAI22X1 U235 (.Y(n144), 
	.D(n227), 
	.C(n410), 
	.B(n426), 
	.A(n299));
   OAI22X1 U236 (.Y(n143), 
	.D(n227), 
	.C(n411), 
	.B(n427), 
	.A(n299));
   OAI22X1 U237 (.Y(n142), 
	.D(n227), 
	.C(n412), 
	.B(n428), 
	.A(n299));
   OAI22X1 U238 (.Y(n141), 
	.D(n227), 
	.C(n413), 
	.B(n429), 
	.A(n299));
   OAI22X1 U239 (.Y(n140), 
	.D(n227), 
	.C(n414), 
	.B(n430), 
	.A(n299));
   OAI22X1 U240 (.Y(n139), 
	.D(n227), 
	.C(n415), 
	.B(n431), 
	.A(n299));
   OAI22X1 U241 (.Y(n138), 
	.D(n227), 
	.C(n416), 
	.B(n432), 
	.A(n299));
   NAND3X1 U242 (.Y(n227), 
	.C(wa[1]), 
	.B(n418), 
	.A(n226));
   AOI22X1 U243 (.Y(n228), 
	.D(n298), 
	.C(wd[7]), 
	.B(RAM_47_), 
	.A(n229));
   AOI22X1 U244 (.Y(n230), 
	.D(n298), 
	.C(wd[6]), 
	.B(RAM_46_), 
	.A(n229));
   AOI22X1 U245 (.Y(n231), 
	.D(n298), 
	.C(wd[5]), 
	.B(RAM_45_), 
	.A(n229));
   AOI22X1 U246 (.Y(n232), 
	.D(n298), 
	.C(wd[4]), 
	.B(RAM_44_), 
	.A(n229));
   AOI22X1 U247 (.Y(n233), 
	.D(n298), 
	.C(wd[3]), 
	.B(RAM_43_), 
	.A(n229));
   AOI22X1 U248 (.Y(n234), 
	.D(n298), 
	.C(wd[2]), 
	.B(RAM_42_), 
	.A(n229));
   AOI22X1 U249 (.Y(n235), 
	.D(n298), 
	.C(wd[1]), 
	.B(RAM_41_), 
	.A(n229));
   AOI22X1 U250 (.Y(n236), 
	.D(n298), 
	.C(wd[0]), 
	.B(RAM_40_), 
	.A(n229));
   NAND3X1 U251 (.Y(n229), 
	.C(n226), 
	.B(n417), 
	.A(wa[0]));
   AOI22X1 U252 (.Y(n237), 
	.D(n297), 
	.C(wd[7]), 
	.B(RAM_39_), 
	.A(n238));
   AOI22X1 U253 (.Y(n239), 
	.D(n297), 
	.C(wd[6]), 
	.B(RAM_38_), 
	.A(n238));
   AOI22X1 U254 (.Y(n240), 
	.D(n297), 
	.C(wd[5]), 
	.B(RAM_37_), 
	.A(n238));
   AOI22X1 U255 (.Y(n241), 
	.D(n297), 
	.C(wd[4]), 
	.B(RAM_36_), 
	.A(n238));
   AOI22X1 U256 (.Y(n242), 
	.D(n297), 
	.C(wd[3]), 
	.B(RAM_35_), 
	.A(n238));
   AOI22X1 U257 (.Y(n243), 
	.D(n297), 
	.C(wd[2]), 
	.B(RAM_34_), 
	.A(n238));
   AOI22X1 U258 (.Y(n244), 
	.D(n297), 
	.C(wd[1]), 
	.B(RAM_33_), 
	.A(n238));
   AOI22X1 U259 (.Y(n245), 
	.D(n297), 
	.C(wd[0]), 
	.B(RAM_32_), 
	.A(n238));
   NAND3X1 U260 (.Y(n238), 
	.C(n226), 
	.B(n417), 
	.A(n418));
   AOI22X1 U261 (.Y(n246), 
	.D(n296), 
	.C(wd[7]), 
	.B(RAM_31_), 
	.A(n247));
   AOI22X1 U262 (.Y(n248), 
	.D(n296), 
	.C(wd[6]), 
	.B(RAM_30_), 
	.A(n247));
   AOI22X1 U263 (.Y(n249), 
	.D(n296), 
	.C(wd[5]), 
	.B(RAM_29_), 
	.A(n247));
   AOI22X1 U264 (.Y(n250), 
	.D(n296), 
	.C(wd[4]), 
	.B(RAM_28_), 
	.A(n247));
   AOI22X1 U265 (.Y(n251), 
	.D(n296), 
	.C(wd[3]), 
	.B(RAM_27_), 
	.A(n247));
   AOI22X1 U266 (.Y(n252), 
	.D(n296), 
	.C(wd[2]), 
	.B(RAM_26_), 
	.A(n247));
   AOI22X1 U267 (.Y(n253), 
	.D(n296), 
	.C(wd[1]), 
	.B(RAM_25_), 
	.A(n247));
   AOI22X1 U268 (.Y(n254), 
	.D(n296), 
	.C(wd[0]), 
	.B(RAM_24_), 
	.A(n247));
   NAND3X1 U269 (.Y(n247), 
	.C(wa[1]), 
	.B(n216), 
	.A(wa[0]));
   AOI22X1 U270 (.Y(n255), 
	.D(n295), 
	.C(wd[7]), 
	.B(RAM_23_), 
	.A(n256));
   AOI22X1 U271 (.Y(n257), 
	.D(n295), 
	.C(wd[6]), 
	.B(RAM_22_), 
	.A(n256));
   AOI22X1 U272 (.Y(n258), 
	.D(n295), 
	.C(wd[5]), 
	.B(RAM_21_), 
	.A(n256));
   AOI22X1 U273 (.Y(n259), 
	.D(n295), 
	.C(wd[4]), 
	.B(RAM_20_), 
	.A(n256));
   AOI22X1 U274 (.Y(n260), 
	.D(n295), 
	.C(wd[3]), 
	.B(RAM_19_), 
	.A(n256));
   AOI22X1 U275 (.Y(n261), 
	.D(n295), 
	.C(wd[2]), 
	.B(RAM_18_), 
	.A(n256));
   AOI22X1 U276 (.Y(n262), 
	.D(n295), 
	.C(wd[1]), 
	.B(RAM_17_), 
	.A(n256));
   AOI22X1 U277 (.Y(n263), 
	.D(n295), 
	.C(wd[0]), 
	.B(RAM_16_), 
	.A(n256));
   NAND3X1 U278 (.Y(n256), 
	.C(wa[1]), 
	.B(n418), 
	.A(n216));
   AOI22X1 U279 (.Y(n264), 
	.D(wd[7]), 
	.C(n294), 
	.B(RAM_15_), 
	.A(n214));
   AOI22X1 U280 (.Y(n265), 
	.D(wd[6]), 
	.C(n294), 
	.B(RAM_14_), 
	.A(n214));
   AOI22X1 U281 (.Y(n266), 
	.D(wd[5]), 
	.C(n294), 
	.B(RAM_13_), 
	.A(n214));
   AOI22X1 U282 (.Y(n267), 
	.D(wd[4]), 
	.C(n294), 
	.B(RAM_12_), 
	.A(n214));
   AOI22X1 U283 (.Y(n268), 
	.D(wd[3]), 
	.C(n294), 
	.B(RAM_11_), 
	.A(n214));
   AOI22X1 U284 (.Y(n269), 
	.D(wd[2]), 
	.C(n294), 
	.B(RAM_10_), 
	.A(n214));
   NAND3X1 U285 (.Y(n214), 
	.C(wa[0]), 
	.B(n417), 
	.A(n216));
   NOR2X1 U286 (.Y(n216), 
	.B(wa[2]), 
	.A(n433));
   DFFPOSX1_SCAN RAM_reg_7__7_ (.TI(RAM_62_), 
	.TE(test_se), 
	.Q(test_so), 
	.D(n352), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_7__6_ (.TI(RAM_61_), 
	.TE(test_se), 
	.Q(RAM_62_), 
	.D(n351), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_7__5_ (.TI(RAM_60_), 
	.TE(test_se), 
	.Q(RAM_61_), 
	.D(n350), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_7__4_ (.TI(RAM_59_), 
	.TE(test_se), 
	.Q(RAM_60_), 
	.D(n349), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_7__3_ (.TI(RAM_58_), 
	.TE(test_se), 
	.Q(RAM_59_), 
	.D(n348), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_7__2_ (.TI(RAM_57_), 
	.TE(test_se), 
	.Q(RAM_58_), 
	.D(n347), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_7__1_ (.TI(RAM_56_), 
	.TE(test_se), 
	.Q(RAM_57_), 
	.D(n346), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_7__0_ (.TI(n425), 
	.TE(test_se), 
	.Q(RAM_56_), 
	.D(n345), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_6__7_ (.TI(n426), 
	.TE(test_se), 
	.Q(RAM_55_), 
	.D(n145), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_6__6_ (.TI(n427), 
	.TE(test_se), 
	.Q(RAM_54_), 
	.D(n144), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_6__5_ (.TI(n428), 
	.TE(test_se), 
	.Q(RAM_53_), 
	.D(n143), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_6__4_ (.TI(n429), 
	.TE(test_se), 
	.Q(RAM_52_), 
	.D(n142), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_6__3_ (.TI(n430), 
	.TE(test_se), 
	.Q(RAM_51_), 
	.D(n141), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_6__2_ (.TI(n431), 
	.TE(test_se), 
	.Q(RAM_50_), 
	.D(n140), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_6__1_ (.TI(n432), 
	.TE(test_se), 
	.Q(RAM_49_), 
	.D(n139), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_6__0_ (.TI(RAM_47_), 
	.TE(test_se), 
	.Q(RAM_48_), 
	.D(n138), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_5__7_ (.TI(RAM_46_), 
	.TE(test_se), 
	.Q(RAM_47_), 
	.D(n344), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_5__6_ (.TI(RAM_45_), 
	.TE(test_se), 
	.Q(RAM_46_), 
	.D(n343), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_5__5_ (.TI(RAM_44_), 
	.TE(test_se), 
	.Q(RAM_45_), 
	.D(n342), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_5__4_ (.TI(RAM_43_), 
	.TE(test_se), 
	.Q(RAM_44_), 
	.D(n341), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_5__3_ (.TI(RAM_42_), 
	.TE(test_se), 
	.Q(RAM_43_), 
	.D(n340), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_5__2_ (.TI(RAM_41_), 
	.TE(test_se), 
	.Q(RAM_42_), 
	.D(n339), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_5__1_ (.TI(RAM_40_), 
	.TE(test_se), 
	.Q(RAM_41_), 
	.D(n338), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_5__0_ (.TI(RAM_39_), 
	.TE(test_se), 
	.Q(RAM_40_), 
	.D(n337), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_4__7_ (.TI(RAM_38_), 
	.TE(test_se), 
	.Q(RAM_39_), 
	.D(n336), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_4__6_ (.TI(RAM_37_), 
	.TE(test_se), 
	.Q(RAM_38_), 
	.D(n335), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_4__5_ (.TI(RAM_36_), 
	.TE(test_se), 
	.Q(RAM_37_), 
	.D(n334), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_4__4_ (.TI(RAM_35_), 
	.TE(test_se), 
	.Q(RAM_36_), 
	.D(n333), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_4__3_ (.TI(RAM_34_), 
	.TE(test_se), 
	.Q(RAM_35_), 
	.D(n332), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_4__2_ (.TI(RAM_33_), 
	.TE(test_se), 
	.Q(RAM_34_), 
	.D(n331), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_4__1_ (.TI(RAM_32_), 
	.TE(test_se), 
	.Q(RAM_33_), 
	.D(n330), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_4__0_ (.TI(RAM_31_), 
	.TE(test_se), 
	.Q(RAM_32_), 
	.D(n329), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_3__7_ (.TI(RAM_30_), 
	.TE(test_se), 
	.Q(RAM_31_), 
	.D(n328), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_3__6_ (.TI(RAM_29_), 
	.TE(test_se), 
	.Q(RAM_30_), 
	.D(n327), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_3__5_ (.TI(RAM_28_), 
	.TE(test_se), 
	.Q(RAM_29_), 
	.D(n326), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_3__4_ (.TI(RAM_27_), 
	.TE(test_se), 
	.Q(RAM_28_), 
	.D(n325), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_3__3_ (.TI(RAM_26_), 
	.TE(test_se), 
	.Q(RAM_27_), 
	.D(n324), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_3__2_ (.TI(RAM_25_), 
	.TE(test_se), 
	.Q(RAM_26_), 
	.D(n323), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_3__1_ (.TI(RAM_24_), 
	.TE(test_se), 
	.Q(RAM_25_), 
	.D(n322), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_3__0_ (.TI(RAM_23_), 
	.TE(test_se), 
	.Q(RAM_24_), 
	.D(n321), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_2__7_ (.TI(RAM_22_), 
	.TE(test_se), 
	.Q(RAM_23_), 
	.D(n320), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_2__6_ (.TI(RAM_21_), 
	.TE(test_se), 
	.Q(RAM_22_), 
	.D(n319), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_2__5_ (.TI(RAM_20_), 
	.TE(test_se), 
	.Q(RAM_21_), 
	.D(n318), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_2__4_ (.TI(RAM_19_), 
	.TE(test_se), 
	.Q(RAM_20_), 
	.D(n317), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_2__3_ (.TI(RAM_18_), 
	.TE(test_se), 
	.Q(RAM_19_), 
	.D(n316), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_2__2_ (.TI(RAM_17_), 
	.TE(test_se), 
	.Q(RAM_18_), 
	.D(n315), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_2__1_ (.TI(RAM_16_), 
	.TE(test_se), 
	.Q(RAM_17_), 
	.D(n314), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_2__0_ (.TI(RAM_15_), 
	.TE(test_se), 
	.Q(RAM_16_), 
	.D(n313), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_1__7_ (.TI(RAM_14_), 
	.TE(test_se), 
	.Q(RAM_15_), 
	.D(n312), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_1__6_ (.TI(RAM_13_), 
	.TE(test_se), 
	.Q(RAM_14_), 
	.D(n311), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_1__5_ (.TI(RAM_12_), 
	.TE(test_se), 
	.Q(RAM_13_), 
	.D(n310), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_1__4_ (.TI(RAM_11_), 
	.TE(test_se), 
	.Q(RAM_12_), 
	.D(n309), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_1__3_ (.TI(RAM_10_), 
	.TE(test_se), 
	.Q(RAM_11_), 
	.D(n308), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_1__2_ (.TI(RAM_9_), 
	.TE(test_se), 
	.Q(RAM_10_), 
	.D(n307), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_1__1_ (.TI(RAM_8_), 
	.TE(test_se), 
	.Q(RAM_9_), 
	.D(n306), 
	.CLK(clk));
   DFFPOSX1_SCAN RAM_reg_1__0_ (.TI(test_si), 
	.TE(test_se), 
	.Q(RAM_8_), 
	.D(n305), 
	.CLK(clk));
   INVX2 U3 (.Y(n297), 
	.A(n238));
   INVX2 U4 (.Y(n294), 
	.A(n214));
   INVX2 U5 (.Y(n295), 
	.A(n256));
   INVX2 U6 (.Y(n299), 
	.A(n227));
   INVX2 U7 (.Y(n296), 
	.A(n247));
   INVX2 U8 (.Y(n298), 
	.A(n229));
   INVX2 U9 (.Y(n300), 
	.A(n218));
   INVX2 U10 (.Y(n304), 
	.A(n287));
   INVX2 U11 (.Y(n302), 
	.A(n289));
   INVX2 U12 (.Y(n303), 
	.A(n286));
   INVX2 U13 (.Y(n301), 
	.A(n288));
   INVX2 U14 (.Y(n291), 
	.A(n290));
   INVX2 U15 (.Y(n293), 
	.A(n292));
   INVX2 U16 (.Y(n290), 
	.A(ra2[0]));
   INVX2 U17 (.Y(n292), 
	.A(ra1[0]));
   AND2X2 U18 (.Y(n286), 
	.B(n424), 
	.A(ra2[2]));
   AND2X2 U19 (.Y(n287), 
	.B(n423), 
	.A(ra2[1]));
   AND2X2 U20 (.Y(n288), 
	.B(n421), 
	.A(ra1[2]));
   AND2X2 U21 (.Y(n289), 
	.B(n420), 
	.A(ra1[1]));
   INVX2 U78 (.Y(n409), 
	.A(wd[7]));
   INVX2 U79 (.Y(n352), 
	.A(n217));
   INVX2 U80 (.Y(n344), 
	.A(n228));
   INVX2 U81 (.Y(n336), 
	.A(n237));
   INVX2 U82 (.Y(n328), 
	.A(n246));
   INVX2 U83 (.Y(n320), 
	.A(n255));
   INVX2 U84 (.Y(n312), 
	.A(n264));
   INVX2 U151 (.Y(n410), 
	.A(wd[6]));
   INVX2 U152 (.Y(n351), 
	.A(n219));
   INVX2 U220 (.Y(n343), 
	.A(n230));
   INVX2 U221 (.Y(n335), 
	.A(n239));
   INVX2 U287 (.Y(n327), 
	.A(n248));
   INVX2 U288 (.Y(n319), 
	.A(n257));
   INVX2 U289 (.Y(n311), 
	.A(n265));
   INVX2 U290 (.Y(n411), 
	.A(wd[5]));
   INVX2 U291 (.Y(n350), 
	.A(n220));
   INVX2 U292 (.Y(n342), 
	.A(n231));
   INVX2 U293 (.Y(n334), 
	.A(n240));
   INVX2 U294 (.Y(n326), 
	.A(n249));
   INVX2 U295 (.Y(n318), 
	.A(n258));
   INVX2 U296 (.Y(n310), 
	.A(n266));
   INVX2 U297 (.Y(n412), 
	.A(wd[4]));
   INVX2 U298 (.Y(n349), 
	.A(n221));
   INVX2 U299 (.Y(n341), 
	.A(n232));
   INVX2 U300 (.Y(n333), 
	.A(n241));
   INVX2 U301 (.Y(n325), 
	.A(n250));
   INVX2 U302 (.Y(n317), 
	.A(n259));
   INVX2 U303 (.Y(n309), 
	.A(n267));
   INVX2 U304 (.Y(n413), 
	.A(wd[3]));
   INVX2 U305 (.Y(n348), 
	.A(n222));
   INVX2 U306 (.Y(n340), 
	.A(n233));
   INVX2 U307 (.Y(n332), 
	.A(n242));
   INVX2 U308 (.Y(n324), 
	.A(n251));
   INVX2 U309 (.Y(n316), 
	.A(n260));
   INVX2 U310 (.Y(n308), 
	.A(n268));
   INVX2 U311 (.Y(n414), 
	.A(wd[2]));
   INVX2 U312 (.Y(n347), 
	.A(n223));
   INVX2 U313 (.Y(n339), 
	.A(n234));
   INVX2 U314 (.Y(n331), 
	.A(n243));
   INVX2 U315 (.Y(n323), 
	.A(n252));
   INVX2 U316 (.Y(n315), 
	.A(n261));
   INVX2 U317 (.Y(n307), 
	.A(n269));
   INVX2 U318 (.Y(n415), 
	.A(wd[1]));
   INVX2 U319 (.Y(n306), 
	.A(n213));
   INVX2 U320 (.Y(n346), 
	.A(n224));
   INVX2 U321 (.Y(n338), 
	.A(n235));
   INVX2 U322 (.Y(n330), 
	.A(n244));
   INVX2 U323 (.Y(n322), 
	.A(n253));
   INVX2 U324 (.Y(n314), 
	.A(n262));
   INVX2 U325 (.Y(n416), 
	.A(wd[0]));
   INVX2 U326 (.Y(n305), 
	.A(n215));
   INVX2 U327 (.Y(n345), 
	.A(n225));
   INVX2 U328 (.Y(n337), 
	.A(n236));
   INVX2 U329 (.Y(n329), 
	.A(n245));
   INVX2 U330 (.Y(n321), 
	.A(n254));
   INVX2 U331 (.Y(n313), 
	.A(n263));
   INVX2 U332 (.Y(n417), 
	.A(wa[1]));
   INVX2 U333 (.Y(n418), 
	.A(wa[0]));
   INVX2 U334 (.Y(n419), 
	.A(n162));
   INVX2 U335 (.Y(n420), 
	.A(ra1[2]));
   INVX2 U336 (.Y(n421), 
	.A(ra1[1]));
   INVX2 U337 (.Y(n422), 
	.A(n93));
   INVX2 U338 (.Y(n423), 
	.A(ra2[2]));
   INVX2 U339 (.Y(n424), 
	.A(ra2[1]));
   INVX2 U340 (.Y(n425), 
	.A(RAM_55_));
   INVX2 U341 (.Y(n426), 
	.A(RAM_54_));
   INVX2 U342 (.Y(n427), 
	.A(RAM_53_));
   INVX2 U343 (.Y(n428), 
	.A(RAM_52_));
   INVX2 U344 (.Y(n429), 
	.A(RAM_51_));
   INVX2 U345 (.Y(n430), 
	.A(RAM_50_));
   INVX2 U346 (.Y(n431), 
	.A(RAM_49_));
   INVX2 U347 (.Y(n432), 
	.A(RAM_48_));
   INVX2 U348 (.Y(n433), 
	.A(regwrite));
endmodule

module flop_test_3 (
	clk, 
	d, 
	q, 
	test_si, 
	test_se);
   input clk;
   input [7:0] d;
   output [7:0] q;
   input test_si;
   input test_se;

   DFFPOSX1_SCAN q_reg_7_ (.TI(q[6]), 
	.TE(test_se), 
	.Q(q[7]), 
	.D(d[7]), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_6_ (.TI(q[5]), 
	.TE(test_se), 
	.Q(q[6]), 
	.D(d[6]), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_5_ (.TI(q[4]), 
	.TE(test_se), 
	.Q(q[5]), 
	.D(d[5]), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_4_ (.TI(q[3]), 
	.TE(test_se), 
	.Q(q[4]), 
	.D(d[4]), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_3_ (.TI(q[2]), 
	.TE(test_se), 
	.Q(q[3]), 
	.D(d[3]), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_2_ (.TI(q[1]), 
	.TE(test_se), 
	.Q(q[2]), 
	.D(d[2]), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_1_ (.TI(q[0]), 
	.TE(test_se), 
	.Q(q[1]), 
	.D(d[1]), 
	.CLK(clk));
   DFFPOSX1_SCAN q_reg_0_ (.TI(test_si), 
	.TE(test_se), 
	.Q(q[0]), 
	.D(d[0]), 
	.CLK(clk));
endmodule

module datapath_test_1 (
	clk, 
	reset, 
	memdata, 
	alusrca, 
	memtoreg, 
	iord, 
	pcen, 
	regwrite, 
	regdst, 
	pcsource, 
	alusrcb, 
	irwrite, 
	alucont, 
	zero, 
	instr, 
	adr, 
	writedata, 
	test_si, 
	test_se);
   input clk;
   input reset;
   input [7:0] memdata;
   input alusrca;
   input memtoreg;
   input iord;
   input pcen;
   input regwrite;
   input regdst;
   input [1:0] pcsource;
   input [1:0] alusrcb;
   input [3:0] irwrite;
   input [2:0] alucont;
   output zero;
   output [31:0] instr;
   output [7:0] adr;
   output [7:0] writedata;
   input test_si;
   input test_se;

   // Internal wires
   wire n8;
   wire n9;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
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
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire [2:0] wa;
   wire [7:2] nextpc;
   wire [7:0] pc;
   wire [7:0] md;
   wire [7:0] rd1;
   wire [7:0] a;
   wire [7:0] rd2;
   wire [7:0] aluresult;
   wire [7:0] aluout;
   wire [7:0] src1;
   wire [7:0] wd;
   wire [7:0] src2;

   AND2X2 U3 (.Y(n22), 
	.B(alusrcb[0]), 
	.A(alusrcb[1]));
   AND2X2 U4 (.Y(n33), 
	.B(n58), 
	.A(pcsource[0]));
   INVX2 U12 (.Y(n8), 
	.A(n40));
   INVX2 U13 (.Y(n9), 
	.A(n41));
   OAI21X1 U24 (.Y(src2[7]), 
	.C(n21), 
	.B(n48), 
	.A(n20));
   AOI22X1 U25 (.Y(n21), 
	.D(n23), 
	.C(writedata[7]), 
	.B(n22), 
	.A(instr[5]));
   OAI21X1 U26 (.Y(src2[6]), 
	.C(n24), 
	.B(n49), 
	.A(n20));
   AOI22X1 U27 (.Y(n24), 
	.D(n23), 
	.C(writedata[6]), 
	.B(n22), 
	.A(instr[4]));
   OAI21X1 U28 (.Y(src2[5]), 
	.C(n25), 
	.B(n20), 
	.A(n50));
   AOI22X1 U29 (.Y(n25), 
	.D(n23), 
	.C(writedata[5]), 
	.B(n22), 
	.A(instr[3]));
   OAI21X1 U30 (.Y(src2[4]), 
	.C(n26), 
	.B(n51), 
	.A(n20));
   AOI22X1 U31 (.Y(n26), 
	.D(n23), 
	.C(writedata[4]), 
	.B(n22), 
	.A(instr[2]));
   OAI21X1 U32 (.Y(src2[3]), 
	.C(n27), 
	.B(n52), 
	.A(n20));
   AOI22X1 U33 (.Y(n27), 
	.D(n23), 
	.C(writedata[3]), 
	.B(n22), 
	.A(instr[1]));
   OAI21X1 U34 (.Y(src2[2]), 
	.C(n28), 
	.B(n53), 
	.A(n20));
   AOI22X1 U35 (.Y(n28), 
	.D(n23), 
	.C(writedata[2]), 
	.B(n22), 
	.A(instr[0]));
   OAI21X1 U36 (.Y(src2[1]), 
	.C(n29), 
	.B(n54), 
	.A(n20));
   NAND2X1 U37 (.Y(n29), 
	.B(n23), 
	.A(writedata[1]));
   OAI21X1 U38 (.Y(src2[0]), 
	.C(n30), 
	.B(n56), 
	.A(alusrcb[1]));
   AOI22X1 U39 (.Y(n30), 
	.D(n55), 
	.C(instr[0]), 
	.B(n23), 
	.A(writedata[0]));
   NAND2X1 U40 (.Y(n20), 
	.B(n56), 
	.A(alusrcb[1]));
   NOR2X1 U41 (.Y(n23), 
	.B(alusrcb[1]), 
	.A(alusrcb[0]));
   OAI21X1 U42 (.Y(nextpc[7]), 
	.C(n31), 
	.B(n42), 
	.A(n57));
   AOI22X1 U43 (.Y(n31), 
	.D(n33), 
	.C(aluout[7]), 
	.B(instr[5]), 
	.A(n32));
   OAI21X1 U44 (.Y(nextpc[6]), 
	.C(n34), 
	.B(n43), 
	.A(n57));
   AOI22X1 U45 (.Y(n34), 
	.D(n33), 
	.C(aluout[6]), 
	.B(instr[4]), 
	.A(n32));
   OAI21X1 U46 (.Y(nextpc[5]), 
	.C(n35), 
	.B(n44), 
	.A(n57));
   AOI22X1 U47 (.Y(n35), 
	.D(n33), 
	.C(aluout[5]), 
	.B(instr[3]), 
	.A(n32));
   OAI21X1 U48 (.Y(nextpc[4]), 
	.C(n36), 
	.B(n45), 
	.A(n57));
   AOI22X1 U49 (.Y(n36), 
	.D(n33), 
	.C(aluout[4]), 
	.B(instr[2]), 
	.A(n32));
   OAI21X1 U50 (.Y(nextpc[3]), 
	.C(n37), 
	.B(n46), 
	.A(n57));
   AOI22X1 U51 (.Y(n37), 
	.D(n33), 
	.C(aluout[3]), 
	.B(instr[1]), 
	.A(n32));
   OAI21X1 U52 (.Y(nextpc[2]), 
	.C(n38), 
	.B(n47), 
	.A(n57));
   AOI22X1 U53 (.Y(n38), 
	.D(n33), 
	.C(aluout[2]), 
	.B(instr[0]), 
	.A(n32));
   NOR2X1 U54 (.Y(n32), 
	.B(pcsource[0]), 
	.A(n58));
   AOI22X1 U55 (.Y(n40), 
	.D(n39), 
	.C(aluresult[0]), 
	.B(n33), 
	.A(aluout[0]));
   AOI22X1 U56 (.Y(n41), 
	.D(n39), 
	.C(aluresult[1]), 
	.B(n33), 
	.A(aluout[1]));
   NOR2X1 U57 (.Y(n39), 
	.B(pcsource[1]), 
	.A(pcsource[0]));
   mux2reg regmux (.d0({ instr[18],
		instr[17],
		instr[16] }), 
	.d1({ instr[13],
		instr[12],
		instr[11] }), 
	.s(regdst), 
	.y({ wa[2],
		wa[1],
		wa[0] }));
   flopen_test_0 ir0 (.clk(clk), 
	.en(irwrite[3]), 
	.d({ memdata[7],
		memdata[6],
		memdata[5],
		memdata[4],
		memdata[3],
		memdata[2],
		memdata[1],
		memdata[0] }), 
	.q({ instr[7],
		instr[6],
		instr[5],
		instr[4],
		instr[3],
		instr[2],
		instr[1],
		instr[0] }), 
	.test_si(a[7]), 
	.test_se(test_se));
   flopen_test_1 ir1 (.clk(clk), 
	.en(irwrite[2]), 
	.d({ memdata[7],
		memdata[6],
		memdata[5],
		memdata[4],
		memdata[3],
		memdata[2],
		memdata[1],
		memdata[0] }), 
	.q({ instr[15],
		instr[14],
		instr[13],
		instr[12],
		instr[11],
		instr[10],
		instr[9],
		instr[8] }), 
	.test_si(instr[7]), 
	.test_se(test_se));
   flopen_test_2 ir2 (.clk(clk), 
	.en(irwrite[1]), 
	.d({ memdata[7],
		memdata[6],
		memdata[5],
		memdata[4],
		memdata[3],
		memdata[2],
		memdata[1],
		memdata[0] }), 
	.q({ instr[23],
		instr[22],
		instr[21],
		instr[20],
		instr[19],
		instr[18],
		instr[17],
		instr[16] }), 
	.test_si(instr[15]), 
	.test_se(test_se));
   flopen_test_3 ir3 (.clk(clk), 
	.en(irwrite[0]), 
	.d({ memdata[7],
		memdata[6],
		memdata[5],
		memdata[4],
		memdata[3],
		memdata[2],
		memdata[1],
		memdata[0] }), 
	.q({ instr[31],
		instr[30],
		instr[29],
		instr[28],
		instr[27],
		instr[26],
		instr[25],
		instr[24] }), 
	.test_si(instr[23]), 
	.test_se(test_se));
   flopenr_test_1 pcreg (.clk(clk), 
	.reset(reset), 
	.en(pcen), 
	.d({ nextpc[7],
		nextpc[6],
		nextpc[5],
		nextpc[4],
		nextpc[3],
		nextpc[2],
		n9,
		n8 }), 
	.q({ pc[7],
		pc[6],
		pc[5],
		pc[4],
		pc[3],
		pc[2],
		pc[1],
		pc[0] }), 
	.test_si(md[7]), 
	.test_se(test_se));
   flop_test_1 mdr (.clk(clk), 
	.d({ memdata[7],
		memdata[6],
		memdata[5],
		memdata[4],
		memdata[3],
		memdata[2],
		memdata[1],
		memdata[0] }), 
	.q({ md[7],
		md[6],
		md[5],
		md[4],
		md[3],
		md[2],
		md[1],
		md[0] }), 
	.test_si(instr[31]), 
	.test_se(test_se));
   flop_test_0 areg (.clk(clk), 
	.d({ rd1[7],
		rd1[6],
		rd1[5],
		rd1[4],
		rd1[3],
		rd1[2],
		rd1[1],
		rd1[0] }), 
	.q({ a[7],
		a[6],
		a[5],
		a[4],
		a[3],
		a[2],
		a[1],
		a[0] }), 
	.test_si(test_si), 
	.test_se(test_se));
   flop_test_3 wrd (.clk(clk), 
	.d({ rd2[7],
		rd2[6],
		rd2[5],
		rd2[4],
		rd2[3],
		rd2[2],
		rd2[1],
		rd2[0] }), 
	.q({ writedata[7],
		writedata[6],
		writedata[5],
		writedata[4],
		writedata[3],
		writedata[2],
		writedata[1],
		writedata[0] }), 
	.test_si(n59), 
	.test_se(test_se));
   flop_test_2 res (.clk(clk), 
	.d({ aluresult[7],
		aluresult[6],
		aluresult[5],
		aluresult[4],
		aluresult[3],
		aluresult[2],
		aluresult[1],
		aluresult[0] }), 
	.q({ aluout[7],
		aluout[6],
		aluout[5],
		aluout[4],
		aluout[3],
		aluout[2],
		aluout[1],
		aluout[0] }), 
	.test_si(pc[7]), 
	.test_se(test_se));
   mux2_2 adrmux (.d0({ pc[7],
		pc[6],
		pc[5],
		pc[4],
		pc[3],
		pc[2],
		pc[1],
		pc[0] }), 
	.d1({ aluout[7],
		aluout[6],
		aluout[5],
		aluout[4],
		aluout[3],
		aluout[2],
		aluout[1],
		aluout[0] }), 
	.s(iord), 
	.y({ adr[7],
		adr[6],
		adr[5],
		adr[4],
		adr[3],
		adr[2],
		adr[1],
		adr[0] }));
   mux2_1 src1mux (.d0({ pc[7],
		pc[6],
		pc[5],
		pc[4],
		pc[3],
		pc[2],
		pc[1],
		pc[0] }), 
	.d1({ a[7],
		a[6],
		a[5],
		a[4],
		a[3],
		a[2],
		a[1],
		a[0] }), 
	.s(alusrca), 
	.y({ src1[7],
		src1[6],
		src1[5],
		src1[4],
		src1[3],
		src1[2],
		src1[1],
		src1[0] }));
   mux2_0 wdmux (.d0({ aluout[7],
		aluout[6],
		aluout[5],
		aluout[4],
		aluout[3],
		aluout[2],
		aluout[1],
		aluout[0] }), 
	.d1({ md[7],
		md[6],
		md[5],
		md[4],
		md[3],
		md[2],
		md[1],
		md[0] }), 
	.s(memtoreg), 
	.y({ wd[7],
		wd[6],
		wd[5],
		wd[4],
		wd[3],
		wd[2],
		wd[1],
		wd[0] }));
   regfile_test_1 rf (.clk(clk), 
	.regwrite(regwrite), 
	.ra1({ instr[23],
		instr[22],
		instr[21] }), 
	.ra2({ instr[18],
		instr[17],
		instr[16] }), 
	.wa({ wa[2],
		wa[1],
		wa[0] }), 
	.wd({ wd[7],
		wd[6],
		wd[5],
		wd[4],
		wd[3],
		wd[2],
		wd[1],
		wd[0] }), 
	.rd1({ rd1[7],
		rd1[6],
		rd1[5],
		rd1[4],
		rd1[3],
		rd1[2],
		rd1[1],
		rd1[0] }), 
	.rd2({ rd2[7],
		rd2[6],
		rd2[5],
		rd2[4],
		rd2[3],
		rd2[2],
		rd2[1],
		rd2[0] }), 
	.test_si(aluout[7]), 
	.test_so(n59), 
	.test_se(test_se));
   alu alunit (.a({ src1[7],
		src1[6],
		src1[5],
		src1[4],
		src1[3],
		src1[2],
		src1[1],
		src1[0] }), 
	.b({ src2[7],
		src2[6],
		src2[5],
		src2[4],
		src2[3],
		src2[2],
		src2[1],
		src2[0] }), 
	.alucont({ alucont[2],
		alucont[1],
		alucont[0] }), 
	.result({ aluresult[7],
		aluresult[6],
		aluresult[5],
		aluresult[4],
		aluresult[3],
		aluresult[2],
		aluresult[1],
		aluresult[0] }));
   zerodetect zd (.a({ aluresult[7],
		aluresult[6],
		aluresult[5],
		aluresult[4],
		aluresult[3],
		aluresult[2],
		aluresult[1],
		aluresult[0] }), 
	.y(zero));
   INVX2 U5 (.Y(n42), 
	.A(aluresult[7]));
   INVX2 U6 (.Y(n43), 
	.A(aluresult[6]));
   INVX2 U7 (.Y(n44), 
	.A(aluresult[5]));
   INVX2 U8 (.Y(n45), 
	.A(aluresult[4]));
   INVX2 U9 (.Y(n46), 
	.A(aluresult[3]));
   INVX2 U10 (.Y(n47), 
	.A(aluresult[2]));
   INVX2 U11 (.Y(n48), 
	.A(instr[7]));
   INVX2 U14 (.Y(n49), 
	.A(instr[6]));
   INVX2 U15 (.Y(n50), 
	.A(instr[5]));
   INVX2 U16 (.Y(n51), 
	.A(instr[4]));
   INVX2 U17 (.Y(n52), 
	.A(instr[3]));
   INVX2 U18 (.Y(n53), 
	.A(instr[2]));
   INVX2 U19 (.Y(n54), 
	.A(instr[1]));
   INVX2 U20 (.Y(n55), 
	.A(n20));
   INVX2 U21 (.Y(n56), 
	.A(alusrcb[0]));
   INVX2 U22 (.Y(n57), 
	.A(n39));
   INVX2 U23 (.Y(n58), 
	.A(pcsource[1]));
endmodule

module controller_test_1 (
	clk, 
	reset, 
	op, 
	zero, 
	memread, 
	memwrite, 
	alusrca, 
	memtoreg, 
	iord, 
	pcen, 
	regwrite, 
	regdst, 
	pcsource, 
	alusrcb, 
	aluop, 
	irwrite, 
	test_si, 
	test_so, 
	test_se);
   input clk;
   input reset;
   input [5:0] op;
   input zero;
   output memread;
   output memwrite;
   output alusrca;
   output memtoreg;
   output iord;
   output pcen;
   output regwrite;
   output regdst;
   output [1:0] pcsource;
   output [1:0] alusrcb;
   output [1:0] aluop;
   output [3:0] irwrite;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire N15;
   wire N18;
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
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n92;
   wire n93;
   wire n94;
   wire n96;
   wire n97;
   wire [3:0] state;

   INVX2 U3 (.Y(regdst), 
	.A(n31));
   INVX2 U4 (.Y(pcsource[1]), 
	.A(n35));
   INVX2 U5 (.Y(memwrite), 
	.A(n46));
   INVX2 U6 (.Y(memtoreg), 
	.A(n30));
   INVX2 U7 (.Y(irwrite[2]), 
	.A(n49));
   INVX2 U8 (.Y(irwrite[1]), 
	.A(n44));
   AND2X2 U9 (.Y(n50), 
	.B(state[2]), 
	.A(state[3]));
   INVX2 U12 (.Y(aluop[1]), 
	.A(n42));
   INVX2 U13 (.Y(aluop[0]), 
	.A(n55));
   AND2X2 U14 (.Y(n57), 
	.B(n48), 
	.A(n42));
   AND2X2 U15 (.Y(n59), 
	.B(n87), 
	.A(op[3]));
   OR2X2 U16 (.Y(N15), 
	.B(n71), 
	.A(n70));
   AND2X2 U17 (.Y(n58), 
	.B(test_so), 
	.A(state[2]));
   NAND3X1 U37 (.Y(regwrite), 
	.C(n32), 
	.B(n31), 
	.A(n30));
   NAND3X1 U38 (.Y(n31), 
	.C(state[3]), 
	.B(n33), 
	.A(state[1]));
   NAND2X1 U39 (.Y(pcen), 
	.B(n88), 
	.A(n34));
   AOI21X1 U40 (.Y(n34), 
	.C(pcsource[1]), 
	.B(pcsource[0]), 
	.A(zero));
   NAND3X1 U41 (.Y(n35), 
	.C(state[2]), 
	.B(state[0]), 
	.A(n36));
   OAI21X1 U42 (.Y(n37), 
	.C(n97), 
	.B(n39), 
	.A(n38));
   OAI21X1 U43 (.Y(n39), 
	.C(n42), 
	.B(n41), 
	.A(n40));
   NAND3X1 U44 (.Y(n38), 
	.C(n45), 
	.B(n44), 
	.A(n43));
   NAND2X1 U45 (.Y(n30), 
	.B(n36), 
	.A(n47));
   NAND2X1 U46 (.Y(memread), 
	.B(n48), 
	.A(n88));
   NAND3X1 U47 (.Y(iord), 
	.C(n48), 
	.B(n46), 
	.A(n32));
   NAND2X1 U48 (.Y(n46), 
	.B(n33), 
	.A(n36));
   NAND3X1 U49 (.Y(n32), 
	.C(n50), 
	.B(n92), 
	.A(state[1]));
   NAND2X1 U50 (.Y(alusrcb[1]), 
	.B(n41), 
	.A(n51));
   NAND2X1 U51 (.Y(alusrcb[0]), 
	.B(n41), 
	.A(n88));
   NAND3X1 U52 (.Y(n52), 
	.C(n53), 
	.B(n49), 
	.A(n44));
   NOR2X1 U53 (.Y(n53), 
	.B(irwrite[3]), 
	.A(irwrite[0]));
   NAND3X1 U54 (.Y(n43), 
	.C(n33), 
	.B(test_so), 
	.A(n96));
   NAND3X1 U55 (.Y(n44), 
	.C(n47), 
	.B(test_so), 
	.A(state[1]));
   NAND3X1 U56 (.Y(alusrca), 
	.C(n42), 
	.B(n55), 
	.A(n51));
   NAND3X1 U57 (.Y(n55), 
	.C(state[2]), 
	.B(n92), 
	.A(n36));
   NOR2X1 U58 (.Y(n36), 
	.B(state[1]), 
	.A(test_so));
   AOI21X1 U59 (.Y(N18), 
	.C(reset), 
	.B(n57), 
	.A(n56));
   NAND3X1 U60 (.Y(n48), 
	.C(n58), 
	.B(state[0]), 
	.A(state[1]));
   NAND3X1 U61 (.Y(n42), 
	.C(n47), 
	.B(state[1]), 
	.A(state[3]));
   AOI22X1 U62 (.Y(n56), 
	.D(n60), 
	.C(n84), 
	.B(n85), 
	.A(n59));
   OAI21X1 U63 (.Y(n62), 
	.C(n97), 
	.B(n64), 
	.A(n63));
   OAI21X1 U64 (.Y(n64), 
	.C(n66), 
	.B(n65), 
	.A(n61));
   NAND3X1 U65 (.Y(n66), 
	.C(n93), 
	.B(n83), 
	.A(n85));
   OAI21X1 U66 (.Y(n65), 
	.C(n60), 
	.B(op[1]), 
	.A(op[2]));
   NAND2X1 U67 (.Y(n60), 
	.B(op[1]), 
	.A(op[2]));
   NAND3X1 U68 (.Y(n61), 
	.C(n68), 
	.B(n93), 
	.A(n67));
   NOR2X1 U69 (.Y(n68), 
	.B(op[0]), 
	.A(op[4]));
   NAND3X1 U70 (.Y(n63), 
	.C(n45), 
	.B(n49), 
	.A(n54));
   NAND3X1 U71 (.Y(n45), 
	.C(n69), 
	.B(n87), 
	.A(n85));
   AOI21X1 U72 (.Y(n69), 
	.C(n67), 
	.B(op[3]), 
	.A(op[5]));
   NAND3X1 U73 (.Y(n49), 
	.C(state[1]), 
	.B(test_so), 
	.A(n33));
   NOR2X1 U74 (.Y(n33), 
	.B(state[2]), 
	.A(n92));
   NAND3X1 U75 (.Y(n54), 
	.C(n58), 
	.B(n96), 
	.A(n92));
   OAI21X1 U76 (.Y(n71), 
	.C(n72), 
	.B(state[0]), 
	.A(state[1]));
   AOI22X1 U77 (.Y(n72), 
	.D(n74), 
	.C(n87), 
	.B(n73), 
	.A(n93));
   NAND3X1 U78 (.Y(n74), 
	.C(n85), 
	.B(n82), 
	.A(op[3]));
   NAND2X1 U79 (.Y(n40), 
	.B(n86), 
	.A(n75));
   NAND3X1 U80 (.Y(n51), 
	.C(n58), 
	.B(n92), 
	.A(state[1]));
   OAI21X1 U81 (.Y(n73), 
	.C(n75), 
	.B(n86), 
	.A(n67));
   NOR3X1 U82 (.Y(n75), 
	.C(op[0]), 
	.B(op[4]), 
	.A(op[1]));
   NOR2X1 U83 (.Y(n67), 
	.B(op[3]), 
	.A(op[5]));
   NAND3X1 U84 (.Y(n41), 
	.C(n58), 
	.B(n96), 
	.A(state[0]));
   NAND3X1 U85 (.Y(n70), 
	.C(n94), 
	.B(test_so), 
	.A(n97));
   NOR2X1 U86 (.Y(n47), 
	.B(state[2]), 
	.A(state[0]));
   DFFPOSX1_SCAN state_reg_0_ (.TI(test_si), 
	.TE(test_se), 
	.Q(state[0]), 
	.D(N15), 
	.CLK(clk));
   DFFPOSX1_SCAN state_reg_3_ (.TI(state[2]), 
	.TE(test_se), 
	.Q(state[3]), 
	.D(N18), 
	.CLK(clk));
   DFFPOSX1_SCAN state_reg_2_ (.TI(n96), 
	.TE(test_se), 
	.Q(state[2]), 
	.D(n77), 
	.CLK(clk));
   DFFPOSX1_SCAN state_reg_1_ (.TI(n92), 
	.TE(test_se), 
	.Q(state[1]), 
	.D(n76), 
	.CLK(clk));
   INVX2 U20 (.Y(n82), 
	.A(op[5]));
   INVX2 U21 (.Y(n77), 
	.A(n62));
   INVX2 U22 (.Y(n76), 
	.A(n37));
   INVX2 U23 (.Y(n83), 
	.A(n67));
   INVX2 U24 (.Y(n84), 
	.A(n61));
   INVX2 U25 (.Y(n85), 
	.A(n40));
   INVX2 U26 (.Y(n86), 
	.A(op[2]));
   INVX2 U27 (.Y(n87), 
	.A(n51));
   INVX2 U28 (.Y(n88), 
	.A(n52));
   INVX2 U29 (.Y(irwrite[3]), 
	.A(n54));
   INVX2 U30 (.Y(irwrite[0]), 
	.A(n43));
   INVX2 U31 (.Y(pcsource[0]), 
	.A(n55));
   INVX2 U32 (.Y(n92), 
	.A(state[0]));
   INVX2 U33 (.Y(n93), 
	.A(n41));
   INVX2 U34 (.Y(n94), 
	.A(n47));
   INVX2 U35 (.Y(test_so), 
	.A(state[3]));
   INVX2 U36 (.Y(n96), 
	.A(state[1]));
   INVX2 U87 (.Y(n97), 
	.A(reset));
endmodule

module mips (
	clk, 
	reset, 
	memdata, 
	memread, 
	memwrite, 
	adr, 
	writedata, 
	test_si, 
	test_so, 
	test_se);
   input clk;
   input reset;
   input [7:0] memdata;
   output memread;
   output memwrite;
   output [7:0] adr;
   output [7:0] writedata;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire zero;
   wire alusrca;
   wire memtoreg;
   wire iord;
   wire pcen;
   wire regwrite;
   wire regdst;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n38;
   wire n40;
   wire SYNOPSYS_UNCONNECTED_1;
   wire SYNOPSYS_UNCONNECTED_2;
   wire SYNOPSYS_UNCONNECTED_3;
   wire SYNOPSYS_UNCONNECTED_4;
   wire SYNOPSYS_UNCONNECTED_5;
   wire SYNOPSYS_UNCONNECTED_6;
   wire SYNOPSYS_UNCONNECTED_7;
   wire SYNOPSYS_UNCONNECTED_8;
   wire SYNOPSYS_UNCONNECTED_9;
   wire SYNOPSYS_UNCONNECTED_10;
   wire SYNOPSYS_UNCONNECTED_11;
   wire SYNOPSYS_UNCONNECTED_12;
   wire SYNOPSYS_UNCONNECTED_13;
   wire SYNOPSYS_UNCONNECTED_14;
   wire SYNOPSYS_UNCONNECTED_15;
   wire SYNOPSYS_UNCONNECTED_16;
   wire SYNOPSYS_UNCONNECTED_17;
   wire SYNOPSYS_UNCONNECTED_18;
   wire SYNOPSYS_UNCONNECTED_19;
   wire SYNOPSYS_UNCONNECTED_20;
   wire [31:0] instr;
   wire [1:0] pcsource;
   wire [1:0] alusrcb;
   wire [1:0] aluop;
   wire [3:0] irwrite;
   wire [2:0] alucont;

   controller_test_1 cont (.clk(clk), 
	.reset(n20), 
	.op({ instr[31],
		instr[30],
		instr[29],
		instr[28],
		instr[27],
		instr[26] }), 
	.zero(zero), 
	.memread(memread), 
	.memwrite(memwrite), 
	.alusrca(alusrca), 
	.memtoreg(memtoreg), 
	.iord(iord), 
	.pcen(pcen), 
	.regwrite(regwrite), 
	.regdst(regdst), 
	.pcsource({ pcsource[1],
		pcsource[0] }), 
	.alusrcb({ alusrcb[1],
		alusrcb[0] }), 
	.aluop({ aluop[1],
		aluop[0] }), 
	.irwrite({ irwrite[3],
		irwrite[2],
		irwrite[1],
		irwrite[0] }), 
	.test_si(test_si), 
	.test_so(n38), 
	.test_se(test_se));
   alucontrol ac (.aluop({ aluop[1],
		aluop[0] }), 
	.funct({ instr[5],
		instr[4],
		instr[3],
		instr[2],
		instr[1],
		instr[0] }), 
	.alucont({ alucont[2],
		alucont[1],
		alucont[0] }));
   datapath_test_1 dp (.clk(clk), 
	.reset(n20), 
	.memdata({ n36,
		n34,
		n32,
		n30,
		n28,
		n26,
		n24,
		n22 }), 
	.alusrca(alusrca), 
	.memtoreg(memtoreg), 
	.iord(iord), 
	.pcen(pcen), 
	.regwrite(regwrite), 
	.regdst(regdst), 
	.pcsource({ pcsource[1],
		pcsource[0] }), 
	.alusrcb({ alusrcb[1],
		alusrcb[0] }), 
	.irwrite({ irwrite[3],
		irwrite[2],
		irwrite[1],
		irwrite[0] }), 
	.alucont({ alucont[2],
		alucont[1],
		alucont[0] }), 
	.zero(zero), 
	.instr({ instr[31],
		instr[30],
		instr[29],
		instr[28],
		instr[27],
		instr[26],
		SYNOPSYS_UNCONNECTED_1,
		SYNOPSYS_UNCONNECTED_2,
		SYNOPSYS_UNCONNECTED_3,
		SYNOPSYS_UNCONNECTED_4,
		SYNOPSYS_UNCONNECTED_5,
		SYNOPSYS_UNCONNECTED_6,
		SYNOPSYS_UNCONNECTED_7,
		SYNOPSYS_UNCONNECTED_8,
		SYNOPSYS_UNCONNECTED_9,
		SYNOPSYS_UNCONNECTED_10,
		SYNOPSYS_UNCONNECTED_11,
		SYNOPSYS_UNCONNECTED_12,
		SYNOPSYS_UNCONNECTED_13,
		SYNOPSYS_UNCONNECTED_14,
		SYNOPSYS_UNCONNECTED_15,
		SYNOPSYS_UNCONNECTED_16,
		SYNOPSYS_UNCONNECTED_17,
		SYNOPSYS_UNCONNECTED_18,
		SYNOPSYS_UNCONNECTED_19,
		SYNOPSYS_UNCONNECTED_20,
		instr[5],
		instr[4],
		instr[3],
		instr[2],
		instr[1],
		instr[0] }), 
	.adr({ adr[7],
		adr[6],
		adr[5],
		adr[4],
		adr[3],
		adr[2],
		adr[1],
		adr[0] }), 
	.writedata({ writedata[7],
		writedata[6],
		writedata[5],
		writedata[4],
		writedata[3],
		writedata[2],
		writedata[1],
		writedata[0] }), 
	.test_si(n38), 
	.test_se(test_se));
   INVX2 U1 (.Y(n19), 
	.A(reset));
   INVX2 U2 (.Y(n20), 
	.A(n19));
   INVX2 U3 (.Y(n21), 
	.A(memdata[0]));
   INVX2 U4 (.Y(n22), 
	.A(n21));
   INVX2 U5 (.Y(n23), 
	.A(memdata[1]));
   INVX2 U6 (.Y(n24), 
	.A(n23));
   INVX2 U7 (.Y(n25), 
	.A(memdata[2]));
   INVX2 U8 (.Y(n26), 
	.A(n25));
   INVX2 U9 (.Y(n27), 
	.A(memdata[3]));
   INVX2 U10 (.Y(n28), 
	.A(n27));
   INVX2 U11 (.Y(n29), 
	.A(memdata[4]));
   INVX2 U12 (.Y(n30), 
	.A(n29));
   INVX2 U13 (.Y(n31), 
	.A(memdata[5]));
   INVX2 U14 (.Y(n32), 
	.A(n31));
   INVX2 U15 (.Y(n33), 
	.A(memdata[6]));
   INVX2 U16 (.Y(n34), 
	.A(n33));
   INVX2 U17 (.Y(n35), 
	.A(memdata[7]));
   INVX2 U18 (.Y(n36), 
	.A(n35));
   INVX8 U19 (.Y(n40), 
	.A(writedata[7]));
   INVX8 U20 (.Y(test_so), 
	.A(n40));
endmodule

