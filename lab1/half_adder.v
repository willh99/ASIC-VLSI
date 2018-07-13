module half_adder(s,cout,a,b);
  input a,b;
  output s, cout;
  wire s,cout;

  assign s=a^b;
  assign cout=a&b;
endmodule
