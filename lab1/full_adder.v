module full_adder(S,Cout,A,B,Cin);
  input A,B,Cin;
  output S,Cout;
  wire S1,C1,C2;

  half_adder H1(.S1(s),.C1(cout),.A(a),.B(b));
  half_adder H2(.S(s),.C2(cout),.S1(a),.Cin(b));
  or o1(Cout,C1,C2);
endmodule
