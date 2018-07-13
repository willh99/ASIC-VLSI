
module alucontrol ( aluop, funct, alucont );
  input [1:0] aluop;
  input [5:0] funct;
  output [2:0] alucont;
  wire   n8, n9, n10, n11, n12, n13, n14, n7, n15, n16, n17, n18, n19;

  INVX2 U3 ( .A(n13), .Y(alucont[0]) );
  OAI21X1 U10 ( .A(aluop[1]), .B(n19), .C(n8), .Y(alucont[2]) );
  OAI21X1 U11 ( .A(n9), .B(n10), .C(aluop[1]), .Y(n8) );
  OAI21X1 U12 ( .A(funct[2]), .B(n18), .C(n17), .Y(n10) );
  OAI21X1 U13 ( .A(n11), .B(n12), .C(aluop[1]), .Y(alucont[1]) );
  OAI21X1 U14 ( .A(funct[1]), .B(n15), .C(funct[5]), .Y(n12) );
  NAND3X1 U15 ( .A(n16), .B(n7), .C(n18), .Y(n11) );
  OAI21X1 U16 ( .A(n9), .B(n14), .C(aluop[1]), .Y(n13) );
  OAI21X1 U17 ( .A(n17), .B(n16), .C(n18), .Y(n14) );
  NAND3X1 U18 ( .A(n15), .B(n7), .C(funct[5]), .Y(n9) );
  INVX2 U4 ( .A(funct[4]), .Y(n7) );
  INVX2 U5 ( .A(funct[3]), .Y(n15) );
  INVX2 U6 ( .A(funct[2]), .Y(n16) );
  INVX2 U7 ( .A(funct[1]), .Y(n17) );
  INVX2 U8 ( .A(funct[0]), .Y(n18) );
  INVX2 U9 ( .A(aluop[0]), .Y(n19) );
endmodule


module mux2reg ( d0, d1, s, y );
  input [2:0] d0;
  input [2:0] d1;
  output [2:0] y;
  input s;
  wire   n5, n6, n7, n2;

  INVX2 U1 ( .A(n5), .Y(y[2]) );
  INVX2 U2 ( .A(n6), .Y(y[1]) );
  INVX2 U3 ( .A(n7), .Y(y[0]) );
  AOI22X1 U5 ( .A(d0[2]), .B(n2), .C(s), .D(d1[2]), .Y(n5) );
  AOI22X1 U6 ( .A(d0[1]), .B(n2), .C(d1[1]), .D(s), .Y(n6) );
  AOI22X1 U7 ( .A(d0[0]), .B(n2), .C(d1[0]), .D(s), .Y(n7) );
  INVX2 U4 ( .A(s), .Y(n2) );
endmodule


module mux2_2 ( d0, d1, s, y );
  input [7:0] d0;
  input [7:0] d1;
  output [7:0] y;
  input s;
  wire   n10, n11, n12, n13, n14, n15, n16, n17, n18;

  INVX2 U1 ( .A(n10), .Y(y[7]) );
  INVX2 U2 ( .A(n11), .Y(y[6]) );
  INVX2 U3 ( .A(n12), .Y(y[5]) );
  INVX2 U4 ( .A(n13), .Y(y[4]) );
  INVX2 U5 ( .A(n14), .Y(y[3]) );
  INVX2 U6 ( .A(n15), .Y(y[2]) );
  INVX2 U7 ( .A(n16), .Y(y[1]) );
  INVX2 U8 ( .A(n17), .Y(y[0]) );
  AOI22X1 U10 ( .A(d0[7]), .B(n18), .C(s), .D(d1[7]), .Y(n10) );
  AOI22X1 U11 ( .A(d0[6]), .B(n18), .C(d1[6]), .D(s), .Y(n11) );
  AOI22X1 U12 ( .A(d0[5]), .B(n18), .C(d1[5]), .D(s), .Y(n12) );
  AOI22X1 U13 ( .A(d0[4]), .B(n18), .C(d1[4]), .D(s), .Y(n13) );
  AOI22X1 U14 ( .A(d0[3]), .B(n18), .C(d1[3]), .D(s), .Y(n14) );
  AOI22X1 U15 ( .A(d0[2]), .B(n18), .C(d1[2]), .D(s), .Y(n15) );
  AOI22X1 U16 ( .A(d0[1]), .B(n18), .C(d1[1]), .D(s), .Y(n16) );
  AOI22X1 U17 ( .A(d0[0]), .B(n18), .C(d1[0]), .D(s), .Y(n17) );
  INVX2 U9 ( .A(s), .Y(n18) );
endmodule


module mux2_1 ( d0, d1, s, y );
  input [7:0] d0;
  input [7:0] d1;
  output [7:0] y;
  input s;
  wire   n18, n19, n20, n21, n22, n23, n24, n25, n26;

  INVX2 U1 ( .A(n26), .Y(y[7]) );
  INVX2 U2 ( .A(n25), .Y(y[6]) );
  INVX2 U3 ( .A(n24), .Y(y[5]) );
  INVX2 U4 ( .A(n23), .Y(y[4]) );
  INVX2 U5 ( .A(n22), .Y(y[3]) );
  INVX2 U6 ( .A(n21), .Y(y[2]) );
  INVX2 U7 ( .A(n20), .Y(y[1]) );
  INVX2 U8 ( .A(n19), .Y(y[0]) );
  AOI22X1 U10 ( .A(d0[7]), .B(n18), .C(s), .D(d1[7]), .Y(n26) );
  AOI22X1 U11 ( .A(d0[6]), .B(n18), .C(d1[6]), .D(s), .Y(n25) );
  AOI22X1 U12 ( .A(d0[5]), .B(n18), .C(d1[5]), .D(s), .Y(n24) );
  AOI22X1 U13 ( .A(d0[4]), .B(n18), .C(d1[4]), .D(s), .Y(n23) );
  AOI22X1 U14 ( .A(d0[3]), .B(n18), .C(d1[3]), .D(s), .Y(n22) );
  AOI22X1 U15 ( .A(d0[2]), .B(n18), .C(d1[2]), .D(s), .Y(n21) );
  AOI22X1 U16 ( .A(d0[1]), .B(n18), .C(d1[1]), .D(s), .Y(n20) );
  AOI22X1 U17 ( .A(d0[0]), .B(n18), .C(d1[0]), .D(s), .Y(n19) );
  INVX2 U9 ( .A(s), .Y(n18) );
endmodule


module mux2_0 ( d0, d1, s, y );
  input [7:0] d0;
  input [7:0] d1;
  output [7:0] y;
  input s;
  wire   n18, n19, n20, n21, n22, n23, n24, n25, n26;

  INVX2 U1 ( .A(n26), .Y(y[7]) );
  INVX2 U2 ( .A(n25), .Y(y[6]) );
  INVX2 U3 ( .A(n24), .Y(y[5]) );
  INVX2 U4 ( .A(n23), .Y(y[4]) );
  INVX2 U5 ( .A(n22), .Y(y[3]) );
  INVX2 U6 ( .A(n21), .Y(y[2]) );
  INVX2 U7 ( .A(n20), .Y(y[1]) );
  INVX2 U8 ( .A(n19), .Y(y[0]) );
  AOI22X1 U10 ( .A(d0[7]), .B(n18), .C(s), .D(d1[7]), .Y(n26) );
  AOI22X1 U11 ( .A(d0[6]), .B(n18), .C(d1[6]), .D(s), .Y(n25) );
  AOI22X1 U12 ( .A(d0[5]), .B(n18), .C(d1[5]), .D(s), .Y(n24) );
  AOI22X1 U13 ( .A(d0[4]), .B(n18), .C(d1[4]), .D(s), .Y(n23) );
  AOI22X1 U14 ( .A(d0[3]), .B(n18), .C(d1[3]), .D(s), .Y(n22) );
  AOI22X1 U15 ( .A(d0[2]), .B(n18), .C(d1[2]), .D(s), .Y(n21) );
  AOI22X1 U16 ( .A(d0[1]), .B(n18), .C(d1[1]), .D(s), .Y(n20) );
  AOI22X1 U17 ( .A(d0[0]), .B(n18), .C(d1[0]), .D(s), .Y(n19) );
  INVX2 U9 ( .A(s), .Y(n18) );
endmodule


module alu_DW01_add_0 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;

  wire   [7:1] carry;

  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(carry[1]), .YC(carry[2]), .YS(SUM[1]) );
  FAX1 U1_0 ( .A(A[0]), .B(B[0]), .C(CI), .YC(carry[1]), .YS(SUM[0]) );
endmodule


module alu ( a, b, alucont, result );
  input [7:0] a;
  input [7:0] b;
  input [2:0] alucont;
  output [7:0] result;
  wire   n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n18, n19, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58;
  wire   [7:0] b2;
  wire   [7:0] sum;

  OAI21X1 U21 ( .A(n20), .B(n41), .C(n21), .Y(result[7]) );
  AOI22X1 U22 ( .A(b[7]), .B(n22), .C(n56), .D(a[7]), .Y(n21) );
  OAI21X1 U23 ( .A(alucont[1]), .B(n42), .C(n23), .Y(n22) );
  OAI21X1 U24 ( .A(n20), .B(n43), .C(n24), .Y(result[6]) );
  AOI22X1 U25 ( .A(b[6]), .B(n25), .C(a[6]), .D(n56), .Y(n24) );
  OAI21X1 U26 ( .A(alucont[1]), .B(n44), .C(n23), .Y(n25) );
  OAI21X1 U27 ( .A(n20), .B(n45), .C(n26), .Y(result[5]) );
  AOI22X1 U28 ( .A(b[5]), .B(n27), .C(a[5]), .D(n56), .Y(n26) );
  OAI21X1 U29 ( .A(alucont[1]), .B(n46), .C(n23), .Y(n27) );
  OAI21X1 U30 ( .A(n20), .B(n47), .C(n28), .Y(result[4]) );
  AOI22X1 U31 ( .A(b[4]), .B(n29), .C(a[4]), .D(n56), .Y(n28) );
  OAI21X1 U32 ( .A(alucont[1]), .B(n48), .C(n23), .Y(n29) );
  OAI21X1 U33 ( .A(n20), .B(n49), .C(n30), .Y(result[3]) );
  AOI22X1 U34 ( .A(b[3]), .B(n31), .C(a[3]), .D(n56), .Y(n30) );
  OAI21X1 U35 ( .A(alucont[1]), .B(n50), .C(n23), .Y(n31) );
  OAI21X1 U36 ( .A(n20), .B(n51), .C(n32), .Y(result[2]) );
  AOI22X1 U37 ( .A(b[2]), .B(n33), .C(a[2]), .D(n56), .Y(n32) );
  OAI21X1 U38 ( .A(alucont[1]), .B(n52), .C(n23), .Y(n33) );
  OAI21X1 U39 ( .A(n20), .B(n53), .C(n34), .Y(result[1]) );
  AOI22X1 U40 ( .A(b[1]), .B(n35), .C(a[1]), .D(n56), .Y(n34) );
  OAI21X1 U41 ( .A(alucont[1]), .B(n54), .C(n23), .Y(n35) );
  NAND2X1 U42 ( .A(n36), .B(n37), .Y(result[0]) );
  AOI22X1 U43 ( .A(n38), .B(sum[7]), .C(b[0]), .D(n39), .Y(n37) );
  OAI21X1 U44 ( .A(alucont[1]), .B(n55), .C(n23), .Y(n39) );
  NOR2X1 U45 ( .A(n58), .B(n18), .Y(n38) );
  AOI22X1 U46 ( .A(a[0]), .B(n56), .C(sum[0]), .D(n57), .Y(n36) );
  NAND2X1 U47 ( .A(alucont[1]), .B(n58), .Y(n20) );
  NAND2X1 U48 ( .A(alucont[0]), .B(n18), .Y(n23) );
  XOR2X1 U49 ( .A(b[7]), .B(alucont[2]), .Y(b2[7]) );
  XOR2X1 U50 ( .A(b[6]), .B(alucont[2]), .Y(b2[6]) );
  XOR2X1 U51 ( .A(b[5]), .B(alucont[2]), .Y(b2[5]) );
  XOR2X1 U52 ( .A(b[4]), .B(n40), .Y(b2[4]) );
  XOR2X1 U53 ( .A(b[3]), .B(n40), .Y(b2[3]) );
  XOR2X1 U54 ( .A(b[2]), .B(n40), .Y(b2[2]) );
  XOR2X1 U55 ( .A(b[1]), .B(n40), .Y(b2[1]) );
  XOR2X1 U56 ( .A(b[0]), .B(n40), .Y(b2[0]) );
  alu_DW01_add_0 add_1_root_add_317_2 ( .A(a), .B(b2), .CI(n40), .SUM(sum) );
  INVX2 U2 ( .A(n19), .Y(n40) );
  INVX2 U3 ( .A(alucont[2]), .Y(n19) );
  INVX2 U4 ( .A(alucont[1]), .Y(n18) );
  INVX2 U5 ( .A(sum[7]), .Y(n41) );
  INVX2 U6 ( .A(a[7]), .Y(n42) );
  INVX2 U7 ( .A(sum[6]), .Y(n43) );
  INVX2 U8 ( .A(a[6]), .Y(n44) );
  INVX2 U9 ( .A(sum[5]), .Y(n45) );
  INVX2 U10 ( .A(a[5]), .Y(n46) );
  INVX2 U11 ( .A(sum[4]), .Y(n47) );
  INVX2 U12 ( .A(a[4]), .Y(n48) );
  INVX2 U13 ( .A(sum[3]), .Y(n49) );
  INVX2 U14 ( .A(a[3]), .Y(n50) );
  INVX2 U15 ( .A(sum[2]), .Y(n51) );
  INVX2 U16 ( .A(a[2]), .Y(n52) );
  INVX2 U17 ( .A(sum[1]), .Y(n53) );
  INVX2 U18 ( .A(a[1]), .Y(n54) );
  INVX2 U19 ( .A(a[0]), .Y(n55) );
  INVX2 U20 ( .A(n23), .Y(n56) );
  INVX2 U57 ( .A(n20), .Y(n57) );
  INVX2 U58 ( .A(alucont[0]), .Y(n58) );
endmodule


module zerodetect ( a, y );
  input [7:0] a;
  output y;
  wire   n1, n2, n3, n4, n5, n6;

  NOR2X1 U1 ( .A(n1), .B(n2), .Y(y) );
  NAND2X1 U2 ( .A(n3), .B(n4), .Y(n2) );
  NOR2X1 U3 ( .A(a[3]), .B(a[2]), .Y(n4) );
  NOR2X1 U4 ( .A(a[1]), .B(a[0]), .Y(n3) );
  NAND2X1 U5 ( .A(n5), .B(n6), .Y(n1) );
  NOR2X1 U6 ( .A(a[7]), .B(a[6]), .Y(n6) );
  NOR2X1 U7 ( .A(a[5]), .B(a[4]), .Y(n5) );
endmodule


module flop_test_0 ( clk, d, q, test_si, test_se );
  input [7:0] d;
  output [7:0] q;
  input clk, test_si, test_se;


  DFFPOSX1_SCAN q_reg_7_ ( .D(d[7]), .TI(q[6]), .TE(test_se), .CLK(clk), .Q(
        q[7]) );
  DFFPOSX1_SCAN q_reg_6_ ( .D(d[6]), .TI(q[5]), .TE(test_se), .CLK(clk), .Q(
        q[6]) );
  DFFPOSX1_SCAN q_reg_5_ ( .D(d[5]), .TI(q[4]), .TE(test_se), .CLK(clk), .Q(
        q[5]) );
  DFFPOSX1_SCAN q_reg_4_ ( .D(d[4]), .TI(q[3]), .TE(test_se), .CLK(clk), .Q(
        q[4]) );
  DFFPOSX1_SCAN q_reg_3_ ( .D(d[3]), .TI(q[2]), .TE(test_se), .CLK(clk), .Q(
        q[3]) );
  DFFPOSX1_SCAN q_reg_2_ ( .D(d[2]), .TI(q[1]), .TE(test_se), .CLK(clk), .Q(
        q[2]) );
  DFFPOSX1_SCAN q_reg_1_ ( .D(d[1]), .TI(q[0]), .TE(test_se), .CLK(clk), .Q(
        q[1]) );
  DFFPOSX1_SCAN q_reg_0_ ( .D(d[0]), .TI(test_si), .TE(test_se), .CLK(clk), 
        .Q(q[0]) );
endmodule


module flopen_test_0 ( clk, en, d, q, test_si, test_se );
  input [7:0] d;
  output [7:0] q;
  input clk, en, test_si, test_se;
  wire   n10, n11, n12, n13, n14, n15, n16, n17, n26, n27, n28, n29, n30, n31,
         n32, n33, n42;

  AOI22X1 U11 ( .A(en), .B(d[7]), .C(q[7]), .D(n42), .Y(n10) );
  AOI22X1 U12 ( .A(d[6]), .B(en), .C(q[6]), .D(n42), .Y(n11) );
  AOI22X1 U13 ( .A(d[5]), .B(en), .C(q[5]), .D(n42), .Y(n12) );
  AOI22X1 U14 ( .A(d[4]), .B(en), .C(q[4]), .D(n42), .Y(n13) );
  AOI22X1 U15 ( .A(d[3]), .B(en), .C(q[3]), .D(n42), .Y(n14) );
  AOI22X1 U16 ( .A(d[2]), .B(en), .C(q[2]), .D(n42), .Y(n15) );
  AOI22X1 U17 ( .A(d[1]), .B(en), .C(q[1]), .D(n42), .Y(n16) );
  AOI22X1 U18 ( .A(d[0]), .B(en), .C(q[0]), .D(n42), .Y(n17) );
  DFFPOSX1_SCAN q_reg_7_ ( .D(n33), .TI(q[6]), .TE(test_se), .CLK(clk), .Q(
        q[7]) );
  DFFPOSX1_SCAN q_reg_6_ ( .D(n32), .TI(q[5]), .TE(test_se), .CLK(clk), .Q(
        q[6]) );
  DFFPOSX1_SCAN q_reg_5_ ( .D(n31), .TI(q[4]), .TE(test_se), .CLK(clk), .Q(
        q[5]) );
  DFFPOSX1_SCAN q_reg_4_ ( .D(n30), .TI(q[3]), .TE(test_se), .CLK(clk), .Q(
        q[4]) );
  DFFPOSX1_SCAN q_reg_3_ ( .D(n29), .TI(q[2]), .TE(test_se), .CLK(clk), .Q(
        q[3]) );
  DFFPOSX1_SCAN q_reg_2_ ( .D(n28), .TI(q[1]), .TE(test_se), .CLK(clk), .Q(
        q[2]) );
  DFFPOSX1_SCAN q_reg_1_ ( .D(n27), .TI(q[0]), .TE(test_se), .CLK(clk), .Q(
        q[1]) );
  DFFPOSX1_SCAN q_reg_0_ ( .D(n26), .TI(test_si), .TE(test_se), .CLK(clk), .Q(
        q[0]) );
  INVX2 U10 ( .A(n10), .Y(n33) );
  INVX2 U19 ( .A(n11), .Y(n32) );
  INVX2 U20 ( .A(n12), .Y(n31) );
  INVX2 U21 ( .A(n13), .Y(n30) );
  INVX2 U22 ( .A(n14), .Y(n29) );
  INVX2 U23 ( .A(n15), .Y(n28) );
  INVX2 U24 ( .A(n16), .Y(n27) );
  INVX2 U25 ( .A(n17), .Y(n26) );
  INVX2 U26 ( .A(en), .Y(n42) );
endmodule


module flopen_test_1 ( clk, en, d, q, test_si, test_se );
  input [7:0] d;
  output [7:0] q;
  input clk, en, test_si, test_se;
  wire   n26, n27, n28, n29, n30, n31, n32, n33, n42, n43, n44, n45, n46, n47,
         n48, n49, n50;

  AOI22X1 U11 ( .A(en), .B(d[7]), .C(q[7]), .D(n42), .Y(n50) );
  AOI22X1 U12 ( .A(d[6]), .B(en), .C(q[6]), .D(n42), .Y(n49) );
  AOI22X1 U13 ( .A(d[5]), .B(en), .C(q[5]), .D(n42), .Y(n48) );
  AOI22X1 U14 ( .A(d[4]), .B(en), .C(q[4]), .D(n42), .Y(n47) );
  AOI22X1 U15 ( .A(d[3]), .B(en), .C(q[3]), .D(n42), .Y(n46) );
  AOI22X1 U16 ( .A(d[2]), .B(en), .C(q[2]), .D(n42), .Y(n45) );
  AOI22X1 U17 ( .A(d[1]), .B(en), .C(q[1]), .D(n42), .Y(n44) );
  AOI22X1 U18 ( .A(d[0]), .B(en), .C(q[0]), .D(n42), .Y(n43) );
  DFFPOSX1_SCAN q_reg_7_ ( .D(n33), .TI(q[6]), .TE(test_se), .CLK(clk), .Q(
        q[7]) );
  DFFPOSX1_SCAN q_reg_6_ ( .D(n32), .TI(q[5]), .TE(test_se), .CLK(clk), .Q(
        q[6]) );
  DFFPOSX1_SCAN q_reg_5_ ( .D(n31), .TI(q[4]), .TE(test_se), .CLK(clk), .Q(
        q[5]) );
  DFFPOSX1_SCAN q_reg_4_ ( .D(n30), .TI(q[3]), .TE(test_se), .CLK(clk), .Q(
        q[4]) );
  DFFPOSX1_SCAN q_reg_3_ ( .D(n29), .TI(q[2]), .TE(test_se), .CLK(clk), .Q(
        q[3]) );
  DFFPOSX1_SCAN q_reg_2_ ( .D(n28), .TI(q[1]), .TE(test_se), .CLK(clk), .Q(
        q[2]) );
  DFFPOSX1_SCAN q_reg_1_ ( .D(n27), .TI(q[0]), .TE(test_se), .CLK(clk), .Q(
        q[1]) );
  DFFPOSX1_SCAN q_reg_0_ ( .D(n26), .TI(test_si), .TE(test_se), .CLK(clk), .Q(
        q[0]) );
  INVX2 U10 ( .A(n50), .Y(n33) );
  INVX2 U19 ( .A(n49), .Y(n32) );
  INVX2 U20 ( .A(n48), .Y(n31) );
  INVX2 U21 ( .A(n47), .Y(n30) );
  INVX2 U22 ( .A(n46), .Y(n29) );
  INVX2 U23 ( .A(n45), .Y(n28) );
  INVX2 U24 ( .A(n44), .Y(n27) );
  INVX2 U25 ( .A(n43), .Y(n26) );
  INVX2 U26 ( .A(en), .Y(n42) );
endmodule


module flopen_test_2 ( clk, en, d, q, test_si, test_se );
  input [7:0] d;
  output [7:0] q;
  input clk, en, test_si, test_se;
  wire   n26, n27, n28, n29, n30, n31, n32, n33, n42, n43, n44, n45, n46, n47,
         n48, n49, n50;

  AOI22X1 U11 ( .A(en), .B(d[7]), .C(q[7]), .D(n42), .Y(n50) );
  AOI22X1 U12 ( .A(d[6]), .B(en), .C(q[6]), .D(n42), .Y(n49) );
  AOI22X1 U13 ( .A(d[5]), .B(en), .C(q[5]), .D(n42), .Y(n48) );
  AOI22X1 U14 ( .A(d[4]), .B(en), .C(q[4]), .D(n42), .Y(n47) );
  AOI22X1 U15 ( .A(d[3]), .B(en), .C(q[3]), .D(n42), .Y(n46) );
  AOI22X1 U16 ( .A(d[2]), .B(en), .C(q[2]), .D(n42), .Y(n45) );
  AOI22X1 U17 ( .A(d[1]), .B(en), .C(q[1]), .D(n42), .Y(n44) );
  AOI22X1 U18 ( .A(d[0]), .B(en), .C(q[0]), .D(n42), .Y(n43) );
  DFFPOSX1_SCAN q_reg_7_ ( .D(n33), .TI(q[6]), .TE(test_se), .CLK(clk), .Q(
        q[7]) );
  DFFPOSX1_SCAN q_reg_6_ ( .D(n32), .TI(q[5]), .TE(test_se), .CLK(clk), .Q(
        q[6]) );
  DFFPOSX1_SCAN q_reg_5_ ( .D(n31), .TI(q[4]), .TE(test_se), .CLK(clk), .Q(
        q[5]) );
  DFFPOSX1_SCAN q_reg_4_ ( .D(n30), .TI(q[3]), .TE(test_se), .CLK(clk), .Q(
        q[4]) );
  DFFPOSX1_SCAN q_reg_3_ ( .D(n29), .TI(q[2]), .TE(test_se), .CLK(clk), .Q(
        q[3]) );
  DFFPOSX1_SCAN q_reg_2_ ( .D(n28), .TI(q[1]), .TE(test_se), .CLK(clk), .Q(
        q[2]) );
  DFFPOSX1_SCAN q_reg_1_ ( .D(n27), .TI(q[0]), .TE(test_se), .CLK(clk), .Q(
        q[1]) );
  DFFPOSX1_SCAN q_reg_0_ ( .D(n26), .TI(test_si), .TE(test_se), .CLK(clk), .Q(
        q[0]) );
  INVX2 U10 ( .A(n50), .Y(n33) );
  INVX2 U19 ( .A(n49), .Y(n32) );
  INVX2 U20 ( .A(n48), .Y(n31) );
  INVX2 U21 ( .A(n47), .Y(n30) );
  INVX2 U22 ( .A(n46), .Y(n29) );
  INVX2 U23 ( .A(n45), .Y(n28) );
  INVX2 U24 ( .A(n44), .Y(n27) );
  INVX2 U25 ( .A(n43), .Y(n26) );
  INVX2 U26 ( .A(en), .Y(n42) );
endmodule


module flopen_test_3 ( clk, en, d, q, test_si, test_se );
  input [7:0] d;
  output [7:0] q;
  input clk, en, test_si, test_se;
  wire   n26, n27, n28, n29, n30, n31, n32, n33, n42, n43, n44, n45, n46, n47,
         n48, n49, n50;

  AOI22X1 U11 ( .A(en), .B(d[7]), .C(q[7]), .D(n42), .Y(n50) );
  AOI22X1 U12 ( .A(d[6]), .B(en), .C(q[6]), .D(n42), .Y(n49) );
  AOI22X1 U13 ( .A(d[5]), .B(en), .C(q[5]), .D(n42), .Y(n48) );
  AOI22X1 U14 ( .A(d[4]), .B(en), .C(q[4]), .D(n42), .Y(n47) );
  AOI22X1 U15 ( .A(d[3]), .B(en), .C(q[3]), .D(n42), .Y(n46) );
  AOI22X1 U16 ( .A(d[2]), .B(en), .C(q[2]), .D(n42), .Y(n45) );
  AOI22X1 U17 ( .A(d[1]), .B(en), .C(q[1]), .D(n42), .Y(n44) );
  AOI22X1 U18 ( .A(d[0]), .B(en), .C(q[0]), .D(n42), .Y(n43) );
  DFFPOSX1_SCAN q_reg_7_ ( .D(n33), .TI(q[6]), .TE(test_se), .CLK(clk), .Q(
        q[7]) );
  DFFPOSX1_SCAN q_reg_6_ ( .D(n32), .TI(q[5]), .TE(test_se), .CLK(clk), .Q(
        q[6]) );
  DFFPOSX1_SCAN q_reg_5_ ( .D(n31), .TI(q[4]), .TE(test_se), .CLK(clk), .Q(
        q[5]) );
  DFFPOSX1_SCAN q_reg_4_ ( .D(n30), .TI(q[3]), .TE(test_se), .CLK(clk), .Q(
        q[4]) );
  DFFPOSX1_SCAN q_reg_3_ ( .D(n29), .TI(q[2]), .TE(test_se), .CLK(clk), .Q(
        q[3]) );
  DFFPOSX1_SCAN q_reg_2_ ( .D(n28), .TI(q[1]), .TE(test_se), .CLK(clk), .Q(
        q[2]) );
  DFFPOSX1_SCAN q_reg_1_ ( .D(n27), .TI(q[0]), .TE(test_se), .CLK(clk), .Q(
        q[1]) );
  DFFPOSX1_SCAN q_reg_0_ ( .D(n26), .TI(test_si), .TE(test_se), .CLK(clk), .Q(
        q[0]) );
  INVX2 U10 ( .A(n50), .Y(n33) );
  INVX2 U19 ( .A(n49), .Y(n32) );
  INVX2 U20 ( .A(n48), .Y(n31) );
  INVX2 U21 ( .A(n47), .Y(n30) );
  INVX2 U22 ( .A(n46), .Y(n29) );
  INVX2 U23 ( .A(n45), .Y(n28) );
  INVX2 U24 ( .A(n44), .Y(n27) );
  INVX2 U25 ( .A(n43), .Y(n26) );
  INVX2 U26 ( .A(en), .Y(n42) );
endmodule


module flop_test_1 ( clk, d, q, test_si, test_se );
  input [7:0] d;
  output [7:0] q;
  input clk, test_si, test_se;


  DFFPOSX1_SCAN q_reg_7_ ( .D(d[7]), .TI(q[6]), .TE(test_se), .CLK(clk), .Q(
        q[7]) );
  DFFPOSX1_SCAN q_reg_6_ ( .D(d[6]), .TI(q[5]), .TE(test_se), .CLK(clk), .Q(
        q[6]) );
  DFFPOSX1_SCAN q_reg_5_ ( .D(d[5]), .TI(q[4]), .TE(test_se), .CLK(clk), .Q(
        q[5]) );
  DFFPOSX1_SCAN q_reg_4_ ( .D(d[4]), .TI(q[3]), .TE(test_se), .CLK(clk), .Q(
        q[4]) );
  DFFPOSX1_SCAN q_reg_3_ ( .D(d[3]), .TI(q[2]), .TE(test_se), .CLK(clk), .Q(
        q[3]) );
  DFFPOSX1_SCAN q_reg_2_ ( .D(d[2]), .TI(q[1]), .TE(test_se), .CLK(clk), .Q(
        q[2]) );
  DFFPOSX1_SCAN q_reg_1_ ( .D(d[1]), .TI(q[0]), .TE(test_se), .CLK(clk), .Q(
        q[1]) );
  DFFPOSX1_SCAN q_reg_0_ ( .D(d[0]), .TI(test_si), .TE(test_se), .CLK(clk), 
        .Q(q[0]) );
endmodule


module flopenr_test_1 ( clk, reset, en, d, q, test_si, test_se );
  input [7:0] d;
  output [7:0] q;
  input clk, reset, en, test_si, test_se;
  wire   n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n36;

  AOI22X1 U11 ( .A(q[7]), .B(n11), .C(d[7]), .D(n12), .Y(n10) );
  AOI22X1 U12 ( .A(q[6]), .B(n11), .C(d[6]), .D(n12), .Y(n13) );
  AOI22X1 U13 ( .A(q[5]), .B(n11), .C(d[5]), .D(n12), .Y(n14) );
  AOI22X1 U14 ( .A(q[4]), .B(n11), .C(d[4]), .D(n12), .Y(n15) );
  AOI22X1 U15 ( .A(q[3]), .B(n11), .C(d[3]), .D(n12), .Y(n16) );
  AOI22X1 U16 ( .A(q[2]), .B(n11), .C(d[2]), .D(n12), .Y(n17) );
  AOI22X1 U17 ( .A(q[1]), .B(n11), .C(d[1]), .D(n12), .Y(n18) );
  AOI22X1 U18 ( .A(q[0]), .B(n11), .C(d[0]), .D(n12), .Y(n19) );
  NOR2X1 U19 ( .A(n12), .B(reset), .Y(n11) );
  NOR2X1 U20 ( .A(n36), .B(reset), .Y(n12) );
  DFFPOSX1_SCAN q_reg_7_ ( .D(n27), .TI(q[6]), .TE(test_se), .CLK(clk), .Q(
        q[7]) );
  DFFPOSX1_SCAN q_reg_6_ ( .D(n26), .TI(q[5]), .TE(test_se), .CLK(clk), .Q(
        q[6]) );
  DFFPOSX1_SCAN q_reg_5_ ( .D(n25), .TI(q[4]), .TE(test_se), .CLK(clk), .Q(
        q[5]) );
  DFFPOSX1_SCAN q_reg_4_ ( .D(n24), .TI(q[3]), .TE(test_se), .CLK(clk), .Q(
        q[4]) );
  DFFPOSX1_SCAN q_reg_3_ ( .D(n23), .TI(q[2]), .TE(test_se), .CLK(clk), .Q(
        q[3]) );
  DFFPOSX1_SCAN q_reg_2_ ( .D(n22), .TI(q[1]), .TE(test_se), .CLK(clk), .Q(
        q[2]) );
  DFFPOSX1_SCAN q_reg_1_ ( .D(n21), .TI(q[0]), .TE(test_se), .CLK(clk), .Q(
        q[1]) );
  DFFPOSX1_SCAN q_reg_0_ ( .D(n20), .TI(test_si), .TE(test_se), .CLK(clk), .Q(
        q[0]) );
  INVX2 U10 ( .A(n19), .Y(n20) );
  INVX2 U21 ( .A(n18), .Y(n21) );
  INVX2 U22 ( .A(n17), .Y(n22) );
  INVX2 U23 ( .A(n16), .Y(n23) );
  INVX2 U24 ( .A(n15), .Y(n24) );
  INVX2 U25 ( .A(n14), .Y(n25) );
  INVX2 U26 ( .A(n13), .Y(n26) );
  INVX2 U27 ( .A(n10), .Y(n27) );
  INVX2 U28 ( .A(en), .Y(n36) );
endmodule


module flop_test_2 ( clk, d, q, test_si, test_se );
  input [7:0] d;
  output [7:0] q;
  input clk, test_si, test_se;


  DFFPOSX1_SCAN q_reg_7_ ( .D(d[7]), .TI(q[6]), .TE(test_se), .CLK(clk), .Q(
        q[7]) );
  DFFPOSX1_SCAN q_reg_6_ ( .D(d[6]), .TI(q[5]), .TE(test_se), .CLK(clk), .Q(
        q[6]) );
  DFFPOSX1_SCAN q_reg_5_ ( .D(d[5]), .TI(q[4]), .TE(test_se), .CLK(clk), .Q(
        q[5]) );
  DFFPOSX1_SCAN q_reg_4_ ( .D(d[4]), .TI(q[3]), .TE(test_se), .CLK(clk), .Q(
        q[4]) );
  DFFPOSX1_SCAN q_reg_3_ ( .D(d[3]), .TI(q[2]), .TE(test_se), .CLK(clk), .Q(
        q[3]) );
  DFFPOSX1_SCAN q_reg_2_ ( .D(d[2]), .TI(q[1]), .TE(test_se), .CLK(clk), .Q(
        q[2]) );
  DFFPOSX1_SCAN q_reg_1_ ( .D(d[1]), .TI(q[0]), .TE(test_se), .CLK(clk), .Q(
        q[1]) );
  DFFPOSX1_SCAN q_reg_0_ ( .D(d[0]), .TI(test_si), .TE(test_se), .CLK(clk), 
        .Q(q[0]) );
endmodule


module regfile_test_1 ( clk, regwrite, ra1, ra2, wa, wd, rd1, rd2, test_si, 
        test_so, test_se );
  input [2:0] ra1;
  input [2:0] ra2;
  input [2:0] wa;
  input [7:0] wd;
  output [7:0] rd1;
  output [7:0] rd2;
  input clk, regwrite, test_si, test_se;
  output test_so;
  wire   RAM_62_, RAM_61_, RAM_60_, RAM_59_, RAM_58_, RAM_57_, RAM_56_,
         RAM_55_, RAM_54_, RAM_53_, RAM_52_, RAM_51_, RAM_50_, RAM_49_,
         RAM_48_, RAM_47_, RAM_46_, RAM_45_, RAM_44_, RAM_43_, RAM_42_,
         RAM_41_, RAM_40_, RAM_39_, RAM_38_, RAM_37_, RAM_36_, RAM_35_,
         RAM_34_, RAM_33_, RAM_32_, RAM_31_, RAM_30_, RAM_29_, RAM_28_,
         RAM_27_, RAM_26_, RAM_25_, RAM_24_, RAM_23_, RAM_22_, RAM_21_,
         RAM_20_, RAM_19_, RAM_18_, RAM_17_, RAM_16_, RAM_15_, RAM_14_,
         RAM_13_, RAM_12_, RAM_11_, RAM_10_, RAM_9_, RAM_8_, n138, n139, n140,
         n141, n142, n143, n144, n145, n83, n84, n85, n86, n87, n88, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351,
         n352, n409, n410, n411, n412, n413, n414, n415, n416, n417, n418,
         n419, n420, n421, n422, n423, n424, n425, n426, n427, n428, n429,
         n430, n431, n432, n433;

  AND2X2 U2 ( .A(wa[2]), .B(regwrite), .Y(n226) );
  NOR2X1 U85 ( .A(n83), .B(n84), .Y(rd2[7]) );
  OAI21X1 U86 ( .A(RAM_15_), .B(n85), .C(n86), .Y(n84) );
  OAI21X1 U87 ( .A(n87), .B(n88), .C(n291), .Y(n86) );
  OAI22X1 U88 ( .A(RAM_47_), .B(n303), .C(RAM_31_), .D(n304), .Y(n88) );
  NOR2X1 U89 ( .A(test_so), .B(n422), .Y(n87) );
  OAI21X1 U90 ( .A(n291), .B(n91), .C(n92), .Y(n83) );
  AOI21X1 U91 ( .A(n93), .B(n425), .C(n94), .Y(n91) );
  OAI22X1 U92 ( .A(RAM_39_), .B(n303), .C(RAM_23_), .D(n304), .Y(n94) );
  NOR2X1 U93 ( .A(n95), .B(n96), .Y(rd2[6]) );
  OAI21X1 U94 ( .A(RAM_14_), .B(n85), .C(n97), .Y(n96) );
  OAI21X1 U95 ( .A(n98), .B(n99), .C(n291), .Y(n97) );
  OAI22X1 U96 ( .A(RAM_46_), .B(n303), .C(RAM_30_), .D(n304), .Y(n99) );
  NOR2X1 U97 ( .A(RAM_62_), .B(n422), .Y(n98) );
  OAI21X1 U98 ( .A(n291), .B(n100), .C(n92), .Y(n95) );
  AOI21X1 U99 ( .A(n93), .B(n426), .C(n101), .Y(n100) );
  OAI22X1 U100 ( .A(RAM_38_), .B(n303), .C(RAM_22_), .D(n304), .Y(n101) );
  NOR2X1 U101 ( .A(n102), .B(n103), .Y(rd2[5]) );
  OAI21X1 U102 ( .A(RAM_13_), .B(n85), .C(n104), .Y(n103) );
  OAI21X1 U103 ( .A(n105), .B(n106), .C(n291), .Y(n104) );
  OAI22X1 U104 ( .A(RAM_45_), .B(n303), .C(RAM_29_), .D(n304), .Y(n106) );
  NOR2X1 U105 ( .A(RAM_61_), .B(n422), .Y(n105) );
  OAI21X1 U106 ( .A(ra2[0]), .B(n107), .C(n92), .Y(n102) );
  AOI21X1 U107 ( .A(n93), .B(n427), .C(n108), .Y(n107) );
  OAI22X1 U108 ( .A(RAM_37_), .B(n303), .C(RAM_21_), .D(n304), .Y(n108) );
  NOR2X1 U109 ( .A(n109), .B(n110), .Y(rd2[4]) );
  OAI21X1 U110 ( .A(RAM_12_), .B(n85), .C(n111), .Y(n110) );
  OAI21X1 U111 ( .A(n112), .B(n113), .C(n291), .Y(n111) );
  OAI22X1 U112 ( .A(RAM_44_), .B(n303), .C(RAM_28_), .D(n304), .Y(n113) );
  NOR2X1 U113 ( .A(RAM_60_), .B(n422), .Y(n112) );
  OAI21X1 U114 ( .A(ra2[0]), .B(n114), .C(n92), .Y(n109) );
  AOI21X1 U115 ( .A(n93), .B(n428), .C(n115), .Y(n114) );
  OAI22X1 U116 ( .A(RAM_36_), .B(n303), .C(RAM_20_), .D(n304), .Y(n115) );
  NOR2X1 U117 ( .A(n116), .B(n117), .Y(rd2[3]) );
  OAI21X1 U118 ( .A(RAM_11_), .B(n85), .C(n118), .Y(n117) );
  OAI21X1 U119 ( .A(n119), .B(n120), .C(n291), .Y(n118) );
  OAI22X1 U120 ( .A(RAM_43_), .B(n303), .C(RAM_27_), .D(n304), .Y(n120) );
  NOR2X1 U121 ( .A(RAM_59_), .B(n422), .Y(n119) );
  OAI21X1 U122 ( .A(ra2[0]), .B(n121), .C(n92), .Y(n116) );
  AOI21X1 U123 ( .A(n93), .B(n429), .C(n122), .Y(n121) );
  OAI22X1 U124 ( .A(RAM_35_), .B(n303), .C(RAM_19_), .D(n304), .Y(n122) );
  NOR2X1 U125 ( .A(n123), .B(n124), .Y(rd2[2]) );
  OAI21X1 U126 ( .A(RAM_10_), .B(n85), .C(n125), .Y(n124) );
  OAI21X1 U127 ( .A(n126), .B(n127), .C(n291), .Y(n125) );
  OAI22X1 U128 ( .A(RAM_42_), .B(n303), .C(RAM_26_), .D(n304), .Y(n127) );
  NOR2X1 U129 ( .A(RAM_58_), .B(n422), .Y(n126) );
  OAI21X1 U130 ( .A(ra2[0]), .B(n128), .C(n92), .Y(n123) );
  AOI21X1 U131 ( .A(n93), .B(n430), .C(n129), .Y(n128) );
  OAI22X1 U132 ( .A(RAM_34_), .B(n303), .C(RAM_18_), .D(n304), .Y(n129) );
  NOR2X1 U133 ( .A(n130), .B(n131), .Y(rd2[1]) );
  OAI21X1 U134 ( .A(RAM_9_), .B(n85), .C(n132), .Y(n131) );
  OAI21X1 U135 ( .A(n133), .B(n134), .C(n291), .Y(n132) );
  OAI22X1 U136 ( .A(RAM_41_), .B(n303), .C(RAM_25_), .D(n304), .Y(n134) );
  NOR2X1 U137 ( .A(RAM_57_), .B(n422), .Y(n133) );
  OAI21X1 U138 ( .A(n291), .B(n135), .C(n92), .Y(n130) );
  AOI21X1 U139 ( .A(n93), .B(n431), .C(n136), .Y(n135) );
  OAI22X1 U140 ( .A(RAM_33_), .B(n303), .C(RAM_17_), .D(n304), .Y(n136) );
  NOR2X1 U141 ( .A(n137), .B(n146), .Y(rd2[0]) );
  OAI21X1 U142 ( .A(RAM_8_), .B(n85), .C(n147), .Y(n146) );
  OAI21X1 U143 ( .A(n148), .B(n149), .C(n291), .Y(n147) );
  OAI22X1 U144 ( .A(RAM_40_), .B(n303), .C(RAM_24_), .D(n304), .Y(n149) );
  NOR2X1 U145 ( .A(RAM_56_), .B(n422), .Y(n148) );
  NAND2X1 U146 ( .A(n424), .B(n423), .Y(n85) );
  OAI21X1 U147 ( .A(n291), .B(n150), .C(n92), .Y(n137) );
  NAND3X1 U148 ( .A(n424), .B(n423), .C(n290), .Y(n92) );
  AOI21X1 U149 ( .A(n93), .B(n432), .C(n151), .Y(n150) );
  OAI22X1 U150 ( .A(RAM_32_), .B(n303), .C(RAM_16_), .D(n304), .Y(n151) );
  NOR2X1 U153 ( .A(n423), .B(n424), .Y(n93) );
  NOR2X1 U154 ( .A(n152), .B(n153), .Y(rd1[7]) );
  OAI21X1 U155 ( .A(RAM_15_), .B(n154), .C(n155), .Y(n153) );
  OAI21X1 U156 ( .A(n156), .B(n157), .C(n293), .Y(n155) );
  OAI22X1 U157 ( .A(RAM_47_), .B(n301), .C(RAM_31_), .D(n302), .Y(n157) );
  NOR2X1 U158 ( .A(test_so), .B(n419), .Y(n156) );
  OAI21X1 U159 ( .A(n293), .B(n160), .C(n161), .Y(n152) );
  AOI21X1 U160 ( .A(n162), .B(n425), .C(n163), .Y(n160) );
  OAI22X1 U161 ( .A(RAM_39_), .B(n301), .C(RAM_23_), .D(n302), .Y(n163) );
  NOR2X1 U162 ( .A(n164), .B(n165), .Y(rd1[6]) );
  OAI21X1 U163 ( .A(RAM_14_), .B(n154), .C(n166), .Y(n165) );
  OAI21X1 U164 ( .A(n167), .B(n168), .C(n293), .Y(n166) );
  OAI22X1 U165 ( .A(RAM_46_), .B(n301), .C(RAM_30_), .D(n302), .Y(n168) );
  NOR2X1 U166 ( .A(RAM_62_), .B(n419), .Y(n167) );
  OAI21X1 U167 ( .A(n293), .B(n169), .C(n161), .Y(n164) );
  AOI21X1 U168 ( .A(n162), .B(n426), .C(n170), .Y(n169) );
  OAI22X1 U169 ( .A(RAM_38_), .B(n301), .C(RAM_22_), .D(n302), .Y(n170) );
  NOR2X1 U170 ( .A(n171), .B(n172), .Y(rd1[5]) );
  OAI21X1 U171 ( .A(RAM_13_), .B(n154), .C(n173), .Y(n172) );
  OAI21X1 U172 ( .A(n174), .B(n175), .C(n293), .Y(n173) );
  OAI22X1 U173 ( .A(RAM_45_), .B(n301), .C(RAM_29_), .D(n302), .Y(n175) );
  NOR2X1 U174 ( .A(RAM_61_), .B(n419), .Y(n174) );
  OAI21X1 U175 ( .A(ra1[0]), .B(n176), .C(n161), .Y(n171) );
  AOI21X1 U176 ( .A(n162), .B(n427), .C(n177), .Y(n176) );
  OAI22X1 U177 ( .A(RAM_37_), .B(n301), .C(RAM_21_), .D(n302), .Y(n177) );
  NOR2X1 U178 ( .A(n178), .B(n179), .Y(rd1[4]) );
  OAI21X1 U179 ( .A(RAM_12_), .B(n154), .C(n180), .Y(n179) );
  OAI21X1 U180 ( .A(n181), .B(n182), .C(n293), .Y(n180) );
  OAI22X1 U181 ( .A(RAM_44_), .B(n301), .C(RAM_28_), .D(n302), .Y(n182) );
  NOR2X1 U182 ( .A(RAM_60_), .B(n419), .Y(n181) );
  OAI21X1 U183 ( .A(ra1[0]), .B(n183), .C(n161), .Y(n178) );
  AOI21X1 U184 ( .A(n162), .B(n428), .C(n184), .Y(n183) );
  OAI22X1 U185 ( .A(RAM_36_), .B(n301), .C(RAM_20_), .D(n302), .Y(n184) );
  NOR2X1 U186 ( .A(n185), .B(n186), .Y(rd1[3]) );
  OAI21X1 U187 ( .A(RAM_11_), .B(n154), .C(n187), .Y(n186) );
  OAI21X1 U188 ( .A(n188), .B(n189), .C(n293), .Y(n187) );
  OAI22X1 U189 ( .A(RAM_43_), .B(n301), .C(RAM_27_), .D(n302), .Y(n189) );
  NOR2X1 U190 ( .A(RAM_59_), .B(n419), .Y(n188) );
  OAI21X1 U191 ( .A(ra1[0]), .B(n190), .C(n161), .Y(n185) );
  AOI21X1 U192 ( .A(n162), .B(n429), .C(n191), .Y(n190) );
  OAI22X1 U193 ( .A(RAM_35_), .B(n301), .C(RAM_19_), .D(n302), .Y(n191) );
  NOR2X1 U194 ( .A(n192), .B(n193), .Y(rd1[2]) );
  OAI21X1 U195 ( .A(RAM_10_), .B(n154), .C(n194), .Y(n193) );
  OAI21X1 U196 ( .A(n195), .B(n196), .C(n293), .Y(n194) );
  OAI22X1 U197 ( .A(RAM_42_), .B(n301), .C(RAM_26_), .D(n302), .Y(n196) );
  NOR2X1 U198 ( .A(RAM_58_), .B(n419), .Y(n195) );
  OAI21X1 U199 ( .A(ra1[0]), .B(n197), .C(n161), .Y(n192) );
  AOI21X1 U200 ( .A(n162), .B(n430), .C(n198), .Y(n197) );
  OAI22X1 U201 ( .A(RAM_34_), .B(n301), .C(RAM_18_), .D(n302), .Y(n198) );
  NOR2X1 U202 ( .A(n199), .B(n200), .Y(rd1[1]) );
  OAI21X1 U203 ( .A(RAM_9_), .B(n154), .C(n201), .Y(n200) );
  OAI21X1 U204 ( .A(n202), .B(n203), .C(n293), .Y(n201) );
  OAI22X1 U205 ( .A(RAM_41_), .B(n301), .C(RAM_25_), .D(n302), .Y(n203) );
  NOR2X1 U206 ( .A(RAM_57_), .B(n419), .Y(n202) );
  OAI21X1 U207 ( .A(n293), .B(n204), .C(n161), .Y(n199) );
  AOI21X1 U208 ( .A(n162), .B(n431), .C(n205), .Y(n204) );
  OAI22X1 U209 ( .A(RAM_33_), .B(n301), .C(RAM_17_), .D(n302), .Y(n205) );
  NOR2X1 U210 ( .A(n206), .B(n207), .Y(rd1[0]) );
  OAI21X1 U211 ( .A(RAM_8_), .B(n154), .C(n208), .Y(n207) );
  OAI21X1 U212 ( .A(n209), .B(n210), .C(n293), .Y(n208) );
  OAI22X1 U213 ( .A(RAM_40_), .B(n301), .C(RAM_24_), .D(n302), .Y(n210) );
  NOR2X1 U214 ( .A(RAM_56_), .B(n419), .Y(n209) );
  NAND2X1 U215 ( .A(n421), .B(n420), .Y(n154) );
  OAI21X1 U216 ( .A(n293), .B(n211), .C(n161), .Y(n206) );
  NAND3X1 U217 ( .A(n421), .B(n420), .C(n292), .Y(n161) );
  AOI21X1 U218 ( .A(n162), .B(n432), .C(n212), .Y(n211) );
  OAI22X1 U219 ( .A(RAM_32_), .B(n301), .C(RAM_16_), .D(n302), .Y(n212) );
  NOR2X1 U222 ( .A(n420), .B(n421), .Y(n162) );
  AOI22X1 U223 ( .A(n214), .B(RAM_9_), .C(n294), .D(wd[1]), .Y(n213) );
  AOI22X1 U224 ( .A(n214), .B(RAM_8_), .C(n294), .D(wd[0]), .Y(n215) );
  AOI22X1 U225 ( .A(n218), .B(test_so), .C(wd[7]), .D(n300), .Y(n217) );
  AOI22X1 U226 ( .A(n218), .B(RAM_62_), .C(wd[6]), .D(n300), .Y(n219) );
  AOI22X1 U227 ( .A(n218), .B(RAM_61_), .C(wd[5]), .D(n300), .Y(n220) );
  AOI22X1 U228 ( .A(n218), .B(RAM_60_), .C(wd[4]), .D(n300), .Y(n221) );
  AOI22X1 U229 ( .A(n218), .B(RAM_59_), .C(wd[3]), .D(n300), .Y(n222) );
  AOI22X1 U230 ( .A(n218), .B(RAM_58_), .C(wd[2]), .D(n300), .Y(n223) );
  AOI22X1 U231 ( .A(n218), .B(RAM_57_), .C(wd[1]), .D(n300), .Y(n224) );
  AOI22X1 U232 ( .A(n218), .B(RAM_56_), .C(wd[0]), .D(n300), .Y(n225) );
  NAND3X1 U233 ( .A(n226), .B(wa[0]), .C(wa[1]), .Y(n218) );
  OAI22X1 U234 ( .A(n299), .B(n425), .C(n409), .D(n227), .Y(n145) );
  OAI22X1 U235 ( .A(n299), .B(n426), .C(n410), .D(n227), .Y(n144) );
  OAI22X1 U236 ( .A(n299), .B(n427), .C(n411), .D(n227), .Y(n143) );
  OAI22X1 U237 ( .A(n299), .B(n428), .C(n412), .D(n227), .Y(n142) );
  OAI22X1 U238 ( .A(n299), .B(n429), .C(n413), .D(n227), .Y(n141) );
  OAI22X1 U239 ( .A(n299), .B(n430), .C(n414), .D(n227), .Y(n140) );
  OAI22X1 U240 ( .A(n299), .B(n431), .C(n415), .D(n227), .Y(n139) );
  OAI22X1 U241 ( .A(n299), .B(n432), .C(n416), .D(n227), .Y(n138) );
  NAND3X1 U242 ( .A(n226), .B(n418), .C(wa[1]), .Y(n227) );
  AOI22X1 U243 ( .A(n229), .B(RAM_47_), .C(wd[7]), .D(n298), .Y(n228) );
  AOI22X1 U244 ( .A(n229), .B(RAM_46_), .C(wd[6]), .D(n298), .Y(n230) );
  AOI22X1 U245 ( .A(n229), .B(RAM_45_), .C(wd[5]), .D(n298), .Y(n231) );
  AOI22X1 U246 ( .A(n229), .B(RAM_44_), .C(wd[4]), .D(n298), .Y(n232) );
  AOI22X1 U247 ( .A(n229), .B(RAM_43_), .C(wd[3]), .D(n298), .Y(n233) );
  AOI22X1 U248 ( .A(n229), .B(RAM_42_), .C(wd[2]), .D(n298), .Y(n234) );
  AOI22X1 U249 ( .A(n229), .B(RAM_41_), .C(wd[1]), .D(n298), .Y(n235) );
  AOI22X1 U250 ( .A(n229), .B(RAM_40_), .C(wd[0]), .D(n298), .Y(n236) );
  NAND3X1 U251 ( .A(wa[0]), .B(n417), .C(n226), .Y(n229) );
  AOI22X1 U252 ( .A(n238), .B(RAM_39_), .C(wd[7]), .D(n297), .Y(n237) );
  AOI22X1 U253 ( .A(n238), .B(RAM_38_), .C(wd[6]), .D(n297), .Y(n239) );
  AOI22X1 U254 ( .A(n238), .B(RAM_37_), .C(wd[5]), .D(n297), .Y(n240) );
  AOI22X1 U255 ( .A(n238), .B(RAM_36_), .C(wd[4]), .D(n297), .Y(n241) );
  AOI22X1 U256 ( .A(n238), .B(RAM_35_), .C(wd[3]), .D(n297), .Y(n242) );
  AOI22X1 U257 ( .A(n238), .B(RAM_34_), .C(wd[2]), .D(n297), .Y(n243) );
  AOI22X1 U258 ( .A(n238), .B(RAM_33_), .C(wd[1]), .D(n297), .Y(n244) );
  AOI22X1 U259 ( .A(n238), .B(RAM_32_), .C(wd[0]), .D(n297), .Y(n245) );
  NAND3X1 U260 ( .A(n418), .B(n417), .C(n226), .Y(n238) );
  AOI22X1 U261 ( .A(n247), .B(RAM_31_), .C(wd[7]), .D(n296), .Y(n246) );
  AOI22X1 U262 ( .A(n247), .B(RAM_30_), .C(wd[6]), .D(n296), .Y(n248) );
  AOI22X1 U263 ( .A(n247), .B(RAM_29_), .C(wd[5]), .D(n296), .Y(n249) );
  AOI22X1 U264 ( .A(n247), .B(RAM_28_), .C(wd[4]), .D(n296), .Y(n250) );
  AOI22X1 U265 ( .A(n247), .B(RAM_27_), .C(wd[3]), .D(n296), .Y(n251) );
  AOI22X1 U266 ( .A(n247), .B(RAM_26_), .C(wd[2]), .D(n296), .Y(n252) );
  AOI22X1 U267 ( .A(n247), .B(RAM_25_), .C(wd[1]), .D(n296), .Y(n253) );
  AOI22X1 U268 ( .A(n247), .B(RAM_24_), .C(wd[0]), .D(n296), .Y(n254) );
  NAND3X1 U269 ( .A(wa[0]), .B(n216), .C(wa[1]), .Y(n247) );
  AOI22X1 U270 ( .A(n256), .B(RAM_23_), .C(wd[7]), .D(n295), .Y(n255) );
  AOI22X1 U271 ( .A(n256), .B(RAM_22_), .C(wd[6]), .D(n295), .Y(n257) );
  AOI22X1 U272 ( .A(n256), .B(RAM_21_), .C(wd[5]), .D(n295), .Y(n258) );
  AOI22X1 U273 ( .A(n256), .B(RAM_20_), .C(wd[4]), .D(n295), .Y(n259) );
  AOI22X1 U274 ( .A(n256), .B(RAM_19_), .C(wd[3]), .D(n295), .Y(n260) );
  AOI22X1 U275 ( .A(n256), .B(RAM_18_), .C(wd[2]), .D(n295), .Y(n261) );
  AOI22X1 U276 ( .A(n256), .B(RAM_17_), .C(wd[1]), .D(n295), .Y(n262) );
  AOI22X1 U277 ( .A(n256), .B(RAM_16_), .C(wd[0]), .D(n295), .Y(n263) );
  NAND3X1 U278 ( .A(n216), .B(n418), .C(wa[1]), .Y(n256) );
  AOI22X1 U279 ( .A(n214), .B(RAM_15_), .C(n294), .D(wd[7]), .Y(n264) );
  AOI22X1 U280 ( .A(n214), .B(RAM_14_), .C(n294), .D(wd[6]), .Y(n265) );
  AOI22X1 U281 ( .A(n214), .B(RAM_13_), .C(n294), .D(wd[5]), .Y(n266) );
  AOI22X1 U282 ( .A(n214), .B(RAM_12_), .C(n294), .D(wd[4]), .Y(n267) );
  AOI22X1 U283 ( .A(n214), .B(RAM_11_), .C(n294), .D(wd[3]), .Y(n268) );
  AOI22X1 U284 ( .A(n214), .B(RAM_10_), .C(n294), .D(wd[2]), .Y(n269) );
  NAND3X1 U285 ( .A(n216), .B(n417), .C(wa[0]), .Y(n214) );
  NOR2X1 U286 ( .A(n433), .B(wa[2]), .Y(n216) );
  DFFPOSX1_SCAN RAM_reg_7__7_ ( .D(n352), .TI(RAM_62_), .TE(test_se), .CLK(clk), .Q(test_so) );
  DFFPOSX1_SCAN RAM_reg_7__6_ ( .D(n351), .TI(RAM_61_), .TE(test_se), .CLK(clk), .Q(RAM_62_) );
  DFFPOSX1_SCAN RAM_reg_7__5_ ( .D(n350), .TI(RAM_60_), .TE(test_se), .CLK(clk), .Q(RAM_61_) );
  DFFPOSX1_SCAN RAM_reg_7__4_ ( .D(n349), .TI(RAM_59_), .TE(test_se), .CLK(clk), .Q(RAM_60_) );
  DFFPOSX1_SCAN RAM_reg_7__3_ ( .D(n348), .TI(RAM_58_), .TE(test_se), .CLK(clk), .Q(RAM_59_) );
  DFFPOSX1_SCAN RAM_reg_7__2_ ( .D(n347), .TI(RAM_57_), .TE(test_se), .CLK(clk), .Q(RAM_58_) );
  DFFPOSX1_SCAN RAM_reg_7__1_ ( .D(n346), .TI(RAM_56_), .TE(test_se), .CLK(clk), .Q(RAM_57_) );
  DFFPOSX1_SCAN RAM_reg_7__0_ ( .D(n345), .TI(n425), .TE(test_se), .CLK(clk), 
        .Q(RAM_56_) );
  DFFPOSX1_SCAN RAM_reg_6__7_ ( .D(n145), .TI(n426), .TE(test_se), .CLK(clk), 
        .Q(RAM_55_) );
  DFFPOSX1_SCAN RAM_reg_6__6_ ( .D(n144), .TI(n427), .TE(test_se), .CLK(clk), 
        .Q(RAM_54_) );
  DFFPOSX1_SCAN RAM_reg_6__5_ ( .D(n143), .TI(n428), .TE(test_se), .CLK(clk), 
        .Q(RAM_53_) );
  DFFPOSX1_SCAN RAM_reg_6__4_ ( .D(n142), .TI(n429), .TE(test_se), .CLK(clk), 
        .Q(RAM_52_) );
  DFFPOSX1_SCAN RAM_reg_6__3_ ( .D(n141), .TI(n430), .TE(test_se), .CLK(clk), 
        .Q(RAM_51_) );
  DFFPOSX1_SCAN RAM_reg_6__2_ ( .D(n140), .TI(n431), .TE(test_se), .CLK(clk), 
        .Q(RAM_50_) );
  DFFPOSX1_SCAN RAM_reg_6__1_ ( .D(n139), .TI(n432), .TE(test_se), .CLK(clk), 
        .Q(RAM_49_) );
  DFFPOSX1_SCAN RAM_reg_6__0_ ( .D(n138), .TI(RAM_47_), .TE(test_se), .CLK(clk), .Q(RAM_48_) );
  DFFPOSX1_SCAN RAM_reg_5__7_ ( .D(n344), .TI(RAM_46_), .TE(test_se), .CLK(clk), .Q(RAM_47_) );
  DFFPOSX1_SCAN RAM_reg_5__6_ ( .D(n343), .TI(RAM_45_), .TE(test_se), .CLK(clk), .Q(RAM_46_) );
  DFFPOSX1_SCAN RAM_reg_5__5_ ( .D(n342), .TI(RAM_44_), .TE(test_se), .CLK(clk), .Q(RAM_45_) );
  DFFPOSX1_SCAN RAM_reg_5__4_ ( .D(n341), .TI(RAM_43_), .TE(test_se), .CLK(clk), .Q(RAM_44_) );
  DFFPOSX1_SCAN RAM_reg_5__3_ ( .D(n340), .TI(RAM_42_), .TE(test_se), .CLK(clk), .Q(RAM_43_) );
  DFFPOSX1_SCAN RAM_reg_5__2_ ( .D(n339), .TI(RAM_41_), .TE(test_se), .CLK(clk), .Q(RAM_42_) );
  DFFPOSX1_SCAN RAM_reg_5__1_ ( .D(n338), .TI(RAM_40_), .TE(test_se), .CLK(clk), .Q(RAM_41_) );
  DFFPOSX1_SCAN RAM_reg_5__0_ ( .D(n337), .TI(RAM_39_), .TE(test_se), .CLK(clk), .Q(RAM_40_) );
  DFFPOSX1_SCAN RAM_reg_4__7_ ( .D(n336), .TI(RAM_38_), .TE(test_se), .CLK(clk), .Q(RAM_39_) );
  DFFPOSX1_SCAN RAM_reg_4__6_ ( .D(n335), .TI(RAM_37_), .TE(test_se), .CLK(clk), .Q(RAM_38_) );
  DFFPOSX1_SCAN RAM_reg_4__5_ ( .D(n334), .TI(RAM_36_), .TE(test_se), .CLK(clk), .Q(RAM_37_) );
  DFFPOSX1_SCAN RAM_reg_4__4_ ( .D(n333), .TI(RAM_35_), .TE(test_se), .CLK(clk), .Q(RAM_36_) );
  DFFPOSX1_SCAN RAM_reg_4__3_ ( .D(n332), .TI(RAM_34_), .TE(test_se), .CLK(clk), .Q(RAM_35_) );
  DFFPOSX1_SCAN RAM_reg_4__2_ ( .D(n331), .TI(RAM_33_), .TE(test_se), .CLK(clk), .Q(RAM_34_) );
  DFFPOSX1_SCAN RAM_reg_4__1_ ( .D(n330), .TI(RAM_32_), .TE(test_se), .CLK(clk), .Q(RAM_33_) );
  DFFPOSX1_SCAN RAM_reg_4__0_ ( .D(n329), .TI(RAM_31_), .TE(test_se), .CLK(clk), .Q(RAM_32_) );
  DFFPOSX1_SCAN RAM_reg_3__7_ ( .D(n328), .TI(RAM_30_), .TE(test_se), .CLK(clk), .Q(RAM_31_) );
  DFFPOSX1_SCAN RAM_reg_3__6_ ( .D(n327), .TI(RAM_29_), .TE(test_se), .CLK(clk), .Q(RAM_30_) );
  DFFPOSX1_SCAN RAM_reg_3__5_ ( .D(n326), .TI(RAM_28_), .TE(test_se), .CLK(clk), .Q(RAM_29_) );
  DFFPOSX1_SCAN RAM_reg_3__4_ ( .D(n325), .TI(RAM_27_), .TE(test_se), .CLK(clk), .Q(RAM_28_) );
  DFFPOSX1_SCAN RAM_reg_3__3_ ( .D(n324), .TI(RAM_26_), .TE(test_se), .CLK(clk), .Q(RAM_27_) );
  DFFPOSX1_SCAN RAM_reg_3__2_ ( .D(n323), .TI(RAM_25_), .TE(test_se), .CLK(clk), .Q(RAM_26_) );
  DFFPOSX1_SCAN RAM_reg_3__1_ ( .D(n322), .TI(RAM_24_), .TE(test_se), .CLK(clk), .Q(RAM_25_) );
  DFFPOSX1_SCAN RAM_reg_3__0_ ( .D(n321), .TI(RAM_23_), .TE(test_se), .CLK(clk), .Q(RAM_24_) );
  DFFPOSX1_SCAN RAM_reg_2__7_ ( .D(n320), .TI(RAM_22_), .TE(test_se), .CLK(clk), .Q(RAM_23_) );
  DFFPOSX1_SCAN RAM_reg_2__6_ ( .D(n319), .TI(RAM_21_), .TE(test_se), .CLK(clk), .Q(RAM_22_) );
  DFFPOSX1_SCAN RAM_reg_2__5_ ( .D(n318), .TI(RAM_20_), .TE(test_se), .CLK(clk), .Q(RAM_21_) );
  DFFPOSX1_SCAN RAM_reg_2__4_ ( .D(n317), .TI(RAM_19_), .TE(test_se), .CLK(clk), .Q(RAM_20_) );
  DFFPOSX1_SCAN RAM_reg_2__3_ ( .D(n316), .TI(RAM_18_), .TE(test_se), .CLK(clk), .Q(RAM_19_) );
  DFFPOSX1_SCAN RAM_reg_2__2_ ( .D(n315), .TI(RAM_17_), .TE(test_se), .CLK(clk), .Q(RAM_18_) );
  DFFPOSX1_SCAN RAM_reg_2__1_ ( .D(n314), .TI(RAM_16_), .TE(test_se), .CLK(clk), .Q(RAM_17_) );
  DFFPOSX1_SCAN RAM_reg_2__0_ ( .D(n313), .TI(RAM_15_), .TE(test_se), .CLK(clk), .Q(RAM_16_) );
  DFFPOSX1_SCAN RAM_reg_1__7_ ( .D(n312), .TI(RAM_14_), .TE(test_se), .CLK(clk), .Q(RAM_15_) );
  DFFPOSX1_SCAN RAM_reg_1__6_ ( .D(n311), .TI(RAM_13_), .TE(test_se), .CLK(clk), .Q(RAM_14_) );
  DFFPOSX1_SCAN RAM_reg_1__5_ ( .D(n310), .TI(RAM_12_), .TE(test_se), .CLK(clk), .Q(RAM_13_) );
  DFFPOSX1_SCAN RAM_reg_1__4_ ( .D(n309), .TI(RAM_11_), .TE(test_se), .CLK(clk), .Q(RAM_12_) );
  DFFPOSX1_SCAN RAM_reg_1__3_ ( .D(n308), .TI(RAM_10_), .TE(test_se), .CLK(clk), .Q(RAM_11_) );
  DFFPOSX1_SCAN RAM_reg_1__2_ ( .D(n307), .TI(RAM_9_), .TE(test_se), .CLK(clk), 
        .Q(RAM_10_) );
  DFFPOSX1_SCAN RAM_reg_1__1_ ( .D(n306), .TI(RAM_8_), .TE(test_se), .CLK(clk), 
        .Q(RAM_9_) );
  DFFPOSX1_SCAN RAM_reg_1__0_ ( .D(n305), .TI(test_si), .TE(test_se), .CLK(clk), .Q(RAM_8_) );
  INVX2 U3 ( .A(n238), .Y(n297) );
  INVX2 U4 ( .A(n214), .Y(n294) );
  INVX2 U5 ( .A(n256), .Y(n295) );
  INVX2 U6 ( .A(n227), .Y(n299) );
  INVX2 U7 ( .A(n247), .Y(n296) );
  INVX2 U8 ( .A(n229), .Y(n298) );
  INVX2 U9 ( .A(n218), .Y(n300) );
  INVX2 U10 ( .A(n287), .Y(n304) );
  INVX2 U11 ( .A(n289), .Y(n302) );
  INVX2 U12 ( .A(n286), .Y(n303) );
  INVX2 U13 ( .A(n288), .Y(n301) );
  INVX2 U14 ( .A(n290), .Y(n291) );
  INVX2 U15 ( .A(n292), .Y(n293) );
  INVX2 U16 ( .A(ra2[0]), .Y(n290) );
  INVX2 U17 ( .A(ra1[0]), .Y(n292) );
  AND2X2 U18 ( .A(ra2[2]), .B(n424), .Y(n286) );
  AND2X2 U19 ( .A(ra2[1]), .B(n423), .Y(n287) );
  AND2X2 U20 ( .A(ra1[2]), .B(n421), .Y(n288) );
  AND2X2 U21 ( .A(ra1[1]), .B(n420), .Y(n289) );
  INVX2 U78 ( .A(wd[7]), .Y(n409) );
  INVX2 U79 ( .A(n217), .Y(n352) );
  INVX2 U80 ( .A(n228), .Y(n344) );
  INVX2 U81 ( .A(n237), .Y(n336) );
  INVX2 U82 ( .A(n246), .Y(n328) );
  INVX2 U83 ( .A(n255), .Y(n320) );
  INVX2 U84 ( .A(n264), .Y(n312) );
  INVX2 U151 ( .A(wd[6]), .Y(n410) );
  INVX2 U152 ( .A(n219), .Y(n351) );
  INVX2 U220 ( .A(n230), .Y(n343) );
  INVX2 U221 ( .A(n239), .Y(n335) );
  INVX2 U287 ( .A(n248), .Y(n327) );
  INVX2 U288 ( .A(n257), .Y(n319) );
  INVX2 U289 ( .A(n265), .Y(n311) );
  INVX2 U290 ( .A(wd[5]), .Y(n411) );
  INVX2 U291 ( .A(n220), .Y(n350) );
  INVX2 U292 ( .A(n231), .Y(n342) );
  INVX2 U293 ( .A(n240), .Y(n334) );
  INVX2 U294 ( .A(n249), .Y(n326) );
  INVX2 U295 ( .A(n258), .Y(n318) );
  INVX2 U296 ( .A(n266), .Y(n310) );
  INVX2 U297 ( .A(wd[4]), .Y(n412) );
  INVX2 U298 ( .A(n221), .Y(n349) );
  INVX2 U299 ( .A(n232), .Y(n341) );
  INVX2 U300 ( .A(n241), .Y(n333) );
  INVX2 U301 ( .A(n250), .Y(n325) );
  INVX2 U302 ( .A(n259), .Y(n317) );
  INVX2 U303 ( .A(n267), .Y(n309) );
  INVX2 U304 ( .A(wd[3]), .Y(n413) );
  INVX2 U305 ( .A(n222), .Y(n348) );
  INVX2 U306 ( .A(n233), .Y(n340) );
  INVX2 U307 ( .A(n242), .Y(n332) );
  INVX2 U308 ( .A(n251), .Y(n324) );
  INVX2 U309 ( .A(n260), .Y(n316) );
  INVX2 U310 ( .A(n268), .Y(n308) );
  INVX2 U311 ( .A(wd[2]), .Y(n414) );
  INVX2 U312 ( .A(n223), .Y(n347) );
  INVX2 U313 ( .A(n234), .Y(n339) );
  INVX2 U314 ( .A(n243), .Y(n331) );
  INVX2 U315 ( .A(n252), .Y(n323) );
  INVX2 U316 ( .A(n261), .Y(n315) );
  INVX2 U317 ( .A(n269), .Y(n307) );
  INVX2 U318 ( .A(wd[1]), .Y(n415) );
  INVX2 U319 ( .A(n213), .Y(n306) );
  INVX2 U320 ( .A(n224), .Y(n346) );
  INVX2 U321 ( .A(n235), .Y(n338) );
  INVX2 U322 ( .A(n244), .Y(n330) );
  INVX2 U323 ( .A(n253), .Y(n322) );
  INVX2 U324 ( .A(n262), .Y(n314) );
  INVX2 U325 ( .A(wd[0]), .Y(n416) );
  INVX2 U326 ( .A(n215), .Y(n305) );
  INVX2 U327 ( .A(n225), .Y(n345) );
  INVX2 U328 ( .A(n236), .Y(n337) );
  INVX2 U329 ( .A(n245), .Y(n329) );
  INVX2 U330 ( .A(n254), .Y(n321) );
  INVX2 U331 ( .A(n263), .Y(n313) );
  INVX2 U332 ( .A(wa[1]), .Y(n417) );
  INVX2 U333 ( .A(wa[0]), .Y(n418) );
  INVX2 U334 ( .A(n162), .Y(n419) );
  INVX2 U335 ( .A(ra1[2]), .Y(n420) );
  INVX2 U336 ( .A(ra1[1]), .Y(n421) );
  INVX2 U337 ( .A(n93), .Y(n422) );
  INVX2 U338 ( .A(ra2[2]), .Y(n423) );
  INVX2 U339 ( .A(ra2[1]), .Y(n424) );
  INVX2 U340 ( .A(RAM_55_), .Y(n425) );
  INVX2 U341 ( .A(RAM_54_), .Y(n426) );
  INVX2 U342 ( .A(RAM_53_), .Y(n427) );
  INVX2 U343 ( .A(RAM_52_), .Y(n428) );
  INVX2 U344 ( .A(RAM_51_), .Y(n429) );
  INVX2 U345 ( .A(RAM_50_), .Y(n430) );
  INVX2 U346 ( .A(RAM_49_), .Y(n431) );
  INVX2 U347 ( .A(RAM_48_), .Y(n432) );
  INVX2 U348 ( .A(regwrite), .Y(n433) );
endmodule


module flop_test_3 ( clk, d, q, test_si, test_se );
  input [7:0] d;
  output [7:0] q;
  input clk, test_si, test_se;


  DFFPOSX1_SCAN q_reg_7_ ( .D(d[7]), .TI(q[6]), .TE(test_se), .CLK(clk), .Q(
        q[7]) );
  DFFPOSX1_SCAN q_reg_6_ ( .D(d[6]), .TI(q[5]), .TE(test_se), .CLK(clk), .Q(
        q[6]) );
  DFFPOSX1_SCAN q_reg_5_ ( .D(d[5]), .TI(q[4]), .TE(test_se), .CLK(clk), .Q(
        q[5]) );
  DFFPOSX1_SCAN q_reg_4_ ( .D(d[4]), .TI(q[3]), .TE(test_se), .CLK(clk), .Q(
        q[4]) );
  DFFPOSX1_SCAN q_reg_3_ ( .D(d[3]), .TI(q[2]), .TE(test_se), .CLK(clk), .Q(
        q[3]) );
  DFFPOSX1_SCAN q_reg_2_ ( .D(d[2]), .TI(q[1]), .TE(test_se), .CLK(clk), .Q(
        q[2]) );
  DFFPOSX1_SCAN q_reg_1_ ( .D(d[1]), .TI(q[0]), .TE(test_se), .CLK(clk), .Q(
        q[1]) );
  DFFPOSX1_SCAN q_reg_0_ ( .D(d[0]), .TI(test_si), .TE(test_se), .CLK(clk), 
        .Q(q[0]) );
endmodule


module datapath_test_1 ( clk, reset, memdata, alusrca, memtoreg, iord, pcen, 
        regwrite, regdst, pcsource, alusrcb, irwrite, alucont, zero, instr, 
        adr, writedata, test_si, test_se );
  input [7:0] memdata;
  input [1:0] pcsource;
  input [1:0] alusrcb;
  input [3:0] irwrite;
  input [2:0] alucont;
  output [31:0] instr;
  output [7:0] adr;
  output [7:0] writedata;
  input clk, reset, alusrca, memtoreg, iord, pcen, regwrite, regdst, test_si,
         test_se;
  output zero;
  wire   n8, n9, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59;
  wire   [2:0] wa;
  wire   [7:2] nextpc;
  wire   [7:0] pc;
  wire   [7:0] md;
  wire   [7:0] rd1;
  wire   [7:0] a;
  wire   [7:0] rd2;
  wire   [7:0] aluresult;
  wire   [7:0] aluout;
  wire   [7:0] src1;
  wire   [7:0] wd;
  wire   [7:0] src2;

  AND2X2 U3 ( .A(alusrcb[1]), .B(alusrcb[0]), .Y(n22) );
  AND2X2 U4 ( .A(pcsource[0]), .B(n58), .Y(n33) );
  INVX2 U12 ( .A(n40), .Y(n8) );
  INVX2 U13 ( .A(n41), .Y(n9) );
  OAI21X1 U24 ( .A(n20), .B(n48), .C(n21), .Y(src2[7]) );
  AOI22X1 U25 ( .A(instr[5]), .B(n22), .C(writedata[7]), .D(n23), .Y(n21) );
  OAI21X1 U26 ( .A(n20), .B(n49), .C(n24), .Y(src2[6]) );
  AOI22X1 U27 ( .A(instr[4]), .B(n22), .C(writedata[6]), .D(n23), .Y(n24) );
  OAI21X1 U28 ( .A(n50), .B(n20), .C(n25), .Y(src2[5]) );
  AOI22X1 U29 ( .A(instr[3]), .B(n22), .C(writedata[5]), .D(n23), .Y(n25) );
  OAI21X1 U30 ( .A(n20), .B(n51), .C(n26), .Y(src2[4]) );
  AOI22X1 U31 ( .A(instr[2]), .B(n22), .C(writedata[4]), .D(n23), .Y(n26) );
  OAI21X1 U32 ( .A(n20), .B(n52), .C(n27), .Y(src2[3]) );
  AOI22X1 U33 ( .A(instr[1]), .B(n22), .C(writedata[3]), .D(n23), .Y(n27) );
  OAI21X1 U34 ( .A(n20), .B(n53), .C(n28), .Y(src2[2]) );
  AOI22X1 U35 ( .A(instr[0]), .B(n22), .C(writedata[2]), .D(n23), .Y(n28) );
  OAI21X1 U36 ( .A(n20), .B(n54), .C(n29), .Y(src2[1]) );
  NAND2X1 U37 ( .A(writedata[1]), .B(n23), .Y(n29) );
  OAI21X1 U38 ( .A(alusrcb[1]), .B(n56), .C(n30), .Y(src2[0]) );
  AOI22X1 U39 ( .A(writedata[0]), .B(n23), .C(instr[0]), .D(n55), .Y(n30) );
  NAND2X1 U40 ( .A(alusrcb[1]), .B(n56), .Y(n20) );
  NOR2X1 U41 ( .A(alusrcb[0]), .B(alusrcb[1]), .Y(n23) );
  OAI21X1 U42 ( .A(n57), .B(n42), .C(n31), .Y(nextpc[7]) );
  AOI22X1 U43 ( .A(n32), .B(instr[5]), .C(aluout[7]), .D(n33), .Y(n31) );
  OAI21X1 U44 ( .A(n57), .B(n43), .C(n34), .Y(nextpc[6]) );
  AOI22X1 U45 ( .A(n32), .B(instr[4]), .C(aluout[6]), .D(n33), .Y(n34) );
  OAI21X1 U46 ( .A(n57), .B(n44), .C(n35), .Y(nextpc[5]) );
  AOI22X1 U47 ( .A(n32), .B(instr[3]), .C(aluout[5]), .D(n33), .Y(n35) );
  OAI21X1 U48 ( .A(n57), .B(n45), .C(n36), .Y(nextpc[4]) );
  AOI22X1 U49 ( .A(n32), .B(instr[2]), .C(aluout[4]), .D(n33), .Y(n36) );
  OAI21X1 U50 ( .A(n57), .B(n46), .C(n37), .Y(nextpc[3]) );
  AOI22X1 U51 ( .A(n32), .B(instr[1]), .C(aluout[3]), .D(n33), .Y(n37) );
  OAI21X1 U52 ( .A(n57), .B(n47), .C(n38), .Y(nextpc[2]) );
  AOI22X1 U53 ( .A(n32), .B(instr[0]), .C(aluout[2]), .D(n33), .Y(n38) );
  NOR2X1 U54 ( .A(n58), .B(pcsource[0]), .Y(n32) );
  AOI22X1 U55 ( .A(aluout[0]), .B(n33), .C(aluresult[0]), .D(n39), .Y(n40) );
  AOI22X1 U56 ( .A(aluout[1]), .B(n33), .C(aluresult[1]), .D(n39), .Y(n41) );
  NOR2X1 U57 ( .A(pcsource[0]), .B(pcsource[1]), .Y(n39) );
  mux2reg regmux ( .d0(instr[18:16]), .d1(instr[13:11]), .s(regdst), .y(wa) );
  flopen_test_0 ir0 ( .clk(clk), .en(irwrite[3]), .d(memdata), .q(instr[7:0]), 
        .test_si(a[7]), .test_se(test_se) );
  flopen_test_1 ir1 ( .clk(clk), .en(irwrite[2]), .d(memdata), .q(instr[15:8]), 
        .test_si(instr[7]), .test_se(test_se) );
  flopen_test_2 ir2 ( .clk(clk), .en(irwrite[1]), .d(memdata), .q(instr[23:16]), .test_si(instr[15]), .test_se(test_se) );
  flopen_test_3 ir3 ( .clk(clk), .en(irwrite[0]), .d(memdata), .q(instr[31:24]), .test_si(instr[23]), .test_se(test_se) );
  flopenr_test_1 pcreg ( .clk(clk), .reset(reset), .en(pcen), .d({nextpc, n9, 
        n8}), .q(pc), .test_si(md[7]), .test_se(test_se) );
  flop_test_1 mdr ( .clk(clk), .d(memdata), .q(md), .test_si(instr[31]), 
        .test_se(test_se) );
  flop_test_0 areg ( .clk(clk), .d(rd1), .q(a), .test_si(test_si), .test_se(
        test_se) );
  flop_test_3 wrd ( .clk(clk), .d(rd2), .q(writedata), .test_si(n59), 
        .test_se(test_se) );
  flop_test_2 res ( .clk(clk), .d(aluresult), .q(aluout), .test_si(pc[7]), 
        .test_se(test_se) );
  mux2_2 adrmux ( .d0(pc), .d1(aluout), .s(iord), .y(adr) );
  mux2_1 src1mux ( .d0(pc), .d1(a), .s(alusrca), .y(src1) );
  mux2_0 wdmux ( .d0(aluout), .d1(md), .s(memtoreg), .y(wd) );
  regfile_test_1 rf ( .clk(clk), .regwrite(regwrite), .ra1(instr[23:21]), 
        .ra2(instr[18:16]), .wa(wa), .wd(wd), .rd1(rd1), .rd2(rd2), .test_si(
        aluout[7]), .test_so(n59), .test_se(test_se) );
  alu alunit ( .a(src1), .b(src2), .alucont(alucont), .result(aluresult) );
  zerodetect zd ( .a(aluresult), .y(zero) );
  INVX2 U5 ( .A(aluresult[7]), .Y(n42) );
  INVX2 U6 ( .A(aluresult[6]), .Y(n43) );
  INVX2 U7 ( .A(aluresult[5]), .Y(n44) );
  INVX2 U8 ( .A(aluresult[4]), .Y(n45) );
  INVX2 U9 ( .A(aluresult[3]), .Y(n46) );
  INVX2 U10 ( .A(aluresult[2]), .Y(n47) );
  INVX2 U11 ( .A(instr[7]), .Y(n48) );
  INVX2 U14 ( .A(instr[6]), .Y(n49) );
  INVX2 U15 ( .A(instr[5]), .Y(n50) );
  INVX2 U16 ( .A(instr[4]), .Y(n51) );
  INVX2 U17 ( .A(instr[3]), .Y(n52) );
  INVX2 U18 ( .A(instr[2]), .Y(n53) );
  INVX2 U19 ( .A(instr[1]), .Y(n54) );
  INVX2 U20 ( .A(n20), .Y(n55) );
  INVX2 U21 ( .A(alusrcb[0]), .Y(n56) );
  INVX2 U22 ( .A(n39), .Y(n57) );
  INVX2 U23 ( .A(pcsource[1]), .Y(n58) );
endmodule


module controller_test_1 ( clk, reset, op, zero, memread, memwrite, alusrca, 
        memtoreg, iord, pcen, regwrite, regdst, pcsource, alusrcb, aluop, 
        irwrite, test_si, test_so, test_se );
  input [5:0] op;
  output [1:0] pcsource;
  output [1:0] alusrcb;
  output [1:0] aluop;
  output [3:0] irwrite;
  input clk, reset, zero, test_si, test_se;
  output memread, memwrite, alusrca, memtoreg, iord, pcen, regwrite, regdst,
         test_so;
  wire   N15, N18, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n82, n83, n84, n85, n86, n87,
         n88, n92, n93, n94, n96, n97;
  wire   [3:0] state;

  INVX2 U3 ( .A(n31), .Y(regdst) );
  INVX2 U4 ( .A(n35), .Y(pcsource[1]) );
  INVX2 U5 ( .A(n46), .Y(memwrite) );
  INVX2 U6 ( .A(n30), .Y(memtoreg) );
  INVX2 U7 ( .A(n49), .Y(irwrite[2]) );
  INVX2 U8 ( .A(n44), .Y(irwrite[1]) );
  AND2X2 U9 ( .A(state[3]), .B(state[2]), .Y(n50) );
  INVX2 U12 ( .A(n42), .Y(aluop[1]) );
  INVX2 U13 ( .A(n55), .Y(aluop[0]) );
  AND2X2 U14 ( .A(n42), .B(n48), .Y(n57) );
  AND2X2 U15 ( .A(op[3]), .B(n87), .Y(n59) );
  OR2X2 U16 ( .A(n70), .B(n71), .Y(N15) );
  AND2X2 U17 ( .A(state[2]), .B(test_so), .Y(n58) );
  NAND3X1 U37 ( .A(n30), .B(n31), .C(n32), .Y(regwrite) );
  NAND3X1 U38 ( .A(state[1]), .B(n33), .C(state[3]), .Y(n31) );
  NAND2X1 U39 ( .A(n34), .B(n88), .Y(pcen) );
  AOI21X1 U40 ( .A(zero), .B(pcsource[0]), .C(pcsource[1]), .Y(n34) );
  NAND3X1 U41 ( .A(n36), .B(state[0]), .C(state[2]), .Y(n35) );
  OAI21X1 U42 ( .A(n38), .B(n39), .C(n97), .Y(n37) );
  OAI21X1 U43 ( .A(n40), .B(n41), .C(n42), .Y(n39) );
  NAND3X1 U44 ( .A(n43), .B(n44), .C(n45), .Y(n38) );
  NAND2X1 U45 ( .A(n47), .B(n36), .Y(n30) );
  NAND2X1 U46 ( .A(n88), .B(n48), .Y(memread) );
  NAND3X1 U47 ( .A(n32), .B(n46), .C(n48), .Y(iord) );
  NAND2X1 U48 ( .A(n36), .B(n33), .Y(n46) );
  NAND3X1 U49 ( .A(state[1]), .B(n92), .C(n50), .Y(n32) );
  NAND2X1 U50 ( .A(n51), .B(n41), .Y(alusrcb[1]) );
  NAND2X1 U51 ( .A(n88), .B(n41), .Y(alusrcb[0]) );
  NAND3X1 U52 ( .A(n44), .B(n49), .C(n53), .Y(n52) );
  NOR2X1 U53 ( .A(irwrite[0]), .B(irwrite[3]), .Y(n53) );
  NAND3X1 U54 ( .A(n96), .B(test_so), .C(n33), .Y(n43) );
  NAND3X1 U55 ( .A(state[1]), .B(test_so), .C(n47), .Y(n44) );
  NAND3X1 U56 ( .A(n51), .B(n55), .C(n42), .Y(alusrca) );
  NAND3X1 U57 ( .A(n36), .B(n92), .C(state[2]), .Y(n55) );
  NOR2X1 U58 ( .A(test_so), .B(state[1]), .Y(n36) );
  AOI21X1 U59 ( .A(n56), .B(n57), .C(reset), .Y(N18) );
  NAND3X1 U60 ( .A(state[1]), .B(state[0]), .C(n58), .Y(n48) );
  NAND3X1 U61 ( .A(state[3]), .B(state[1]), .C(n47), .Y(n42) );
  AOI22X1 U62 ( .A(n59), .B(n85), .C(n84), .D(n60), .Y(n56) );
  OAI21X1 U63 ( .A(n63), .B(n64), .C(n97), .Y(n62) );
  OAI21X1 U64 ( .A(n61), .B(n65), .C(n66), .Y(n64) );
  NAND3X1 U65 ( .A(n85), .B(n83), .C(n93), .Y(n66) );
  OAI21X1 U66 ( .A(op[2]), .B(op[1]), .C(n60), .Y(n65) );
  NAND2X1 U67 ( .A(op[2]), .B(op[1]), .Y(n60) );
  NAND3X1 U68 ( .A(n67), .B(n93), .C(n68), .Y(n61) );
  NOR2X1 U69 ( .A(op[4]), .B(op[0]), .Y(n68) );
  NAND3X1 U70 ( .A(n54), .B(n49), .C(n45), .Y(n63) );
  NAND3X1 U71 ( .A(n85), .B(n87), .C(n69), .Y(n45) );
  AOI21X1 U72 ( .A(op[5]), .B(op[3]), .C(n67), .Y(n69) );
  NAND3X1 U73 ( .A(n33), .B(test_so), .C(state[1]), .Y(n49) );
  NOR2X1 U74 ( .A(n92), .B(state[2]), .Y(n33) );
  NAND3X1 U75 ( .A(n92), .B(n96), .C(n58), .Y(n54) );
  OAI21X1 U76 ( .A(state[1]), .B(state[0]), .C(n72), .Y(n71) );
  AOI22X1 U77 ( .A(n93), .B(n73), .C(n87), .D(n74), .Y(n72) );
  NAND3X1 U78 ( .A(op[3]), .B(n82), .C(n85), .Y(n74) );
  NAND2X1 U79 ( .A(n75), .B(n86), .Y(n40) );
  NAND3X1 U80 ( .A(state[1]), .B(n92), .C(n58), .Y(n51) );
  OAI21X1 U81 ( .A(n67), .B(n86), .C(n75), .Y(n73) );
  NOR3X1 U82 ( .A(op[1]), .B(op[4]), .C(op[0]), .Y(n75) );
  NOR2X1 U83 ( .A(op[5]), .B(op[3]), .Y(n67) );
  NAND3X1 U84 ( .A(state[0]), .B(n96), .C(n58), .Y(n41) );
  NAND3X1 U85 ( .A(n97), .B(test_so), .C(n94), .Y(n70) );
  NOR2X1 U86 ( .A(state[0]), .B(state[2]), .Y(n47) );
  DFFPOSX1_SCAN state_reg_0_ ( .D(N15), .TI(test_si), .TE(test_se), .CLK(clk), 
        .Q(state[0]) );
  DFFPOSX1_SCAN state_reg_3_ ( .D(N18), .TI(state[2]), .TE(test_se), .CLK(clk), 
        .Q(state[3]) );
  DFFPOSX1_SCAN state_reg_2_ ( .D(n77), .TI(n96), .TE(test_se), .CLK(clk), .Q(
        state[2]) );
  DFFPOSX1_SCAN state_reg_1_ ( .D(n76), .TI(n92), .TE(test_se), .CLK(clk), .Q(
        state[1]) );
  INVX2 U20 ( .A(op[5]), .Y(n82) );
  INVX2 U21 ( .A(n62), .Y(n77) );
  INVX2 U22 ( .A(n37), .Y(n76) );
  INVX2 U23 ( .A(n67), .Y(n83) );
  INVX2 U24 ( .A(n61), .Y(n84) );
  INVX2 U25 ( .A(n40), .Y(n85) );
  INVX2 U26 ( .A(op[2]), .Y(n86) );
  INVX2 U27 ( .A(n51), .Y(n87) );
  INVX2 U28 ( .A(n52), .Y(n88) );
  INVX2 U29 ( .A(n54), .Y(irwrite[3]) );
  INVX2 U30 ( .A(n43), .Y(irwrite[0]) );
  INVX2 U31 ( .A(n55), .Y(pcsource[0]) );
  INVX2 U32 ( .A(state[0]), .Y(n92) );
  INVX2 U33 ( .A(n41), .Y(n93) );
  INVX2 U34 ( .A(n47), .Y(n94) );
  INVX2 U35 ( .A(state[3]), .Y(test_so) );
  INVX2 U36 ( .A(state[1]), .Y(n96) );
  INVX2 U87 ( .A(reset), .Y(n97) );
endmodule


module mips ( clk, reset, memdata, memread, memwrite, adr, writedata, test_si, 
        test_so, test_se );
  input [7:0] memdata;
  output [7:0] adr;
  output [7:0] writedata;
  input clk, reset, test_si, test_se;
  output memread, memwrite, test_so;
  wire   zero, alusrca, memtoreg, iord, pcen, regwrite, regdst, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n38, n40, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10,
         SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12,
         SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14,
         SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16,
         SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18,
         SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20;
  wire   [31:0] instr;
  wire   [1:0] pcsource;
  wire   [1:0] alusrcb;
  wire   [1:0] aluop;
  wire   [3:0] irwrite;
  wire   [2:0] alucont;

  controller_test_1 cont ( .clk(clk), .reset(n20), .op(instr[31:26]), .zero(
        zero), .memread(memread), .memwrite(memwrite), .alusrca(alusrca), 
        .memtoreg(memtoreg), .iord(iord), .pcen(pcen), .regwrite(regwrite), 
        .regdst(regdst), .pcsource(pcsource), .alusrcb(alusrcb), .aluop(aluop), 
        .irwrite(irwrite), .test_si(test_si), .test_so(n38), .test_se(test_se)
         );
  alucontrol ac ( .aluop(aluop), .funct(instr[5:0]), .alucont(alucont) );
  datapath_test_1 dp ( .clk(clk), .reset(n20), .memdata({n36, n34, n32, n30, 
        n28, n26, n24, n22}), .alusrca(alusrca), .memtoreg(memtoreg), .iord(
        iord), .pcen(pcen), .regwrite(regwrite), .regdst(regdst), .pcsource(
        pcsource), .alusrcb(alusrcb), .irwrite(irwrite), .alucont(alucont), 
        .zero(zero), .instr({instr[31:26], SYNOPSYS_UNCONNECTED_1, 
        SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, 
        SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, 
        SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9, 
        SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11, 
        SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13, 
        SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15, 
        SYNOPSYS_UNCONNECTED_16, SYNOPSYS_UNCONNECTED_17, 
        SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19, 
        SYNOPSYS_UNCONNECTED_20, instr[5:0]}), .adr(adr), .writedata(writedata), .test_si(n38), .test_se(test_se) );
  INVX2 U1 ( .A(reset), .Y(n19) );
  INVX2 U2 ( .A(n19), .Y(n20) );
  INVX2 U3 ( .A(memdata[0]), .Y(n21) );
  INVX2 U4 ( .A(n21), .Y(n22) );
  INVX2 U5 ( .A(memdata[1]), .Y(n23) );
  INVX2 U6 ( .A(n23), .Y(n24) );
  INVX2 U7 ( .A(memdata[2]), .Y(n25) );
  INVX2 U8 ( .A(n25), .Y(n26) );
  INVX2 U9 ( .A(memdata[3]), .Y(n27) );
  INVX2 U10 ( .A(n27), .Y(n28) );
  INVX2 U11 ( .A(memdata[4]), .Y(n29) );
  INVX2 U12 ( .A(n29), .Y(n30) );
  INVX2 U13 ( .A(memdata[5]), .Y(n31) );
  INVX2 U14 ( .A(n31), .Y(n32) );
  INVX2 U15 ( .A(memdata[6]), .Y(n33) );
  INVX2 U16 ( .A(n33), .Y(n34) );
  INVX2 U17 ( .A(memdata[7]), .Y(n35) );
  INVX2 U18 ( .A(n35), .Y(n36) );
  INVX8 U19 ( .A(writedata[7]), .Y(n40) );
  INVX8 U20 ( .A(n40), .Y(test_so) );
endmodule

