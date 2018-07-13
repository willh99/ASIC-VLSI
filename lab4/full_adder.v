//
//Full Adder
//

module Full_Adder(A, B, Cin, S, Cout);
  
  input A,B,Cin;
  output S,Cout;
  
  assign S = A^B^Cin;
  assign Cout = (A&B)|(Cin & (A^B));
endmodule
