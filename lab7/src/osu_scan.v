// class zero delay library for functional test only
//
// all gates have zero delay for maximum simulation speed
// registers and latches have a delay of one to avoid simulation ordering problems
// Verilog built-in or user defined primitives are used because they
// are accelerated by verilog and run much faster than hdl code
// Verilog primitive state definition:
// 0=0,1=1,x=unknown,?=(0,1 or x),b=(0 or 1)
// r=rising edge,f=falling edge,*=rising or falling edge
// -=keep last state (for registers and latchs, etc)

module DFFPOSX1_SCAN(CLK,D,Q,TE,TI);
	input	CLK,D,TE,TI;
	output	Q;
	p_dregscan #1 (Q,CLK,D,TI,TE);
endmodule

primitive p_dregscan(q,cp,d,ti,te);
  output q;
  reg q;
  input cp,d,ti,te;
  table
// cp d ti te : present q : next q
// normal mode
    r 0  ?  0 : ? : 0;
    r 1  ?  0 : ? : 1;
    f ?  ?  ? : ? : -;
    b *  ?  ? : ? : -;
    b ?  *  ? : ? : -;
    b ?  ?  * : ? : -;
    x 0  ?  0 : 0 : 0;
    x 1  ?  0 : 1 : 1;
// scan mode
    r ?  0  1 : ? : 0;
    r ?  1  1 : ? : 1;
    x ?  0  1 : 0 : 0;
    x ?  1  1 : 1 : 1;
// scan enable undefined
    r 0  0  x : ? : 0;
    r 1  1  x : ? : 1;
    x 0  0  x : 0 : 0;
    x 1  1  x : 1 : 1;
  endtable
endprimitive

module DFFNEGX1_SCAN(CLK,D,Q,TE,TI);
	input	CLK,D,TE,TI;
	output	Q;
	n_dregscan #1 (Q,CLK,D,TI,TE);
endmodule

primitive n_dregscan(q,cp,d,ti,te);
  output q;
  reg q;
  input cp,d,ti,te;
  table
// cp d ti te : present q : next q
// normal mode
    f 0  ?  0 : ? : 0;
    f 1  ?  0 : ? : 1;
    r ?  ?  ? : ? : -;
    b *  ?  ? : ? : -;
    b ?  *  ? : ? : -;
    b ?  ?  * : ? : -;
    x 0  ?  0 : 0 : 0;
    x 1  ?  0 : 1 : 1;
// scan mode
    f ?  0  1 : ? : 0;
    f ?  1  1 : ? : 1;
    x ?  0  1 : 0 : 0;
    x ?  1  1 : 1 : 1;
// scan enable undefined
    f 0  0  x : ? : 0;
    f 1  1  x : ? : 1;
    x 0  0  x : 0 : 0;
    x 1  1  x : 1 : 1;
  endtable
endprimitive

module DFFSR_SCAN(D, CLK, TI, TE, Q, S, R);
  output Q;
  input D,CLK,TI,TE,S,R;
  p_dregscansr #1 (Q,CLK,D,TI,TE,R,S);
endmodule

primitive p_dregscansr(q,cp,d,ti,te,r,s);
  output q;
  reg q;
  input cp,d,ti,te,r,s;
  table
// cp d ti te r s : present q : next q
// set mode (s)
    ? ?  ?  ? 1 0 : ? : 1;
    b ?  ?  ? 1 * : 1 : 1; // EBP changed x to * 5/7/92
    r 1  ?  0 1 x : ? : 1;
    r ?  1  1 1 x : ? : 1;
    r 1  1  x 1 x : ? : 1;
// clear mode (r)
    ? ?  ?  ?  0 b : ? : 0; // Priority reset - wgibb 12/19/10
    b ?  ?  ?  * 1 : 0 : 0; // EBP changed x to * 5/7/92
    r 0  ?  0  x 1 : ? : 0;
    r ?  0  1  x 1 : ? : 0;
    r 0  0  x  x 1 : ? : 0;
// normal mode
    r 0  ?  0  1 1 : ? : 0;
    r 1  ?  0  1 1 : ? : 1;
    f ?  ?  ?  1 1 : ? : -;
    b *  ?  ?  1 1 : ? : -;
    b ?  *  ?  1 1 : ? : -;
    b ?  ?  *  1 1 : ? : -;
    x 0  ?  0  1 1 : 0 : 0;
    x 1  ?  0  1 1 : 1 : 1;
// scan mode
    r ?  0  1  1 1 : ? : 0;
    r ?  1  1  1 1 : ? : 1;
    x ?  0  1  1 1 : 0 : 0;
    x ?  1  1  1 1 : 1 : 1;
// scan enable undefined
    r 0  0  x  1 1 : ? : 0;
    r 1  1  x  1 1 : ? : 1;
    x 0  0  x  1 1 : 0 : 0;
    x 1  1  x  1 1 : 1 : 1;
  endtable
endprimitive

