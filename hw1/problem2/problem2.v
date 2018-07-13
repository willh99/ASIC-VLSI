module problem2(A,B,C,S,OUT);

  input[3:0] A,B,C;
  input[2:0] S;
  output OUT;

  assign OUT = (S[0]== 1'b0)? (A[3:0]&B[1:0]):(B[3:2]^C[3:0]);

endmodule
