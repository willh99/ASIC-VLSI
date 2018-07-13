module alu8(a,b,sel,result);

    input [7:0]a;
    input [7:0]b;
    input [2:0]sel;
    output [7:0]result;
    reg [7:0]result;

    always @(a or b or sel)
    begin
	case(sel)
	    3'b001: result <= a+b;	  // sel=1: add
	    3'b010: result <= a-b;	  // sel=2: sub
	    3'b011: result <= a&b;	  // sel=3: and
	    3'b100: result <= a|b;	  // sel=4: or
	    3'b101: result <= (a<b)?1:0;  // sel=5: slt
	endcase
    end
endmodule


