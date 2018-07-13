
module controller ( clk, reset, op, zero, memread, memwrite, alusrca, memtoreg, 
        iord, pcen, regwrite, regdst, pcsource, alusrcb, aluop, irwrite );
  input [5:0] op;
  output [1:0] pcsource;
  output [1:0] alusrcb;
  output [1:0] aluop;
  output [3:0] irwrite;
  input clk, reset, zero;
  output memread, memwrite, alusrca, memtoreg, iord, pcen, regwrite, regdst;
  wire   N15, N17, N18, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n2, n3, n4, n5, n6, n7, n8, n10,
         n11, n12, n13, n14, n15, n17, n18, n19, n20, n21, n22;
  wire   [3:0] state;

  DFFPOSX1 state_reg_0_ ( .D(N15), .CLK(clk), .Q(state[0]) );
  DFFPOSX1 state_reg_3_ ( .D(N18), .CLK(clk), .Q(state[3]) );
  DFFPOSX1 state_reg_2_ ( .D(N17), .CLK(clk), .Q(state[2]) );
  DFFPOSX1 state_reg_1_ ( .D(n2), .CLK(clk), .Q(state[1]) );
  INVX2 U4 ( .A(n29), .Y(aluop[0]) );
  INVX2 U5 ( .A(n23), .Y(memtoreg) );
  INVX2 U6 ( .A(n32), .Y(irwrite[3]) );
  INVX2 U8 ( .A(n39), .Y(aluop[1]) );
  OR2X2 U9 ( .A(n34), .B(n52), .Y(n51) );
  AND2X2 U10 ( .A(n65), .B(n22), .Y(n62) );
  NAND3X1 U33 ( .A(n23), .B(n12), .C(n24), .Y(regwrite) );
  NOR2X1 U34 ( .A(n21), .B(n25), .Y(regdst) );
  NAND2X1 U35 ( .A(n26), .B(n14), .Y(pcen) );
  AOI21X1 U36 ( .A(zero), .B(pcsource[0]), .C(pcsource[1]), .Y(n26) );
  NAND3X1 U37 ( .A(state[2]), .B(state[3]), .C(n28), .Y(n27) );
  NOR2X1 U38 ( .A(state[1]), .B(n10), .Y(n28) );
  NAND3X1 U39 ( .A(state[3]), .B(n21), .C(n30), .Y(n23) );
  NAND2X1 U40 ( .A(n14), .B(n31), .Y(memread) );
  NAND3X1 U41 ( .A(n31), .B(n11), .C(n24), .Y(iord) );
  NAND3X1 U42 ( .A(state[1]), .B(state[3]), .C(n33), .Y(n24) );
  NOR2X1 U43 ( .A(n25), .B(state[1]), .Y(memwrite) );
  NAND3X1 U44 ( .A(state[0]), .B(n20), .C(state[3]), .Y(n25) );
  NAND2X1 U45 ( .A(n34), .B(n35), .Y(alusrcb[1]) );
  NAND2X1 U46 ( .A(n14), .B(n34), .Y(alusrcb[0]) );
  NAND3X1 U47 ( .A(n32), .B(n15), .C(n37), .Y(n36) );
  NOR2X1 U48 ( .A(irwrite[0]), .B(irwrite[1]), .Y(n37) );
  NAND3X1 U49 ( .A(n29), .B(n39), .C(n35), .Y(alusrca) );
  NAND3X1 U50 ( .A(state[3]), .B(n21), .C(n33), .Y(n29) );
  OAI21X1 U51 ( .A(reset), .B(n40), .C(n41), .Y(N18) );
  OAI21X1 U52 ( .A(n8), .B(n7), .C(n5), .Y(n41) );
  AOI21X1 U53 ( .A(op[3]), .B(n43), .C(n44), .Y(n40) );
  NAND2X1 U54 ( .A(n31), .B(n39), .Y(n44) );
  NAND3X1 U55 ( .A(state[2]), .B(state[1]), .C(n45), .Y(n31) );
  NOR2X1 U56 ( .A(state[3]), .B(n10), .Y(n45) );
  OAI21X1 U57 ( .A(n46), .B(n42), .C(n47), .Y(N17) );
  OAI21X1 U58 ( .A(n48), .B(n49), .C(n22), .Y(n47) );
  OAI21X1 U59 ( .A(n50), .B(n51), .C(n32), .Y(n49) );
  NAND3X1 U60 ( .A(n21), .B(n19), .C(n33), .Y(n32) );
  NAND2X1 U61 ( .A(n15), .B(n53), .Y(n48) );
  NOR2X1 U62 ( .A(n54), .B(n21), .Y(irwrite[2]) );
  NAND3X1 U63 ( .A(n52), .B(n22), .C(n55), .Y(n42) );
  NOR2X1 U64 ( .A(n34), .B(n6), .Y(n55) );
  XNOR2X1 U65 ( .A(op[1]), .B(op[2]), .Y(n46) );
  OAI21X1 U66 ( .A(n57), .B(n58), .C(n22), .Y(n56) );
  OAI21X1 U67 ( .A(n34), .B(n50), .C(n38), .Y(n58) );
  NAND3X1 U68 ( .A(state[1]), .B(n19), .C(n30), .Y(n38) );
  NAND3X1 U69 ( .A(n53), .B(n39), .C(n13), .Y(n57) );
  NOR2X1 U70 ( .A(n54), .B(state[1]), .Y(irwrite[0]) );
  NAND3X1 U71 ( .A(n20), .B(n19), .C(state[0]), .Y(n54) );
  NAND3X1 U72 ( .A(state[1]), .B(state[3]), .C(n30), .Y(n39) );
  OAI21X1 U73 ( .A(n59), .B(n3), .C(n43), .Y(n53) );
  NOR2X1 U74 ( .A(op[3]), .B(n4), .Y(n59) );
  NAND3X1 U75 ( .A(n61), .B(n62), .C(n63), .Y(N15) );
  NOR2X1 U76 ( .A(n30), .B(n64), .Y(n63) );
  OAI21X1 U77 ( .A(state[1]), .B(state[0]), .C(n19), .Y(n64) );
  NOR2X1 U78 ( .A(state[2]), .B(state[0]), .Y(n30) );
  OAI21X1 U79 ( .A(n6), .B(n66), .C(n17), .Y(n65) );
  NAND3X1 U80 ( .A(state[2]), .B(state[0]), .C(n67), .Y(n34) );
  NOR2X1 U81 ( .A(state[3]), .B(state[1]), .Y(n67) );
  OAI21X1 U82 ( .A(n52), .B(n7), .C(n8), .Y(n66) );
  NOR2X1 U83 ( .A(op[5]), .B(op[3]), .Y(n52) );
  AOI22X1 U84 ( .A(n43), .B(n60), .C(n18), .D(n50), .Y(n61) );
  NAND2X1 U85 ( .A(op[3]), .B(n4), .Y(n60) );
  NOR2X1 U86 ( .A(n50), .B(n35), .Y(n43) );
  NAND3X1 U87 ( .A(state[1]), .B(n19), .C(n33), .Y(n35) );
  NOR2X1 U88 ( .A(n20), .B(state[0]), .Y(n33) );
  NAND3X1 U89 ( .A(n8), .B(n7), .C(n68), .Y(n50) );
  NOR2X1 U90 ( .A(op[4]), .B(op[0]), .Y(n68) );
  INVX2 U3 ( .A(n29), .Y(pcsource[0]) );
  INVX2 U7 ( .A(n56), .Y(n2) );
  INVX2 U11 ( .A(n60), .Y(n3) );
  INVX2 U12 ( .A(op[5]), .Y(n4) );
  INVX2 U13 ( .A(n42), .Y(n5) );
  INVX2 U14 ( .A(n68), .Y(n6) );
  INVX2 U15 ( .A(op[2]), .Y(n7) );
  INVX2 U16 ( .A(op[1]), .Y(n8) );
  INVX2 U17 ( .A(n27), .Y(pcsource[1]) );
  INVX2 U18 ( .A(state[0]), .Y(n10) );
  INVX2 U19 ( .A(memwrite), .Y(n11) );
  INVX2 U20 ( .A(regdst), .Y(n12) );
  INVX2 U21 ( .A(irwrite[0]), .Y(n13) );
  INVX2 U22 ( .A(n36), .Y(n14) );
  INVX2 U23 ( .A(irwrite[2]), .Y(n15) );
  INVX2 U24 ( .A(n38), .Y(irwrite[1]) );
  INVX2 U25 ( .A(n34), .Y(n17) );
  INVX2 U26 ( .A(n35), .Y(n18) );
  INVX2 U27 ( .A(state[3]), .Y(n19) );
  INVX2 U28 ( .A(state[2]), .Y(n20) );
  INVX2 U29 ( .A(state[1]), .Y(n21) );
  INVX2 U30 ( .A(reset), .Y(n22) );
endmodule


module alucontrol ( aluop, funct, alucont );
  input [1:0] aluop;
  input [5:0] funct;
  output [2:0] alucont;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n1, n2, n3, n4, n5, n6;

  INVX2 U3 ( .A(n14), .Y(alucont[0]) );
  OAI21X1 U10 ( .A(aluop[1]), .B(n6), .C(n8), .Y(alucont[2]) );
  OAI21X1 U11 ( .A(n9), .B(n10), .C(aluop[1]), .Y(n8) );
  OAI21X1 U12 ( .A(funct[2]), .B(n5), .C(funct[5]), .Y(n10) );
  NAND3X1 U13 ( .A(n4), .B(n1), .C(n11), .Y(n9) );
  OAI21X1 U14 ( .A(n12), .B(n13), .C(aluop[1]), .Y(alucont[1]) );
  NAND2X1 U15 ( .A(funct[5]), .B(n11), .Y(n13) );
  NAND2X1 U16 ( .A(funct[3]), .B(n4), .Y(n11) );
  NAND3X1 U17 ( .A(n3), .B(n1), .C(n5), .Y(n12) );
  OAI21X1 U18 ( .A(n15), .B(n16), .C(aluop[1]), .Y(n14) );
  OAI21X1 U19 ( .A(n4), .B(n3), .C(funct[5]), .Y(n16) );
  NAND3X1 U20 ( .A(n2), .B(n1), .C(n5), .Y(n15) );
  INVX2 U4 ( .A(funct[4]), .Y(n1) );
  INVX2 U5 ( .A(funct[3]), .Y(n2) );
  INVX2 U6 ( .A(funct[2]), .Y(n3) );
  INVX2 U7 ( .A(funct[1]), .Y(n4) );
  INVX2 U8 ( .A(funct[0]), .Y(n5) );
  INVX2 U9 ( .A(aluop[0]), .Y(n6) );
endmodule


module mux2reg ( d0, d1, s, y );
  input [2:0] d0;
  input [2:0] d1;
  output [2:0] y;
  input s;
  wire   n5, n6, n7, n1;

  INVX2 U1 ( .A(n5), .Y(y[2]) );
  INVX2 U2 ( .A(n6), .Y(y[1]) );
  INVX2 U3 ( .A(n7), .Y(y[0]) );
  AOI22X1 U5 ( .A(d0[2]), .B(n1), .C(s), .D(d1[2]), .Y(n5) );
  AOI22X1 U6 ( .A(d0[1]), .B(n1), .C(d1[1]), .D(s), .Y(n6) );
  AOI22X1 U7 ( .A(d0[0]), .B(n1), .C(d1[0]), .D(s), .Y(n7) );
  INVX2 U4 ( .A(s), .Y(n1) );
endmodule


module flopen_3 ( clk, en, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk, en;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n2, n10, n11, n12, n13, n14, n15, n16,
         n17;

  DFFPOSX1 q_reg_7_ ( .D(n2), .CLK(clk), .Q(q[7]) );
  DFFPOSX1 q_reg_6_ ( .D(n10), .CLK(clk), .Q(q[6]) );
  DFFPOSX1 q_reg_5_ ( .D(n11), .CLK(clk), .Q(q[5]) );
  DFFPOSX1 q_reg_4_ ( .D(n12), .CLK(clk), .Q(q[4]) );
  DFFPOSX1 q_reg_3_ ( .D(n13), .CLK(clk), .Q(q[3]) );
  DFFPOSX1 q_reg_2_ ( .D(n14), .CLK(clk), .Q(q[2]) );
  DFFPOSX1 q_reg_1_ ( .D(n15), .CLK(clk), .Q(q[1]) );
  DFFPOSX1 q_reg_0_ ( .D(n16), .CLK(clk), .Q(q[0]) );
  AOI22X1 U3 ( .A(en), .B(d[0]), .C(q[0]), .D(n17), .Y(n1) );
  AOI22X1 U5 ( .A(d[1]), .B(en), .C(q[1]), .D(n17), .Y(n3) );
  AOI22X1 U7 ( .A(d[2]), .B(en), .C(q[2]), .D(n17), .Y(n4) );
  AOI22X1 U9 ( .A(d[3]), .B(en), .C(q[3]), .D(n17), .Y(n5) );
  AOI22X1 U11 ( .A(d[4]), .B(en), .C(q[4]), .D(n17), .Y(n6) );
  AOI22X1 U13 ( .A(d[5]), .B(en), .C(q[5]), .D(n17), .Y(n7) );
  AOI22X1 U15 ( .A(d[6]), .B(en), .C(q[6]), .D(n17), .Y(n8) );
  AOI22X1 U17 ( .A(d[7]), .B(en), .C(q[7]), .D(n17), .Y(n9) );
  INVX2 U2 ( .A(n9), .Y(n2) );
  INVX2 U4 ( .A(n8), .Y(n10) );
  INVX2 U6 ( .A(n7), .Y(n11) );
  INVX2 U8 ( .A(n6), .Y(n12) );
  INVX2 U10 ( .A(n5), .Y(n13) );
  INVX2 U12 ( .A(n4), .Y(n14) );
  INVX2 U14 ( .A(n3), .Y(n15) );
  INVX2 U16 ( .A(n1), .Y(n16) );
  INVX2 U18 ( .A(en), .Y(n17) );
endmodule


module flopen_2 ( clk, en, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk, en;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25;

  DFFPOSX1 q_reg_7_ ( .D(n2), .CLK(clk), .Q(q[7]) );
  DFFPOSX1 q_reg_6_ ( .D(n10), .CLK(clk), .Q(q[6]) );
  DFFPOSX1 q_reg_5_ ( .D(n11), .CLK(clk), .Q(q[5]) );
  DFFPOSX1 q_reg_4_ ( .D(n12), .CLK(clk), .Q(q[4]) );
  DFFPOSX1 q_reg_3_ ( .D(n13), .CLK(clk), .Q(q[3]) );
  DFFPOSX1 q_reg_2_ ( .D(n14), .CLK(clk), .Q(q[2]) );
  DFFPOSX1 q_reg_1_ ( .D(n15), .CLK(clk), .Q(q[1]) );
  DFFPOSX1 q_reg_0_ ( .D(n16), .CLK(clk), .Q(q[0]) );
  AOI22X1 U3 ( .A(en), .B(d[0]), .C(q[0]), .D(n17), .Y(n25) );
  AOI22X1 U5 ( .A(d[1]), .B(en), .C(q[1]), .D(n17), .Y(n24) );
  AOI22X1 U7 ( .A(d[2]), .B(en), .C(q[2]), .D(n17), .Y(n23) );
  AOI22X1 U9 ( .A(d[3]), .B(en), .C(q[3]), .D(n17), .Y(n22) );
  AOI22X1 U11 ( .A(d[4]), .B(en), .C(q[4]), .D(n17), .Y(n21) );
  AOI22X1 U13 ( .A(d[5]), .B(en), .C(q[5]), .D(n17), .Y(n20) );
  AOI22X1 U15 ( .A(d[6]), .B(en), .C(q[6]), .D(n17), .Y(n19) );
  AOI22X1 U17 ( .A(d[7]), .B(en), .C(q[7]), .D(n17), .Y(n18) );
  INVX2 U2 ( .A(n18), .Y(n2) );
  INVX2 U4 ( .A(n19), .Y(n10) );
  INVX2 U6 ( .A(n20), .Y(n11) );
  INVX2 U8 ( .A(n21), .Y(n12) );
  INVX2 U10 ( .A(n22), .Y(n13) );
  INVX2 U12 ( .A(n23), .Y(n14) );
  INVX2 U14 ( .A(n24), .Y(n15) );
  INVX2 U16 ( .A(n25), .Y(n16) );
  INVX2 U18 ( .A(en), .Y(n17) );
endmodule


module flopen_1 ( clk, en, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk, en;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25;

  DFFPOSX1 q_reg_7_ ( .D(n2), .CLK(clk), .Q(q[7]) );
  DFFPOSX1 q_reg_6_ ( .D(n10), .CLK(clk), .Q(q[6]) );
  DFFPOSX1 q_reg_5_ ( .D(n11), .CLK(clk), .Q(q[5]) );
  DFFPOSX1 q_reg_4_ ( .D(n12), .CLK(clk), .Q(q[4]) );
  DFFPOSX1 q_reg_3_ ( .D(n13), .CLK(clk), .Q(q[3]) );
  DFFPOSX1 q_reg_2_ ( .D(n14), .CLK(clk), .Q(q[2]) );
  DFFPOSX1 q_reg_1_ ( .D(n15), .CLK(clk), .Q(q[1]) );
  DFFPOSX1 q_reg_0_ ( .D(n16), .CLK(clk), .Q(q[0]) );
  AOI22X1 U3 ( .A(en), .B(d[0]), .C(q[0]), .D(n17), .Y(n25) );
  AOI22X1 U5 ( .A(d[1]), .B(en), .C(q[1]), .D(n17), .Y(n24) );
  AOI22X1 U7 ( .A(d[2]), .B(en), .C(q[2]), .D(n17), .Y(n23) );
  AOI22X1 U9 ( .A(d[3]), .B(en), .C(q[3]), .D(n17), .Y(n22) );
  AOI22X1 U11 ( .A(d[4]), .B(en), .C(q[4]), .D(n17), .Y(n21) );
  AOI22X1 U13 ( .A(d[5]), .B(en), .C(q[5]), .D(n17), .Y(n20) );
  AOI22X1 U15 ( .A(d[6]), .B(en), .C(q[6]), .D(n17), .Y(n19) );
  AOI22X1 U17 ( .A(d[7]), .B(en), .C(q[7]), .D(n17), .Y(n18) );
  INVX2 U2 ( .A(n18), .Y(n2) );
  INVX2 U4 ( .A(n19), .Y(n10) );
  INVX2 U6 ( .A(n20), .Y(n11) );
  INVX2 U8 ( .A(n21), .Y(n12) );
  INVX2 U10 ( .A(n22), .Y(n13) );
  INVX2 U12 ( .A(n23), .Y(n14) );
  INVX2 U14 ( .A(n24), .Y(n15) );
  INVX2 U16 ( .A(n25), .Y(n16) );
  INVX2 U18 ( .A(en), .Y(n17) );
endmodule


module flopen_0 ( clk, en, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk, en;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25;

  DFFPOSX1 q_reg_7_ ( .D(n2), .CLK(clk), .Q(q[7]) );
  DFFPOSX1 q_reg_6_ ( .D(n10), .CLK(clk), .Q(q[6]) );
  DFFPOSX1 q_reg_5_ ( .D(n11), .CLK(clk), .Q(q[5]) );
  DFFPOSX1 q_reg_4_ ( .D(n12), .CLK(clk), .Q(q[4]) );
  DFFPOSX1 q_reg_3_ ( .D(n13), .CLK(clk), .Q(q[3]) );
  DFFPOSX1 q_reg_2_ ( .D(n14), .CLK(clk), .Q(q[2]) );
  DFFPOSX1 q_reg_1_ ( .D(n15), .CLK(clk), .Q(q[1]) );
  DFFPOSX1 q_reg_0_ ( .D(n16), .CLK(clk), .Q(q[0]) );
  AOI22X1 U3 ( .A(en), .B(d[0]), .C(q[0]), .D(n17), .Y(n25) );
  AOI22X1 U5 ( .A(d[1]), .B(en), .C(q[1]), .D(n17), .Y(n24) );
  AOI22X1 U7 ( .A(d[2]), .B(en), .C(q[2]), .D(n17), .Y(n23) );
  AOI22X1 U9 ( .A(d[3]), .B(en), .C(q[3]), .D(n17), .Y(n22) );
  AOI22X1 U11 ( .A(d[4]), .B(en), .C(q[4]), .D(n17), .Y(n21) );
  AOI22X1 U13 ( .A(d[5]), .B(en), .C(q[5]), .D(n17), .Y(n20) );
  AOI22X1 U15 ( .A(d[6]), .B(en), .C(q[6]), .D(n17), .Y(n19) );
  AOI22X1 U17 ( .A(d[7]), .B(en), .C(q[7]), .D(n17), .Y(n18) );
  INVX2 U2 ( .A(n18), .Y(n2) );
  INVX2 U4 ( .A(n19), .Y(n10) );
  INVX2 U6 ( .A(n20), .Y(n11) );
  INVX2 U8 ( .A(n21), .Y(n12) );
  INVX2 U10 ( .A(n22), .Y(n13) );
  INVX2 U12 ( .A(n23), .Y(n14) );
  INVX2 U14 ( .A(n24), .Y(n15) );
  INVX2 U16 ( .A(n25), .Y(n16) );
  INVX2 U18 ( .A(en), .Y(n17) );
endmodule


module flopenr ( clk, reset, en, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk, reset, en;
  wire   n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n1, n2, n3, n4, n5,
         n6, n7, n8, n9;

  DFFPOSX1 q_reg_7_ ( .D(n1), .CLK(clk), .Q(q[7]) );
  DFFPOSX1 q_reg_6_ ( .D(n2), .CLK(clk), .Q(q[6]) );
  DFFPOSX1 q_reg_5_ ( .D(n3), .CLK(clk), .Q(q[5]) );
  DFFPOSX1 q_reg_4_ ( .D(n4), .CLK(clk), .Q(q[4]) );
  DFFPOSX1 q_reg_3_ ( .D(n5), .CLK(clk), .Q(q[3]) );
  DFFPOSX1 q_reg_2_ ( .D(n6), .CLK(clk), .Q(q[2]) );
  DFFPOSX1 q_reg_1_ ( .D(n7), .CLK(clk), .Q(q[1]) );
  DFFPOSX1 q_reg_0_ ( .D(n8), .CLK(clk), .Q(q[0]) );
  AOI22X1 U11 ( .A(d[0]), .B(n11), .C(q[0]), .D(n12), .Y(n10) );
  AOI22X1 U12 ( .A(d[1]), .B(n11), .C(q[1]), .D(n12), .Y(n13) );
  AOI22X1 U13 ( .A(d[2]), .B(n11), .C(q[2]), .D(n12), .Y(n14) );
  AOI22X1 U14 ( .A(d[3]), .B(n11), .C(q[3]), .D(n12), .Y(n15) );
  AOI22X1 U15 ( .A(d[4]), .B(n11), .C(q[4]), .D(n12), .Y(n16) );
  AOI22X1 U16 ( .A(d[5]), .B(n11), .C(q[5]), .D(n12), .Y(n17) );
  AOI22X1 U17 ( .A(d[6]), .B(n11), .C(q[6]), .D(n12), .Y(n18) );
  AOI22X1 U18 ( .A(d[7]), .B(n11), .C(q[7]), .D(n12), .Y(n19) );
  NOR2X1 U19 ( .A(reset), .B(n11), .Y(n12) );
  NOR2X1 U20 ( .A(n9), .B(reset), .Y(n11) );
  INVX2 U2 ( .A(n19), .Y(n1) );
  INVX2 U3 ( .A(n18), .Y(n2) );
  INVX2 U4 ( .A(n17), .Y(n3) );
  INVX2 U5 ( .A(n16), .Y(n4) );
  INVX2 U6 ( .A(n15), .Y(n5) );
  INVX2 U7 ( .A(n14), .Y(n6) );
  INVX2 U8 ( .A(n13), .Y(n7) );
  INVX2 U9 ( .A(n10), .Y(n8) );
  INVX2 U10 ( .A(en), .Y(n9) );
endmodule


module flop_3 ( clk, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk;


  DFFPOSX1 q_reg_7_ ( .D(d[7]), .CLK(clk), .Q(q[7]) );
  DFFPOSX1 q_reg_6_ ( .D(d[6]), .CLK(clk), .Q(q[6]) );
  DFFPOSX1 q_reg_5_ ( .D(d[5]), .CLK(clk), .Q(q[5]) );
  DFFPOSX1 q_reg_4_ ( .D(d[4]), .CLK(clk), .Q(q[4]) );
  DFFPOSX1 q_reg_3_ ( .D(d[3]), .CLK(clk), .Q(q[3]) );
  DFFPOSX1 q_reg_2_ ( .D(d[2]), .CLK(clk), .Q(q[2]) );
  DFFPOSX1 q_reg_1_ ( .D(d[1]), .CLK(clk), .Q(q[1]) );
  DFFPOSX1 q_reg_0_ ( .D(d[0]), .CLK(clk), .Q(q[0]) );
endmodule


module flop_2 ( clk, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk;


  DFFPOSX1 q_reg_7_ ( .D(d[7]), .CLK(clk), .Q(q[7]) );
  DFFPOSX1 q_reg_6_ ( .D(d[6]), .CLK(clk), .Q(q[6]) );
  DFFPOSX1 q_reg_5_ ( .D(d[5]), .CLK(clk), .Q(q[5]) );
  DFFPOSX1 q_reg_4_ ( .D(d[4]), .CLK(clk), .Q(q[4]) );
  DFFPOSX1 q_reg_3_ ( .D(d[3]), .CLK(clk), .Q(q[3]) );
  DFFPOSX1 q_reg_2_ ( .D(d[2]), .CLK(clk), .Q(q[2]) );
  DFFPOSX1 q_reg_1_ ( .D(d[1]), .CLK(clk), .Q(q[1]) );
  DFFPOSX1 q_reg_0_ ( .D(d[0]), .CLK(clk), .Q(q[0]) );
endmodule


module flop_1 ( clk, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk;


  DFFPOSX1 q_reg_7_ ( .D(d[7]), .CLK(clk), .Q(q[7]) );
  DFFPOSX1 q_reg_6_ ( .D(d[6]), .CLK(clk), .Q(q[6]) );
  DFFPOSX1 q_reg_5_ ( .D(d[5]), .CLK(clk), .Q(q[5]) );
  DFFPOSX1 q_reg_4_ ( .D(d[4]), .CLK(clk), .Q(q[4]) );
  DFFPOSX1 q_reg_3_ ( .D(d[3]), .CLK(clk), .Q(q[3]) );
  DFFPOSX1 q_reg_2_ ( .D(d[2]), .CLK(clk), .Q(q[2]) );
  DFFPOSX1 q_reg_1_ ( .D(d[1]), .CLK(clk), .Q(q[1]) );
  DFFPOSX1 q_reg_0_ ( .D(d[0]), .CLK(clk), .Q(q[0]) );
endmodule


module flop_0 ( clk, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk;


  DFFPOSX1 q_reg_7_ ( .D(d[7]), .CLK(clk), .Q(q[7]) );
  DFFPOSX1 q_reg_6_ ( .D(d[6]), .CLK(clk), .Q(q[6]) );
  DFFPOSX1 q_reg_5_ ( .D(d[5]), .CLK(clk), .Q(q[5]) );
  DFFPOSX1 q_reg_4_ ( .D(d[4]), .CLK(clk), .Q(q[4]) );
  DFFPOSX1 q_reg_3_ ( .D(d[3]), .CLK(clk), .Q(q[3]) );
  DFFPOSX1 q_reg_2_ ( .D(d[2]), .CLK(clk), .Q(q[2]) );
  DFFPOSX1 q_reg_1_ ( .D(d[1]), .CLK(clk), .Q(q[1]) );
  DFFPOSX1 q_reg_0_ ( .D(d[0]), .CLK(clk), .Q(q[0]) );
endmodule


module mux2_2 ( d0, d1, s, y );
  input [7:0] d0;
  input [7:0] d1;
  output [7:0] y;
  input s;
  wire   n10, n11, n12, n13, n14, n15, n16, n17, n1;

  INVX2 U1 ( .A(n10), .Y(y[7]) );
  INVX2 U2 ( .A(n11), .Y(y[6]) );
  INVX2 U3 ( .A(n12), .Y(y[5]) );
  INVX2 U4 ( .A(n13), .Y(y[4]) );
  INVX2 U5 ( .A(n14), .Y(y[3]) );
  INVX2 U6 ( .A(n15), .Y(y[2]) );
  INVX2 U7 ( .A(n16), .Y(y[1]) );
  INVX2 U8 ( .A(n17), .Y(y[0]) );
  AOI22X1 U10 ( .A(d0[7]), .B(n1), .C(s), .D(d1[7]), .Y(n10) );
  AOI22X1 U11 ( .A(d0[6]), .B(n1), .C(d1[6]), .D(s), .Y(n11) );
  AOI22X1 U12 ( .A(d0[5]), .B(n1), .C(d1[5]), .D(s), .Y(n12) );
  AOI22X1 U13 ( .A(d0[4]), .B(n1), .C(d1[4]), .D(s), .Y(n13) );
  AOI22X1 U14 ( .A(d0[3]), .B(n1), .C(d1[3]), .D(s), .Y(n14) );
  AOI22X1 U15 ( .A(d0[2]), .B(n1), .C(d1[2]), .D(s), .Y(n15) );
  AOI22X1 U16 ( .A(d0[1]), .B(n1), .C(d1[1]), .D(s), .Y(n16) );
  AOI22X1 U17 ( .A(d0[0]), .B(n1), .C(d1[0]), .D(s), .Y(n17) );
  INVX2 U9 ( .A(s), .Y(n1) );
endmodule


module mux2_1 ( d0, d1, s, y );
  input [7:0] d0;
  input [7:0] d1;
  output [7:0] y;
  input s;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  INVX2 U1 ( .A(n9), .Y(y[7]) );
  INVX2 U2 ( .A(n8), .Y(y[6]) );
  INVX2 U3 ( .A(n7), .Y(y[5]) );
  INVX2 U4 ( .A(n6), .Y(y[4]) );
  INVX2 U5 ( .A(n5), .Y(y[3]) );
  INVX2 U6 ( .A(n4), .Y(y[2]) );
  INVX2 U7 ( .A(n3), .Y(y[1]) );
  INVX2 U8 ( .A(n2), .Y(y[0]) );
  AOI22X1 U10 ( .A(d0[7]), .B(n1), .C(s), .D(d1[7]), .Y(n9) );
  AOI22X1 U11 ( .A(d0[6]), .B(n1), .C(d1[6]), .D(s), .Y(n8) );
  AOI22X1 U12 ( .A(d0[5]), .B(n1), .C(d1[5]), .D(s), .Y(n7) );
  AOI22X1 U13 ( .A(d0[4]), .B(n1), .C(d1[4]), .D(s), .Y(n6) );
  AOI22X1 U14 ( .A(d0[3]), .B(n1), .C(d1[3]), .D(s), .Y(n5) );
  AOI22X1 U15 ( .A(d0[2]), .B(n1), .C(d1[2]), .D(s), .Y(n4) );
  AOI22X1 U16 ( .A(d0[1]), .B(n1), .C(d1[1]), .D(s), .Y(n3) );
  AOI22X1 U17 ( .A(d0[0]), .B(n1), .C(d1[0]), .D(s), .Y(n2) );
  INVX2 U9 ( .A(s), .Y(n1) );
endmodule


module mux2_0 ( d0, d1, s, y );
  input [7:0] d0;
  input [7:0] d1;
  output [7:0] y;
  input s;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  INVX2 U1 ( .A(n9), .Y(y[7]) );
  INVX2 U2 ( .A(n8), .Y(y[6]) );
  INVX2 U3 ( .A(n7), .Y(y[5]) );
  INVX2 U4 ( .A(n6), .Y(y[4]) );
  INVX2 U5 ( .A(n5), .Y(y[3]) );
  INVX2 U6 ( .A(n4), .Y(y[2]) );
  INVX2 U7 ( .A(n3), .Y(y[1]) );
  INVX2 U8 ( .A(n2), .Y(y[0]) );
  AOI22X1 U10 ( .A(d0[7]), .B(n1), .C(s), .D(d1[7]), .Y(n9) );
  AOI22X1 U11 ( .A(d0[6]), .B(n1), .C(d1[6]), .D(s), .Y(n8) );
  AOI22X1 U12 ( .A(d0[5]), .B(n1), .C(d1[5]), .D(s), .Y(n7) );
  AOI22X1 U13 ( .A(d0[4]), .B(n1), .C(d1[4]), .D(s), .Y(n6) );
  AOI22X1 U14 ( .A(d0[3]), .B(n1), .C(d1[3]), .D(s), .Y(n5) );
  AOI22X1 U15 ( .A(d0[2]), .B(n1), .C(d1[2]), .D(s), .Y(n4) );
  AOI22X1 U16 ( .A(d0[1]), .B(n1), .C(d1[1]), .D(s), .Y(n3) );
  AOI22X1 U17 ( .A(d0[0]), .B(n1), .C(d1[0]), .D(s), .Y(n2) );
  INVX2 U9 ( .A(s), .Y(n1) );
endmodule


module regfile ( clk, regwrite, ra1, ra2, wa, wd, rd1, rd2 );
  input [2:0] ra1;
  input [2:0] ra2;
  input [2:0] wa;
  input [7:0] wd;
  output [7:0] rd1;
  output [7:0] rd2;
  input clk, regwrite;
  wire   N29, N30, N31, N32, N33, N34, N35, N36, N39, N40, N41, N42, N43, N44,
         N45, N46, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285;
  wire   [63:0] RAM;

  DFFPOSX1 RAM_reg_7__7_ ( .D(n153), .CLK(clk), .Q(RAM[63]) );
  DFFPOSX1 RAM_reg_7__6_ ( .D(n152), .CLK(clk), .Q(RAM[62]) );
  DFFPOSX1 RAM_reg_7__5_ ( .D(n151), .CLK(clk), .Q(RAM[61]) );
  DFFPOSX1 RAM_reg_7__4_ ( .D(n150), .CLK(clk), .Q(RAM[60]) );
  DFFPOSX1 RAM_reg_7__3_ ( .D(n149), .CLK(clk), .Q(RAM[59]) );
  DFFPOSX1 RAM_reg_7__2_ ( .D(n148), .CLK(clk), .Q(RAM[58]) );
  DFFPOSX1 RAM_reg_7__1_ ( .D(n147), .CLK(clk), .Q(RAM[57]) );
  DFFPOSX1 RAM_reg_7__0_ ( .D(n146), .CLK(clk), .Q(RAM[56]) );
  DFFPOSX1 RAM_reg_6__7_ ( .D(n145), .CLK(clk), .Q(RAM[55]) );
  DFFPOSX1 RAM_reg_6__6_ ( .D(n144), .CLK(clk), .Q(RAM[54]) );
  DFFPOSX1 RAM_reg_6__5_ ( .D(n143), .CLK(clk), .Q(RAM[53]) );
  DFFPOSX1 RAM_reg_6__4_ ( .D(n142), .CLK(clk), .Q(RAM[52]) );
  DFFPOSX1 RAM_reg_6__3_ ( .D(n141), .CLK(clk), .Q(RAM[51]) );
  DFFPOSX1 RAM_reg_6__2_ ( .D(n140), .CLK(clk), .Q(RAM[50]) );
  DFFPOSX1 RAM_reg_6__1_ ( .D(n139), .CLK(clk), .Q(RAM[49]) );
  DFFPOSX1 RAM_reg_6__0_ ( .D(n138), .CLK(clk), .Q(RAM[48]) );
  DFFPOSX1 RAM_reg_5__7_ ( .D(n137), .CLK(clk), .Q(RAM[47]) );
  DFFPOSX1 RAM_reg_5__6_ ( .D(n136), .CLK(clk), .Q(RAM[46]) );
  DFFPOSX1 RAM_reg_5__5_ ( .D(n135), .CLK(clk), .Q(RAM[45]) );
  DFFPOSX1 RAM_reg_5__4_ ( .D(n134), .CLK(clk), .Q(RAM[44]) );
  DFFPOSX1 RAM_reg_5__3_ ( .D(n133), .CLK(clk), .Q(RAM[43]) );
  DFFPOSX1 RAM_reg_5__2_ ( .D(n132), .CLK(clk), .Q(RAM[42]) );
  DFFPOSX1 RAM_reg_5__1_ ( .D(n131), .CLK(clk), .Q(RAM[41]) );
  DFFPOSX1 RAM_reg_5__0_ ( .D(n130), .CLK(clk), .Q(RAM[40]) );
  DFFPOSX1 RAM_reg_4__7_ ( .D(n129), .CLK(clk), .Q(RAM[39]) );
  DFFPOSX1 RAM_reg_4__6_ ( .D(n128), .CLK(clk), .Q(RAM[38]) );
  DFFPOSX1 RAM_reg_4__5_ ( .D(n127), .CLK(clk), .Q(RAM[37]) );
  DFFPOSX1 RAM_reg_4__4_ ( .D(n126), .CLK(clk), .Q(RAM[36]) );
  DFFPOSX1 RAM_reg_4__3_ ( .D(n125), .CLK(clk), .Q(RAM[35]) );
  DFFPOSX1 RAM_reg_4__2_ ( .D(n124), .CLK(clk), .Q(RAM[34]) );
  DFFPOSX1 RAM_reg_4__1_ ( .D(n123), .CLK(clk), .Q(RAM[33]) );
  DFFPOSX1 RAM_reg_4__0_ ( .D(n122), .CLK(clk), .Q(RAM[32]) );
  DFFPOSX1 RAM_reg_3__7_ ( .D(n121), .CLK(clk), .Q(RAM[31]) );
  DFFPOSX1 RAM_reg_3__6_ ( .D(n120), .CLK(clk), .Q(RAM[30]) );
  DFFPOSX1 RAM_reg_3__5_ ( .D(n119), .CLK(clk), .Q(RAM[29]) );
  DFFPOSX1 RAM_reg_3__4_ ( .D(n118), .CLK(clk), .Q(RAM[28]) );
  DFFPOSX1 RAM_reg_3__3_ ( .D(n117), .CLK(clk), .Q(RAM[27]) );
  DFFPOSX1 RAM_reg_3__2_ ( .D(n116), .CLK(clk), .Q(RAM[26]) );
  DFFPOSX1 RAM_reg_3__1_ ( .D(n115), .CLK(clk), .Q(RAM[25]) );
  DFFPOSX1 RAM_reg_3__0_ ( .D(n114), .CLK(clk), .Q(RAM[24]) );
  DFFPOSX1 RAM_reg_2__7_ ( .D(n113), .CLK(clk), .Q(RAM[23]) );
  DFFPOSX1 RAM_reg_2__6_ ( .D(n112), .CLK(clk), .Q(RAM[22]) );
  DFFPOSX1 RAM_reg_2__5_ ( .D(n111), .CLK(clk), .Q(RAM[21]) );
  DFFPOSX1 RAM_reg_2__4_ ( .D(n110), .CLK(clk), .Q(RAM[20]) );
  DFFPOSX1 RAM_reg_2__3_ ( .D(n109), .CLK(clk), .Q(RAM[19]) );
  DFFPOSX1 RAM_reg_2__2_ ( .D(n108), .CLK(clk), .Q(RAM[18]) );
  DFFPOSX1 RAM_reg_2__1_ ( .D(n107), .CLK(clk), .Q(RAM[17]) );
  DFFPOSX1 RAM_reg_2__0_ ( .D(n106), .CLK(clk), .Q(RAM[16]) );
  DFFPOSX1 RAM_reg_1__7_ ( .D(n105), .CLK(clk), .Q(RAM[15]) );
  DFFPOSX1 RAM_reg_1__6_ ( .D(n104), .CLK(clk), .Q(RAM[14]) );
  DFFPOSX1 RAM_reg_1__5_ ( .D(n103), .CLK(clk), .Q(RAM[13]) );
  DFFPOSX1 RAM_reg_1__4_ ( .D(n102), .CLK(clk), .Q(RAM[12]) );
  DFFPOSX1 RAM_reg_1__3_ ( .D(n101), .CLK(clk), .Q(RAM[11]) );
  DFFPOSX1 RAM_reg_1__2_ ( .D(n100), .CLK(clk), .Q(RAM[10]) );
  DFFPOSX1 RAM_reg_1__1_ ( .D(n99), .CLK(clk), .Q(RAM[9]) );
  DFFPOSX1 RAM_reg_1__0_ ( .D(n98), .CLK(clk), .Q(RAM[8]) );
  DFFPOSX1 RAM_reg_0__7_ ( .D(n97), .CLK(clk), .Q(RAM[7]) );
  DFFPOSX1 RAM_reg_0__6_ ( .D(n96), .CLK(clk), .Q(RAM[6]) );
  DFFPOSX1 RAM_reg_0__5_ ( .D(n95), .CLK(clk), .Q(RAM[5]) );
  DFFPOSX1 RAM_reg_0__4_ ( .D(n94), .CLK(clk), .Q(RAM[4]) );
  DFFPOSX1 RAM_reg_0__3_ ( .D(n93), .CLK(clk), .Q(RAM[3]) );
  DFFPOSX1 RAM_reg_0__2_ ( .D(n92), .CLK(clk), .Q(RAM[2]) );
  DFFPOSX1 RAM_reg_0__1_ ( .D(n91), .CLK(clk), .Q(RAM[1]) );
  DFFPOSX1 RAM_reg_0__0_ ( .D(n90), .CLK(clk), .Q(RAM[0]) );
  AND2X2 U2 ( .A(N39), .B(n284), .Y(rd2[7]) );
  AND2X2 U3 ( .A(N40), .B(n284), .Y(rd2[6]) );
  AND2X2 U4 ( .A(N41), .B(n284), .Y(rd2[5]) );
  AND2X2 U5 ( .A(N42), .B(n284), .Y(rd2[4]) );
  AND2X2 U6 ( .A(N43), .B(n284), .Y(rd2[3]) );
  AND2X2 U7 ( .A(N44), .B(n284), .Y(rd2[2]) );
  AND2X2 U8 ( .A(N45), .B(n284), .Y(rd2[1]) );
  AND2X2 U9 ( .A(N46), .B(n284), .Y(rd2[0]) );
  AND2X2 U10 ( .A(N29), .B(n283), .Y(rd1[7]) );
  AND2X2 U11 ( .A(N30), .B(n283), .Y(rd1[6]) );
  AND2X2 U12 ( .A(N31), .B(n283), .Y(rd1[5]) );
  AND2X2 U13 ( .A(N32), .B(n283), .Y(rd1[4]) );
  AND2X2 U14 ( .A(N33), .B(n283), .Y(rd1[3]) );
  AND2X2 U15 ( .A(N34), .B(n283), .Y(rd1[2]) );
  AND2X2 U16 ( .A(N35), .B(n283), .Y(rd1[1]) );
  AND2X2 U17 ( .A(N36), .B(n283), .Y(rd1[0]) );
  AND2X2 U18 ( .A(wa[2]), .B(regwrite), .Y(n62) );
  NOR3X1 U32 ( .A(ra2[1]), .B(ra2[2]), .C(ra2[0]), .Y(n14) );
  NOR3X1 U33 ( .A(ra1[1]), .B(ra1[2]), .C(ra1[0]), .Y(n15) );
  OAI21X1 U34 ( .A(n272), .B(n280), .C(n17), .Y(n90) );
  NAND2X1 U35 ( .A(RAM[0]), .B(n272), .Y(n17) );
  OAI21X1 U36 ( .A(n272), .B(n279), .C(n18), .Y(n91) );
  NAND2X1 U37 ( .A(RAM[1]), .B(n272), .Y(n18) );
  OAI21X1 U38 ( .A(n272), .B(n278), .C(n19), .Y(n92) );
  NAND2X1 U39 ( .A(RAM[2]), .B(n272), .Y(n19) );
  OAI21X1 U40 ( .A(n272), .B(n277), .C(n20), .Y(n93) );
  NAND2X1 U41 ( .A(RAM[3]), .B(n272), .Y(n20) );
  OAI21X1 U42 ( .A(n272), .B(n276), .C(n21), .Y(n94) );
  NAND2X1 U43 ( .A(RAM[4]), .B(n272), .Y(n21) );
  OAI21X1 U44 ( .A(n272), .B(n275), .C(n22), .Y(n95) );
  NAND2X1 U45 ( .A(RAM[5]), .B(n272), .Y(n22) );
  OAI21X1 U46 ( .A(n272), .B(n274), .C(n23), .Y(n96) );
  NAND2X1 U47 ( .A(RAM[6]), .B(n272), .Y(n23) );
  OAI21X1 U48 ( .A(n272), .B(n273), .C(n24), .Y(n97) );
  NAND2X1 U49 ( .A(RAM[7]), .B(n272), .Y(n24) );
  NAND3X1 U50 ( .A(n282), .B(n281), .C(n25), .Y(n16) );
  OAI21X1 U51 ( .A(n280), .B(n270), .C(n27), .Y(n98) );
  NAND2X1 U52 ( .A(RAM[8]), .B(n270), .Y(n27) );
  OAI21X1 U53 ( .A(n279), .B(n270), .C(n28), .Y(n99) );
  NAND2X1 U54 ( .A(RAM[9]), .B(n270), .Y(n28) );
  OAI21X1 U55 ( .A(n278), .B(n270), .C(n29), .Y(n100) );
  NAND2X1 U56 ( .A(RAM[10]), .B(n270), .Y(n29) );
  OAI21X1 U57 ( .A(n277), .B(n270), .C(n30), .Y(n101) );
  NAND2X1 U58 ( .A(RAM[11]), .B(n270), .Y(n30) );
  OAI21X1 U59 ( .A(n276), .B(n270), .C(n31), .Y(n102) );
  NAND2X1 U60 ( .A(RAM[12]), .B(n270), .Y(n31) );
  OAI21X1 U61 ( .A(n275), .B(n270), .C(n32), .Y(n103) );
  NAND2X1 U62 ( .A(RAM[13]), .B(n270), .Y(n32) );
  OAI21X1 U63 ( .A(n274), .B(n270), .C(n33), .Y(n104) );
  NAND2X1 U64 ( .A(RAM[14]), .B(n270), .Y(n33) );
  OAI21X1 U65 ( .A(n273), .B(n270), .C(n34), .Y(n105) );
  NAND2X1 U66 ( .A(RAM[15]), .B(n270), .Y(n34) );
  NAND3X1 U67 ( .A(n25), .B(n281), .C(wa[0]), .Y(n26) );
  OAI21X1 U68 ( .A(n280), .B(n268), .C(n36), .Y(n106) );
  NAND2X1 U69 ( .A(RAM[16]), .B(n268), .Y(n36) );
  OAI21X1 U70 ( .A(n279), .B(n268), .C(n37), .Y(n107) );
  NAND2X1 U71 ( .A(RAM[17]), .B(n268), .Y(n37) );
  OAI21X1 U72 ( .A(n278), .B(n268), .C(n38), .Y(n108) );
  NAND2X1 U73 ( .A(RAM[18]), .B(n268), .Y(n38) );
  OAI21X1 U74 ( .A(n277), .B(n268), .C(n39), .Y(n109) );
  NAND2X1 U75 ( .A(RAM[19]), .B(n268), .Y(n39) );
  OAI21X1 U76 ( .A(n276), .B(n268), .C(n40), .Y(n110) );
  NAND2X1 U77 ( .A(RAM[20]), .B(n268), .Y(n40) );
  OAI21X1 U78 ( .A(n275), .B(n268), .C(n41), .Y(n111) );
  NAND2X1 U79 ( .A(RAM[21]), .B(n268), .Y(n41) );
  OAI21X1 U80 ( .A(n274), .B(n268), .C(n42), .Y(n112) );
  NAND2X1 U81 ( .A(RAM[22]), .B(n268), .Y(n42) );
  OAI21X1 U82 ( .A(n273), .B(n268), .C(n43), .Y(n113) );
  NAND2X1 U83 ( .A(RAM[23]), .B(n268), .Y(n43) );
  NAND3X1 U84 ( .A(n25), .B(n282), .C(wa[1]), .Y(n35) );
  OAI21X1 U85 ( .A(n280), .B(n266), .C(n45), .Y(n114) );
  NAND2X1 U86 ( .A(RAM[24]), .B(n266), .Y(n45) );
  OAI21X1 U87 ( .A(n279), .B(n266), .C(n46), .Y(n115) );
  NAND2X1 U88 ( .A(RAM[25]), .B(n266), .Y(n46) );
  OAI21X1 U89 ( .A(n278), .B(n266), .C(n47), .Y(n116) );
  NAND2X1 U90 ( .A(RAM[26]), .B(n266), .Y(n47) );
  OAI21X1 U91 ( .A(n277), .B(n266), .C(n48), .Y(n117) );
  NAND2X1 U92 ( .A(RAM[27]), .B(n266), .Y(n48) );
  OAI21X1 U93 ( .A(n276), .B(n266), .C(n49), .Y(n118) );
  NAND2X1 U94 ( .A(RAM[28]), .B(n266), .Y(n49) );
  OAI21X1 U95 ( .A(n275), .B(n266), .C(n50), .Y(n119) );
  NAND2X1 U96 ( .A(RAM[29]), .B(n266), .Y(n50) );
  OAI21X1 U97 ( .A(n274), .B(n266), .C(n51), .Y(n120) );
  NAND2X1 U98 ( .A(RAM[30]), .B(n266), .Y(n51) );
  OAI21X1 U99 ( .A(n273), .B(n266), .C(n52), .Y(n121) );
  NAND2X1 U100 ( .A(RAM[31]), .B(n266), .Y(n52) );
  NAND3X1 U101 ( .A(wa[0]), .B(n25), .C(wa[1]), .Y(n44) );
  NOR2X1 U102 ( .A(n285), .B(wa[2]), .Y(n25) );
  OAI21X1 U103 ( .A(n280), .B(n264), .C(n54), .Y(n122) );
  NAND2X1 U104 ( .A(RAM[32]), .B(n264), .Y(n54) );
  OAI21X1 U105 ( .A(n279), .B(n264), .C(n55), .Y(n123) );
  NAND2X1 U106 ( .A(RAM[33]), .B(n264), .Y(n55) );
  OAI21X1 U107 ( .A(n278), .B(n264), .C(n56), .Y(n124) );
  NAND2X1 U108 ( .A(RAM[34]), .B(n264), .Y(n56) );
  OAI21X1 U109 ( .A(n277), .B(n264), .C(n57), .Y(n125) );
  NAND2X1 U110 ( .A(RAM[35]), .B(n264), .Y(n57) );
  OAI21X1 U111 ( .A(n276), .B(n264), .C(n58), .Y(n126) );
  NAND2X1 U112 ( .A(RAM[36]), .B(n264), .Y(n58) );
  OAI21X1 U113 ( .A(n275), .B(n264), .C(n59), .Y(n127) );
  NAND2X1 U114 ( .A(RAM[37]), .B(n264), .Y(n59) );
  OAI21X1 U115 ( .A(n274), .B(n264), .C(n60), .Y(n128) );
  NAND2X1 U116 ( .A(RAM[38]), .B(n264), .Y(n60) );
  OAI21X1 U117 ( .A(n273), .B(n264), .C(n61), .Y(n129) );
  NAND2X1 U118 ( .A(RAM[39]), .B(n264), .Y(n61) );
  NAND3X1 U119 ( .A(n282), .B(n281), .C(n62), .Y(n53) );
  OAI21X1 U120 ( .A(n280), .B(n262), .C(n64), .Y(n130) );
  NAND2X1 U121 ( .A(RAM[40]), .B(n262), .Y(n64) );
  OAI21X1 U122 ( .A(n279), .B(n262), .C(n65), .Y(n131) );
  NAND2X1 U123 ( .A(RAM[41]), .B(n262), .Y(n65) );
  OAI21X1 U124 ( .A(n278), .B(n262), .C(n66), .Y(n132) );
  NAND2X1 U125 ( .A(RAM[42]), .B(n262), .Y(n66) );
  OAI21X1 U126 ( .A(n277), .B(n262), .C(n67), .Y(n133) );
  NAND2X1 U127 ( .A(RAM[43]), .B(n262), .Y(n67) );
  OAI21X1 U128 ( .A(n276), .B(n262), .C(n68), .Y(n134) );
  NAND2X1 U129 ( .A(RAM[44]), .B(n262), .Y(n68) );
  OAI21X1 U130 ( .A(n275), .B(n262), .C(n69), .Y(n135) );
  NAND2X1 U131 ( .A(RAM[45]), .B(n262), .Y(n69) );
  OAI21X1 U132 ( .A(n274), .B(n262), .C(n70), .Y(n136) );
  NAND2X1 U133 ( .A(RAM[46]), .B(n262), .Y(n70) );
  OAI21X1 U134 ( .A(n273), .B(n262), .C(n71), .Y(n137) );
  NAND2X1 U135 ( .A(RAM[47]), .B(n262), .Y(n71) );
  NAND3X1 U136 ( .A(wa[0]), .B(n281), .C(n62), .Y(n63) );
  OAI21X1 U137 ( .A(n280), .B(n260), .C(n73), .Y(n138) );
  NAND2X1 U138 ( .A(RAM[48]), .B(n260), .Y(n73) );
  OAI21X1 U139 ( .A(n279), .B(n260), .C(n74), .Y(n139) );
  NAND2X1 U140 ( .A(RAM[49]), .B(n260), .Y(n74) );
  OAI21X1 U141 ( .A(n278), .B(n260), .C(n75), .Y(n140) );
  NAND2X1 U142 ( .A(RAM[50]), .B(n260), .Y(n75) );
  OAI21X1 U143 ( .A(n277), .B(n260), .C(n76), .Y(n141) );
  NAND2X1 U144 ( .A(RAM[51]), .B(n260), .Y(n76) );
  OAI21X1 U145 ( .A(n276), .B(n260), .C(n77), .Y(n142) );
  NAND2X1 U146 ( .A(RAM[52]), .B(n260), .Y(n77) );
  OAI21X1 U147 ( .A(n275), .B(n260), .C(n78), .Y(n143) );
  NAND2X1 U148 ( .A(RAM[53]), .B(n260), .Y(n78) );
  OAI21X1 U149 ( .A(n274), .B(n260), .C(n79), .Y(n144) );
  NAND2X1 U150 ( .A(RAM[54]), .B(n260), .Y(n79) );
  OAI21X1 U151 ( .A(n273), .B(n260), .C(n80), .Y(n145) );
  NAND2X1 U152 ( .A(RAM[55]), .B(n260), .Y(n80) );
  NAND3X1 U153 ( .A(wa[1]), .B(n282), .C(n62), .Y(n72) );
  OAI21X1 U154 ( .A(n280), .B(n258), .C(n82), .Y(n146) );
  NAND2X1 U155 ( .A(RAM[56]), .B(n258), .Y(n82) );
  OAI21X1 U156 ( .A(n279), .B(n258), .C(n83), .Y(n147) );
  NAND2X1 U157 ( .A(RAM[57]), .B(n258), .Y(n83) );
  OAI21X1 U158 ( .A(n278), .B(n258), .C(n84), .Y(n148) );
  NAND2X1 U159 ( .A(RAM[58]), .B(n258), .Y(n84) );
  OAI21X1 U160 ( .A(n277), .B(n258), .C(n85), .Y(n149) );
  NAND2X1 U161 ( .A(RAM[59]), .B(n258), .Y(n85) );
  OAI21X1 U162 ( .A(n276), .B(n258), .C(n86), .Y(n150) );
  NAND2X1 U163 ( .A(RAM[60]), .B(n258), .Y(n86) );
  OAI21X1 U164 ( .A(n275), .B(n258), .C(n87), .Y(n151) );
  NAND2X1 U165 ( .A(RAM[61]), .B(n258), .Y(n87) );
  OAI21X1 U166 ( .A(n274), .B(n258), .C(n88), .Y(n152) );
  NAND2X1 U167 ( .A(RAM[62]), .B(n258), .Y(n88) );
  OAI21X1 U168 ( .A(n273), .B(n258), .C(n89), .Y(n153) );
  NAND2X1 U169 ( .A(RAM[63]), .B(n258), .Y(n89) );
  NAND3X1 U170 ( .A(wa[1]), .B(wa[0]), .C(n62), .Y(n81) );
  INVX2 U19 ( .A(n263), .Y(n264) );
  INVX2 U20 ( .A(n53), .Y(n263) );
  INVX2 U21 ( .A(n271), .Y(n272) );
  INVX2 U22 ( .A(n16), .Y(n271) );
  INVX2 U23 ( .A(n265), .Y(n266) );
  INVX2 U24 ( .A(n44), .Y(n265) );
  INVX2 U25 ( .A(n261), .Y(n262) );
  INVX2 U26 ( .A(n63), .Y(n261) );
  INVX2 U27 ( .A(n269), .Y(n270) );
  INVX2 U28 ( .A(n26), .Y(n269) );
  INVX2 U29 ( .A(n267), .Y(n268) );
  INVX2 U30 ( .A(n35), .Y(n267) );
  INVX2 U31 ( .A(n259), .Y(n260) );
  INVX2 U171 ( .A(n72), .Y(n259) );
  INVX2 U172 ( .A(n257), .Y(n258) );
  INVX2 U173 ( .A(n81), .Y(n257) );
  INVX2 U174 ( .A(n255), .Y(n256) );
  INVX2 U175 ( .A(n197), .Y(n198) );
  INVX2 U176 ( .A(ra2[0]), .Y(n255) );
  INVX2 U177 ( .A(ra1[0]), .Y(n197) );
  MUX2X1 U178 ( .B(n2), .A(n3), .S(ra1[1]), .Y(n1) );
  MUX2X1 U179 ( .B(n5), .A(n6), .S(ra1[1]), .Y(n4) );
  MUX2X1 U180 ( .B(n8), .A(n9), .S(ra1[1]), .Y(n7) );
  MUX2X1 U181 ( .B(n11), .A(n12), .S(ra1[1]), .Y(n10) );
  MUX2X1 U182 ( .B(n154), .A(n155), .S(ra1[1]), .Y(n13) );
  MUX2X1 U183 ( .B(n157), .A(n158), .S(ra1[1]), .Y(n156) );
  MUX2X1 U184 ( .B(n160), .A(n161), .S(ra1[1]), .Y(n159) );
  MUX2X1 U185 ( .B(n163), .A(n164), .S(ra1[1]), .Y(n162) );
  MUX2X1 U186 ( .B(n166), .A(n167), .S(ra1[1]), .Y(n165) );
  MUX2X1 U187 ( .B(n169), .A(n170), .S(ra1[1]), .Y(n168) );
  MUX2X1 U188 ( .B(n172), .A(n173), .S(ra1[1]), .Y(n171) );
  MUX2X1 U189 ( .B(n175), .A(n176), .S(ra1[1]), .Y(n174) );
  MUX2X1 U190 ( .B(n178), .A(n179), .S(ra1[1]), .Y(n177) );
  MUX2X1 U191 ( .B(n181), .A(n182), .S(ra1[1]), .Y(n180) );
  MUX2X1 U192 ( .B(n184), .A(n185), .S(ra1[1]), .Y(n183) );
  MUX2X1 U193 ( .B(n187), .A(n188), .S(ra1[1]), .Y(n186) );
  MUX2X1 U194 ( .B(RAM[48]), .A(RAM[56]), .S(ra1[0]), .Y(n3) );
  MUX2X1 U195 ( .B(RAM[32]), .A(RAM[40]), .S(n198), .Y(n2) );
  MUX2X1 U196 ( .B(RAM[16]), .A(RAM[24]), .S(ra1[0]), .Y(n6) );
  MUX2X1 U197 ( .B(RAM[0]), .A(RAM[8]), .S(ra1[0]), .Y(n5) );
  MUX2X1 U198 ( .B(n4), .A(n1), .S(ra1[2]), .Y(n189) );
  INVX2 U199 ( .A(n189), .Y(N36) );
  MUX2X1 U200 ( .B(RAM[49]), .A(RAM[57]), .S(ra1[0]), .Y(n9) );
  MUX2X1 U201 ( .B(RAM[33]), .A(RAM[41]), .S(n198), .Y(n8) );
  MUX2X1 U202 ( .B(RAM[17]), .A(RAM[25]), .S(n198), .Y(n12) );
  MUX2X1 U203 ( .B(RAM[1]), .A(RAM[9]), .S(n198), .Y(n11) );
  MUX2X1 U204 ( .B(n10), .A(n7), .S(ra1[2]), .Y(n190) );
  INVX2 U205 ( .A(n190), .Y(N35) );
  MUX2X1 U206 ( .B(RAM[50]), .A(RAM[58]), .S(n198), .Y(n155) );
  MUX2X1 U207 ( .B(RAM[34]), .A(RAM[42]), .S(n198), .Y(n154) );
  MUX2X1 U208 ( .B(RAM[18]), .A(RAM[26]), .S(n198), .Y(n158) );
  MUX2X1 U209 ( .B(RAM[2]), .A(RAM[10]), .S(n198), .Y(n157) );
  MUX2X1 U210 ( .B(n156), .A(n13), .S(ra1[2]), .Y(n191) );
  INVX2 U211 ( .A(n191), .Y(N34) );
  MUX2X1 U212 ( .B(RAM[51]), .A(RAM[59]), .S(n198), .Y(n161) );
  MUX2X1 U213 ( .B(RAM[35]), .A(RAM[43]), .S(n198), .Y(n160) );
  MUX2X1 U214 ( .B(RAM[19]), .A(RAM[27]), .S(n198), .Y(n164) );
  MUX2X1 U215 ( .B(RAM[3]), .A(RAM[11]), .S(n198), .Y(n163) );
  MUX2X1 U216 ( .B(n162), .A(n159), .S(ra1[2]), .Y(n192) );
  INVX2 U217 ( .A(n192), .Y(N33) );
  MUX2X1 U218 ( .B(RAM[52]), .A(RAM[60]), .S(n198), .Y(n167) );
  MUX2X1 U219 ( .B(RAM[36]), .A(RAM[44]), .S(n198), .Y(n166) );
  MUX2X1 U220 ( .B(RAM[20]), .A(RAM[28]), .S(n198), .Y(n170) );
  MUX2X1 U221 ( .B(RAM[4]), .A(RAM[12]), .S(ra1[0]), .Y(n169) );
  MUX2X1 U222 ( .B(n168), .A(n165), .S(ra1[2]), .Y(n193) );
  INVX2 U223 ( .A(n193), .Y(N32) );
  MUX2X1 U224 ( .B(RAM[53]), .A(RAM[61]), .S(ra1[0]), .Y(n173) );
  MUX2X1 U225 ( .B(RAM[37]), .A(RAM[45]), .S(ra1[0]), .Y(n172) );
  MUX2X1 U226 ( .B(RAM[21]), .A(RAM[29]), .S(ra1[0]), .Y(n176) );
  MUX2X1 U227 ( .B(RAM[5]), .A(RAM[13]), .S(ra1[0]), .Y(n175) );
  MUX2X1 U228 ( .B(n174), .A(n171), .S(ra1[2]), .Y(n194) );
  INVX2 U229 ( .A(n194), .Y(N31) );
  MUX2X1 U230 ( .B(RAM[54]), .A(RAM[62]), .S(ra1[0]), .Y(n179) );
  MUX2X1 U231 ( .B(RAM[38]), .A(RAM[46]), .S(ra1[0]), .Y(n178) );
  MUX2X1 U232 ( .B(RAM[22]), .A(RAM[30]), .S(ra1[0]), .Y(n182) );
  MUX2X1 U233 ( .B(RAM[6]), .A(RAM[14]), .S(ra1[0]), .Y(n181) );
  MUX2X1 U234 ( .B(n180), .A(n177), .S(ra1[2]), .Y(n195) );
  INVX2 U235 ( .A(n195), .Y(N30) );
  MUX2X1 U236 ( .B(RAM[55]), .A(RAM[63]), .S(ra1[0]), .Y(n185) );
  MUX2X1 U237 ( .B(RAM[39]), .A(RAM[47]), .S(ra1[0]), .Y(n184) );
  MUX2X1 U238 ( .B(RAM[23]), .A(RAM[31]), .S(ra1[0]), .Y(n188) );
  MUX2X1 U239 ( .B(RAM[7]), .A(RAM[15]), .S(ra1[0]), .Y(n187) );
  MUX2X1 U240 ( .B(n186), .A(n183), .S(ra1[2]), .Y(n196) );
  INVX2 U241 ( .A(n196), .Y(N29) );
  MUX2X1 U242 ( .B(n200), .A(n201), .S(ra2[1]), .Y(n199) );
  MUX2X1 U243 ( .B(n203), .A(n204), .S(ra2[1]), .Y(n202) );
  MUX2X1 U244 ( .B(n206), .A(n207), .S(ra2[1]), .Y(n205) );
  MUX2X1 U245 ( .B(n209), .A(n210), .S(ra2[1]), .Y(n208) );
  MUX2X1 U246 ( .B(n212), .A(n213), .S(ra2[1]), .Y(n211) );
  MUX2X1 U247 ( .B(n215), .A(n216), .S(ra2[1]), .Y(n214) );
  MUX2X1 U248 ( .B(n218), .A(n219), .S(ra2[1]), .Y(n217) );
  MUX2X1 U249 ( .B(n221), .A(n222), .S(ra2[1]), .Y(n220) );
  MUX2X1 U250 ( .B(n224), .A(n225), .S(ra2[1]), .Y(n223) );
  MUX2X1 U251 ( .B(n227), .A(n228), .S(ra2[1]), .Y(n226) );
  MUX2X1 U252 ( .B(n230), .A(n231), .S(ra2[1]), .Y(n229) );
  MUX2X1 U253 ( .B(n233), .A(n234), .S(ra2[1]), .Y(n232) );
  MUX2X1 U254 ( .B(n236), .A(n237), .S(ra2[1]), .Y(n235) );
  MUX2X1 U255 ( .B(n239), .A(n240), .S(ra2[1]), .Y(n238) );
  MUX2X1 U256 ( .B(n242), .A(n243), .S(ra2[1]), .Y(n241) );
  MUX2X1 U257 ( .B(n245), .A(n246), .S(ra2[1]), .Y(n244) );
  MUX2X1 U258 ( .B(RAM[48]), .A(RAM[56]), .S(ra2[0]), .Y(n201) );
  MUX2X1 U259 ( .B(RAM[32]), .A(RAM[40]), .S(n256), .Y(n200) );
  MUX2X1 U260 ( .B(RAM[16]), .A(RAM[24]), .S(ra2[0]), .Y(n204) );
  MUX2X1 U261 ( .B(RAM[0]), .A(RAM[8]), .S(ra2[0]), .Y(n203) );
  MUX2X1 U262 ( .B(n202), .A(n199), .S(ra2[2]), .Y(n247) );
  INVX2 U263 ( .A(n247), .Y(N46) );
  MUX2X1 U264 ( .B(RAM[49]), .A(RAM[57]), .S(ra2[0]), .Y(n207) );
  MUX2X1 U265 ( .B(RAM[33]), .A(RAM[41]), .S(n256), .Y(n206) );
  MUX2X1 U266 ( .B(RAM[17]), .A(RAM[25]), .S(n256), .Y(n210) );
  MUX2X1 U267 ( .B(RAM[1]), .A(RAM[9]), .S(n256), .Y(n209) );
  MUX2X1 U268 ( .B(n208), .A(n205), .S(ra2[2]), .Y(n248) );
  INVX2 U269 ( .A(n248), .Y(N45) );
  MUX2X1 U270 ( .B(RAM[50]), .A(RAM[58]), .S(n256), .Y(n213) );
  MUX2X1 U271 ( .B(RAM[34]), .A(RAM[42]), .S(n256), .Y(n212) );
  MUX2X1 U272 ( .B(RAM[18]), .A(RAM[26]), .S(n256), .Y(n216) );
  MUX2X1 U273 ( .B(RAM[2]), .A(RAM[10]), .S(n256), .Y(n215) );
  MUX2X1 U274 ( .B(n214), .A(n211), .S(ra2[2]), .Y(n249) );
  INVX2 U275 ( .A(n249), .Y(N44) );
  MUX2X1 U276 ( .B(RAM[51]), .A(RAM[59]), .S(n256), .Y(n219) );
  MUX2X1 U277 ( .B(RAM[35]), .A(RAM[43]), .S(n256), .Y(n218) );
  MUX2X1 U278 ( .B(RAM[19]), .A(RAM[27]), .S(n256), .Y(n222) );
  MUX2X1 U279 ( .B(RAM[3]), .A(RAM[11]), .S(n256), .Y(n221) );
  MUX2X1 U280 ( .B(n220), .A(n217), .S(ra2[2]), .Y(n250) );
  INVX2 U281 ( .A(n250), .Y(N43) );
  MUX2X1 U282 ( .B(RAM[52]), .A(RAM[60]), .S(n256), .Y(n225) );
  MUX2X1 U283 ( .B(RAM[36]), .A(RAM[44]), .S(n256), .Y(n224) );
  MUX2X1 U284 ( .B(RAM[20]), .A(RAM[28]), .S(n256), .Y(n228) );
  MUX2X1 U285 ( .B(RAM[4]), .A(RAM[12]), .S(ra2[0]), .Y(n227) );
  MUX2X1 U286 ( .B(n226), .A(n223), .S(ra2[2]), .Y(n251) );
  INVX2 U287 ( .A(n251), .Y(N42) );
  MUX2X1 U288 ( .B(RAM[53]), .A(RAM[61]), .S(ra2[0]), .Y(n231) );
  MUX2X1 U289 ( .B(RAM[37]), .A(RAM[45]), .S(ra2[0]), .Y(n230) );
  MUX2X1 U290 ( .B(RAM[21]), .A(RAM[29]), .S(ra2[0]), .Y(n234) );
  MUX2X1 U291 ( .B(RAM[5]), .A(RAM[13]), .S(ra2[0]), .Y(n233) );
  MUX2X1 U292 ( .B(n232), .A(n229), .S(ra2[2]), .Y(n252) );
  INVX2 U293 ( .A(n252), .Y(N41) );
  MUX2X1 U294 ( .B(RAM[54]), .A(RAM[62]), .S(ra2[0]), .Y(n237) );
  MUX2X1 U295 ( .B(RAM[38]), .A(RAM[46]), .S(ra2[0]), .Y(n236) );
  MUX2X1 U296 ( .B(RAM[22]), .A(RAM[30]), .S(ra2[0]), .Y(n240) );
  MUX2X1 U297 ( .B(RAM[6]), .A(RAM[14]), .S(ra2[0]), .Y(n239) );
  MUX2X1 U298 ( .B(n238), .A(n235), .S(ra2[2]), .Y(n253) );
  INVX2 U299 ( .A(n253), .Y(N40) );
  MUX2X1 U300 ( .B(RAM[55]), .A(RAM[63]), .S(ra2[0]), .Y(n243) );
  MUX2X1 U301 ( .B(RAM[39]), .A(RAM[47]), .S(ra2[0]), .Y(n242) );
  MUX2X1 U302 ( .B(RAM[23]), .A(RAM[31]), .S(ra2[0]), .Y(n246) );
  MUX2X1 U303 ( .B(RAM[7]), .A(RAM[15]), .S(ra2[0]), .Y(n245) );
  MUX2X1 U304 ( .B(n244), .A(n241), .S(ra2[2]), .Y(n254) );
  INVX2 U305 ( .A(n254), .Y(N39) );
  INVX2 U306 ( .A(wd[7]), .Y(n273) );
  INVX2 U307 ( .A(wd[6]), .Y(n274) );
  INVX2 U308 ( .A(wd[5]), .Y(n275) );
  INVX2 U309 ( .A(wd[4]), .Y(n276) );
  INVX2 U310 ( .A(wd[3]), .Y(n277) );
  INVX2 U311 ( .A(wd[2]), .Y(n278) );
  INVX2 U312 ( .A(wd[1]), .Y(n279) );
  INVX2 U313 ( .A(wd[0]), .Y(n280) );
  INVX2 U314 ( .A(wa[1]), .Y(n281) );
  INVX2 U315 ( .A(wa[0]), .Y(n282) );
  INVX2 U316 ( .A(n15), .Y(n283) );
  INVX2 U317 ( .A(n14), .Y(n284) );
  INVX2 U318 ( .A(regwrite), .Y(n285) );
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
  wire   n13, n14, n15, n16, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n17;
  wire   [7:0] b2;
  wire   [7:0] sum;

  OR2X2 U2 ( .A(a[7]), .B(b[7]), .Y(n16) );
  AND2X2 U3 ( .A(alucont[1]), .B(sum[7]), .Y(n32) );
  OAI21X1 U14 ( .A(n6), .B(n13), .C(n14), .Y(result[7]) );
  AOI22X1 U15 ( .A(sum[7]), .B(n15), .C(n1), .D(n16), .Y(n14) );
  NAND2X1 U16 ( .A(b[7]), .B(n2), .Y(n13) );
  OAI21X1 U17 ( .A(n5), .B(n7), .C(n18), .Y(result[6]) );
  AOI22X1 U18 ( .A(b[6]), .B(n19), .C(sum[6]), .D(n15), .Y(n18) );
  OAI21X1 U19 ( .A(alucont[1]), .B(n7), .C(n5), .Y(n19) );
  OAI21X1 U20 ( .A(n5), .B(n8), .C(n20), .Y(result[5]) );
  AOI22X1 U21 ( .A(b[5]), .B(n21), .C(sum[5]), .D(n15), .Y(n20) );
  OAI21X1 U22 ( .A(alucont[1]), .B(n8), .C(n5), .Y(n21) );
  OAI21X1 U23 ( .A(n5), .B(n9), .C(n22), .Y(result[4]) );
  AOI22X1 U24 ( .A(b[4]), .B(n23), .C(sum[4]), .D(n15), .Y(n22) );
  OAI21X1 U25 ( .A(alucont[1]), .B(n9), .C(n5), .Y(n23) );
  OAI21X1 U26 ( .A(n5), .B(n10), .C(n24), .Y(result[3]) );
  AOI22X1 U27 ( .A(b[3]), .B(n25), .C(sum[3]), .D(n15), .Y(n24) );
  OAI21X1 U28 ( .A(alucont[1]), .B(n10), .C(n5), .Y(n25) );
  OAI21X1 U29 ( .A(n5), .B(n11), .C(n26), .Y(result[2]) );
  AOI22X1 U30 ( .A(b[2]), .B(n27), .C(sum[2]), .D(n15), .Y(n26) );
  OAI21X1 U31 ( .A(alucont[1]), .B(n11), .C(n5), .Y(n27) );
  OAI21X1 U32 ( .A(n5), .B(n12), .C(n28), .Y(result[1]) );
  AOI22X1 U33 ( .A(b[1]), .B(n29), .C(sum[1]), .D(n15), .Y(n28) );
  OAI21X1 U34 ( .A(alucont[1]), .B(n12), .C(n5), .Y(n29) );
  NAND2X1 U35 ( .A(n30), .B(n31), .Y(result[0]) );
  AOI22X1 U36 ( .A(n32), .B(alucont[0]), .C(b[0]), .D(n33), .Y(n31) );
  OAI21X1 U37 ( .A(alucont[1]), .B(n17), .C(n5), .Y(n33) );
  AOI22X1 U38 ( .A(sum[0]), .B(n15), .C(a[0]), .D(n1), .Y(n30) );
  NOR2X1 U40 ( .A(n2), .B(alucont[0]), .Y(n15) );
  XOR2X1 U41 ( .A(b[7]), .B(alucont[2]), .Y(b2[7]) );
  XOR2X1 U42 ( .A(b[6]), .B(alucont[2]), .Y(b2[6]) );
  XOR2X1 U43 ( .A(b[5]), .B(alucont[2]), .Y(b2[5]) );
  XOR2X1 U44 ( .A(b[4]), .B(n4), .Y(b2[4]) );
  XOR2X1 U45 ( .A(b[3]), .B(n4), .Y(b2[3]) );
  XOR2X1 U46 ( .A(b[2]), .B(n4), .Y(b2[2]) );
  XOR2X1 U47 ( .A(b[1]), .B(n4), .Y(b2[1]) );
  XOR2X1 U48 ( .A(b[0]), .B(n4), .Y(b2[0]) );
  alu_DW01_add_0 add_1_root_add_317_2 ( .A(a), .B(b2), .CI(n4), .SUM(sum) );
  AND2X2 U4 ( .A(alucont[0]), .B(n2), .Y(n1) );
  INVX2 U5 ( .A(n3), .Y(n4) );
  INVX2 U6 ( .A(alucont[2]), .Y(n3) );
  INVX2 U7 ( .A(n1), .Y(n5) );
  INVX2 U8 ( .A(alucont[1]), .Y(n2) );
  INVX2 U9 ( .A(a[7]), .Y(n6) );
  INVX2 U10 ( .A(a[6]), .Y(n7) );
  INVX2 U11 ( .A(a[5]), .Y(n8) );
  INVX2 U12 ( .A(a[4]), .Y(n9) );
  INVX2 U13 ( .A(a[3]), .Y(n10) );
  INVX2 U39 ( .A(a[2]), .Y(n11) );
  INVX2 U49 ( .A(a[1]), .Y(n12) );
  INVX2 U50 ( .A(a[0]), .Y(n17) );
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


module datapath ( clk, reset, memdata, alusrca, memtoreg, iord, pcen, regwrite, 
        regdst, pcsource, alusrcb, irwrite, alucont, zero, instr, adr, 
        writedata );
  input [7:0] memdata;
  input [1:0] pcsource;
  input [1:0] alusrcb;
  input [3:0] irwrite;
  input [2:0] alucont;
  output [31:0] instr;
  output [7:0] adr;
  output [7:0] writedata;
  input clk, reset, alusrca, memtoreg, iord, pcen, regwrite, regdst;
  output zero;
  wire   n8, n9, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n1, n2, n3, n4, n5,
         n6, n7, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20;
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
  INVX2 U11 ( .A(n42), .Y(n8) );
  INVX2 U12 ( .A(n41), .Y(n9) );
  OAI21X1 U24 ( .A(n20), .B(n1), .C(n21), .Y(src2[7]) );
  AOI22X1 U25 ( .A(instr[5]), .B(n22), .C(instr[7]), .D(n18), .Y(n21) );
  OAI21X1 U26 ( .A(n20), .B(n2), .C(n23), .Y(src2[6]) );
  AOI22X1 U27 ( .A(instr[4]), .B(n22), .C(instr[6]), .D(n18), .Y(n23) );
  OAI21X1 U28 ( .A(n20), .B(n3), .C(n24), .Y(src2[5]) );
  AOI22X1 U29 ( .A(instr[3]), .B(n22), .C(n18), .D(instr[5]), .Y(n24) );
  OAI21X1 U30 ( .A(n20), .B(n4), .C(n25), .Y(src2[4]) );
  AOI22X1 U31 ( .A(instr[2]), .B(n22), .C(instr[4]), .D(n18), .Y(n25) );
  OAI21X1 U32 ( .A(n20), .B(n5), .C(n26), .Y(src2[3]) );
  AOI22X1 U33 ( .A(instr[1]), .B(n22), .C(instr[3]), .D(n18), .Y(n26) );
  OAI21X1 U34 ( .A(n20), .B(n6), .C(n27), .Y(src2[2]) );
  AOI22X1 U35 ( .A(instr[0]), .B(n22), .C(instr[2]), .D(n18), .Y(n27) );
  OAI21X1 U36 ( .A(n29), .B(n15), .C(n30), .Y(src2[1]) );
  NAND2X1 U37 ( .A(writedata[1]), .B(n28), .Y(n30) );
  OAI21X1 U38 ( .A(alusrcb[1]), .B(n19), .C(n31), .Y(src2[0]) );
  AOI22X1 U39 ( .A(instr[0]), .B(n18), .C(writedata[0]), .D(n28), .Y(n31) );
  NOR2X1 U40 ( .A(alusrcb[0]), .B(alusrcb[1]), .Y(n28) );
  NAND2X1 U41 ( .A(alusrcb[1]), .B(n19), .Y(n29) );
  OAI21X1 U42 ( .A(n32), .B(n7), .C(n33), .Y(nextpc[7]) );
  AOI22X1 U43 ( .A(n34), .B(instr[5]), .C(aluresult[7]), .D(n35), .Y(n33) );
  OAI21X1 U44 ( .A(n32), .B(n10), .C(n36), .Y(nextpc[6]) );
  AOI22X1 U45 ( .A(n34), .B(instr[4]), .C(aluresult[6]), .D(n35), .Y(n36) );
  OAI21X1 U46 ( .A(n32), .B(n11), .C(n37), .Y(nextpc[5]) );
  AOI22X1 U47 ( .A(n34), .B(instr[3]), .C(aluresult[5]), .D(n35), .Y(n37) );
  OAI21X1 U48 ( .A(n32), .B(n12), .C(n38), .Y(nextpc[4]) );
  AOI22X1 U49 ( .A(n34), .B(instr[2]), .C(aluresult[4]), .D(n35), .Y(n38) );
  OAI21X1 U50 ( .A(n32), .B(n13), .C(n39), .Y(nextpc[3]) );
  AOI22X1 U51 ( .A(n34), .B(instr[1]), .C(aluresult[3]), .D(n35), .Y(n39) );
  OAI21X1 U52 ( .A(n32), .B(n14), .C(n40), .Y(nextpc[2]) );
  AOI22X1 U53 ( .A(n34), .B(instr[0]), .C(aluresult[2]), .D(n35), .Y(n40) );
  NOR2X1 U54 ( .A(n17), .B(pcsource[0]), .Y(n34) );
  AOI22X1 U55 ( .A(aluresult[1]), .B(n35), .C(aluout[1]), .D(n16), .Y(n41) );
  AOI22X1 U56 ( .A(aluresult[0]), .B(n35), .C(aluout[0]), .D(n16), .Y(n42) );
  NAND2X1 U57 ( .A(pcsource[0]), .B(n17), .Y(n32) );
  NOR2X1 U58 ( .A(pcsource[0]), .B(pcsource[1]), .Y(n35) );
  mux2reg regmux ( .d0(instr[18:16]), .d1(instr[13:11]), .s(regdst), .y(wa) );
  flopen_3 ir0 ( .clk(clk), .en(irwrite[3]), .d(memdata), .q(instr[7:0]) );
  flopen_2 ir1 ( .clk(clk), .en(irwrite[2]), .d(memdata), .q(instr[15:8]) );
  flopen_1 ir2 ( .clk(clk), .en(irwrite[1]), .d(memdata), .q(instr[23:16]) );
  flopen_0 ir3 ( .clk(clk), .en(irwrite[0]), .d(memdata), .q(instr[31:24]) );
  flopenr pcreg ( .clk(clk), .reset(reset), .en(pcen), .d({nextpc, n9, n8}), 
        .q(pc) );
  flop_3 mdr ( .clk(clk), .d(memdata), .q(md) );
  flop_2 areg ( .clk(clk), .d(rd1), .q(a) );
  flop_1 wrd ( .clk(clk), .d(rd2), .q(writedata) );
  flop_0 res ( .clk(clk), .d(aluresult), .q(aluout) );
  mux2_2 adrmux ( .d0(pc), .d1(aluout), .s(iord), .y(adr) );
  mux2_1 src1mux ( .d0(pc), .d1(a), .s(alusrca), .y(src1) );
  mux2_0 wdmux ( .d0(aluout), .d1(md), .s(memtoreg), .y(wd) );
  regfile rf ( .clk(clk), .regwrite(regwrite), .ra1(instr[23:21]), .ra2(
        instr[18:16]), .wa(wa), .wd(wd), .rd1(rd1), .rd2(rd2) );
  alu alunit ( .a(src1), .b(src2), .alucont(alucont), .result(aluresult) );
  zerodetect zd ( .a(aluresult), .y(zero) );
  INVX2 U4 ( .A(writedata[7]), .Y(n1) );
  INVX2 U5 ( .A(writedata[6]), .Y(n2) );
  INVX2 U6 ( .A(writedata[5]), .Y(n3) );
  INVX2 U7 ( .A(writedata[4]), .Y(n4) );
  INVX2 U8 ( .A(writedata[3]), .Y(n5) );
  INVX2 U9 ( .A(writedata[2]), .Y(n6) );
  INVX2 U10 ( .A(aluout[7]), .Y(n7) );
  INVX2 U13 ( .A(aluout[6]), .Y(n10) );
  INVX2 U14 ( .A(aluout[5]), .Y(n11) );
  INVX2 U15 ( .A(aluout[4]), .Y(n12) );
  INVX2 U16 ( .A(aluout[3]), .Y(n13) );
  INVX2 U17 ( .A(aluout[2]), .Y(n14) );
  INVX2 U18 ( .A(instr[1]), .Y(n15) );
  INVX2 U19 ( .A(n32), .Y(n16) );
  INVX2 U20 ( .A(pcsource[1]), .Y(n17) );
  INVX2 U21 ( .A(n29), .Y(n18) );
  INVX2 U22 ( .A(alusrcb[0]), .Y(n19) );
  INVX2 U23 ( .A(n28), .Y(n20) );
endmodule


module mips ( clk, reset, memdata, memread, memwrite, adr, writedata );
  input [7:0] memdata;
  output [7:0] adr;
  output [7:0] writedata;
  input clk, reset;
  output memread, memwrite;
  wire   zero, alusrca, memtoreg, iord, pcen, regwrite, regdst, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
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

  controller cont ( .clk(clk), .reset(n2), .op(instr[31:26]), .zero(zero), 
        .memread(memread), .memwrite(memwrite), .alusrca(alusrca), .memtoreg(
        memtoreg), .iord(iord), .pcen(pcen), .regwrite(regwrite), .regdst(
        regdst), .pcsource(pcsource), .alusrcb(alusrcb), .aluop(aluop), 
        .irwrite(irwrite) );
  alucontrol ac ( .aluop(aluop), .funct(instr[5:0]), .alucont(alucont) );
  datapath dp ( .clk(clk), .reset(n2), .memdata({n18, n16, n14, n12, n10, n8, 
        n6, n4}), .alusrca(alusrca), .memtoreg(memtoreg), .iord(iord), .pcen(
        pcen), .regwrite(regwrite), .regdst(regdst), .pcsource(pcsource), 
        .alusrcb(alusrcb), .irwrite(irwrite), .alucont(alucont), .zero(zero), 
        .instr({instr[31:26], SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, 
        SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, 
        SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8, 
        SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10, 
        SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12, 
        SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14, 
        SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16, 
        SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18, 
        SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20, instr[5:0]}), .adr(
        adr), .writedata(writedata) );
  INVX2 U1 ( .A(reset), .Y(n1) );
  INVX2 U2 ( .A(n1), .Y(n2) );
  INVX2 U3 ( .A(memdata[0]), .Y(n3) );
  INVX2 U4 ( .A(n3), .Y(n4) );
  INVX2 U5 ( .A(memdata[1]), .Y(n5) );
  INVX2 U6 ( .A(n5), .Y(n6) );
  INVX2 U7 ( .A(memdata[2]), .Y(n7) );
  INVX2 U8 ( .A(n7), .Y(n8) );
  INVX2 U9 ( .A(memdata[3]), .Y(n9) );
  INVX2 U10 ( .A(n9), .Y(n10) );
  INVX2 U11 ( .A(memdata[4]), .Y(n11) );
  INVX2 U12 ( .A(n11), .Y(n12) );
  INVX2 U13 ( .A(memdata[5]), .Y(n13) );
  INVX2 U14 ( .A(n13), .Y(n14) );
  INVX2 U15 ( .A(memdata[6]), .Y(n15) );
  INVX2 U16 ( .A(n15), .Y(n16) );
  INVX2 U17 ( .A(memdata[7]), .Y(n17) );
  INVX2 U18 ( .A(n17), .Y(n18) );
endmodule

