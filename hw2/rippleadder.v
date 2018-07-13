module rippleadder(a,b,cin,S,cout);
    input [7:0]a;
    input [7:0]b;
    input cin;
    output [7:0]S;
    output cout;
    wire[6:0]c;

    fulladder a0(a[0],b[0],cin,S[0],c[0]);
    fulladder a1(a[1],b[1],c[0],S[1],c[1]);
    fulladder a2(a[2],b[2],c[1],S[2],c[2]);
    fulladder a3(a[3],b[3],c[2],S[3],c[3]);
    fulladder a4(a[4],b[4],c[3],S[4],c[4]);
    fulladder a5(a[5],b[5],c[4],S[5],c[5]);
    fulladder a6(a[6],b[6],c[5],S[6],c[6]);
    fulladder a7(a[7],b[7],c[6],S[7],cout);
endmodule
