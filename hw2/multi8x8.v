module multi8x8(a,b,clk,S);
    input [7:0]a;
    input [7:0]b;
    input clk;
    output [15:0]S;
    reg [15:0]S;

    always @(posedge clk)
    begin
	assign S = a*b;
    end

endmodule
