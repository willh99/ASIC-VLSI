module fulladder(a,b,cin,S,cout);
    input a;
    input b;
    input cin;
    output S;
    output cout;

    assign S = (a^b^cin);
    assign cout = ((a&b)|(b&cin)|(a&cin));
endmodule
