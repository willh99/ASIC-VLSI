
module halfadder_7 ( s, c, a, b );
  input a, b;
  output s, c;


  GTECH_XOR2 u__tmp300 ( .A(a), .B(b), .Z(s) );
  GTECH_AND2 u__tmp301 ( .A(a), .B(b), .Z(c) );
endmodule


module halfadder_6 ( s, c, a, b );
  input a, b;
  output s, c;


  GTECH_XOR2 u__tmp300 ( .A(a), .B(b), .Z(s) );
  GTECH_AND2 u__tmp301 ( .A(a), .B(b), .Z(c) );
endmodule


module fulladder_3 ( s, cout, a, b, cin );
  input a, b, cin;
  output s, cout;
  wire   wire1, wire2, wire3;

  halfadder_7 ha1 ( .s(wire1), .c(wire2), .a(a), .b(b) );
  halfadder_6 ha2 ( .s(s), .c(wire3), .a(wire1), .b(cin) );
  GTECH_OR2 u__tmp200 ( .A(wire2), .B(wire3), .Z(cout) );
endmodule


module halfadder_0 ( s, c, a, b );
  input a, b;
  output s, c;


  GTECH_XOR2 u__tmp300 ( .A(a), .B(b), .Z(s) );
  GTECH_AND2 u__tmp301 ( .A(a), .B(b), .Z(c) );
endmodule


module halfadder_1 ( s, c, a, b );
  input a, b;
  output s, c;


  GTECH_XOR2 u__tmp300 ( .A(a), .B(b), .Z(s) );
  GTECH_AND2 u__tmp301 ( .A(a), .B(b), .Z(c) );
endmodule


module fulladder_0 ( s, cout, a, b, cin );
  input a, b, cin;
  output s, cout;
  wire   wire1, wire2, wire3;

  halfadder_1 ha1 ( .s(wire1), .c(wire2), .a(a), .b(b) );
  halfadder_0 ha2 ( .s(s), .c(wire3), .a(wire1), .b(cin) );
  GTECH_OR2 u__tmp200 ( .A(wire2), .B(wire3), .Z(cout) );
endmodule


module halfadder_2 ( s, c, a, b );
  input a, b;
  output s, c;


  GTECH_XOR2 u__tmp300 ( .A(a), .B(b), .Z(s) );
  GTECH_AND2 u__tmp301 ( .A(a), .B(b), .Z(c) );
endmodule


module halfadder_3 ( s, c, a, b );
  input a, b;
  output s, c;


  GTECH_XOR2 u__tmp300 ( .A(a), .B(b), .Z(s) );
  GTECH_AND2 u__tmp301 ( .A(a), .B(b), .Z(c) );
endmodule


module fulladder_1 ( s, cout, a, b, cin );
  input a, b, cin;
  output s, cout;
  wire   wire1, wire2, wire3;

  halfadder_3 ha1 ( .s(wire1), .c(wire2), .a(a), .b(b) );
  halfadder_2 ha2 ( .s(s), .c(wire3), .a(wire1), .b(cin) );
  GTECH_OR2 u__tmp200 ( .A(wire2), .B(wire3), .Z(cout) );
endmodule


module halfadder_4 ( s, c, a, b );
  input a, b;
  output s, c;


  GTECH_XOR2 u__tmp300 ( .A(a), .B(b), .Z(s) );
  GTECH_AND2 u__tmp301 ( .A(a), .B(b), .Z(c) );
endmodule


module halfadder_5 ( s, c, a, b );
  input a, b;
  output s, c;


  GTECH_XOR2 u__tmp300 ( .A(a), .B(b), .Z(s) );
  GTECH_AND2 u__tmp301 ( .A(a), .B(b), .Z(c) );
endmodule


module fulladder_2 ( s, cout, a, b, cin );
  input a, b, cin;
  output s, cout;
  wire   wire1, wire2, wire3;

  halfadder_5 ha1 ( .s(wire1), .c(wire2), .a(a), .b(b) );
  halfadder_4 ha2 ( .s(s), .c(wire3), .a(wire1), .b(cin) );
  GTECH_OR2 u__tmp200 ( .A(wire2), .B(wire3), .Z(cout) );
endmodule


module ripplecarry4_clk ( sum, cout, a, b, cin, clk, rst );
  output [3:0] sum;
  input [3:0] a;
  input [3:0] b;
  input cin, clk, rst;
  output cout;
  wire   N0, N1, wire0, wire1, c0_reg, wire2, c1_reg, c2_reg, N2, N3, N4, N5;

  fulladder_3 fa0 ( .s(sum[0]), .cout(wire0), .a(a[0]), .b(b[0]), .cin(cin) );
  fulladder_2 fa1 ( .s(sum[1]), .cout(wire1), .a(a[1]), .b(b[1]), .cin(c0_reg)
         );
  fulladder_1 fa2 ( .s(sum[2]), .cout(wire2), .a(a[2]), .b(b[2]), .cin(c1_reg)
         );
  fulladder_0 fa3 ( .s(sum[3]), .cout(cout), .a(a[3]), .b(b[3]), .cin(c2_reg)
         );
  \**SEQGEN**  c1_reg_reg ( .clear(1'b0), .preset(1'b0), .next_state(N4), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(c1_reg), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  c2_reg_reg ( .clear(1'b0), .preset(1'b0), .next_state(N5), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(c2_reg), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  c0_reg_reg ( .clear(1'b0), .preset(1'b0), .next_state(N3), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(c0_reg), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  SELECT_OP C13 ( .DATA1(1'b0), .DATA2(wire0), .CONTROL1(N0), .CONTROL2(N1), 
        .Z(N3) );
  GTECH_BUF B_0 ( .A(rst), .Z(N0) );
  GTECH_BUF B_1 ( .A(N2), .Z(N1) );
  SELECT_OP C14 ( .DATA1(1'b0), .DATA2(wire1), .CONTROL1(N0), .CONTROL2(N1), 
        .Z(N4) );
  SELECT_OP C15 ( .DATA1(1'b0), .DATA2(wire2), .CONTROL1(N0), .CONTROL2(N1), 
        .Z(N5) );
  GTECH_NOT I_0 ( .A(rst), .Z(N2) );
endmodule

