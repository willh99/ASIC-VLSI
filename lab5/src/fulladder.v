module fulladder (s, cout,  a, b, cin);
input a, b, cin;
output s, cout;

wire wire1, wire2, wire3;
halfadder ha1( .s(wire1), .c(wire2), .a(a), .b(b));
halfadder ha2( .s(s), .c(wire3), .a(wire1), .b(cin));
or (cout, wire2, wire3) ;

endmodule
