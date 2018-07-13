// Implements Mealy State Machine
module problem4(x, y, a, clk, rst);
    input a, clk, rst;
    output x, y;
    reg x, y;
    reg [2:0] state, next_state;
    parameter 	s0=3'b000, s1=3'b001, s2=3'b010,
					s3=3'b011, s4=3'b100;
    
	// Next state and output Logic
	always @(a or state)
	begin
		case({a, state})
			{a, s0}:
				{next_state, x, y} <= {s3, 1'b0, 1'b0};
			{~a, s0}:
				{next_state, x, y} <= {s1, 1'b0, 1'b0};
			{a, s1}:
				{next_state, x, y} <= {s3, 1'b0, 1'b0};
			{~a, s1}:
				{next_state, x, y} <= {s2, 1'b1, 1'b0};
			{a, s2}:
				{next_state, x, y} <= {s3, 1'b0, 1'b0};
			{~a, s2}:
				{next_state, x, y} <= {s2, 1'b1, 1'b1};
			{a, s3}:
				{next_state, x, y} <= {s4, 1'b1, 1'b0};
			{~a, s3}:
				{next_state, x, y} <= {s1, 1'b0, 1'b0};
			{a, s4}:
				{next_state, x, y} <= {s4, 1'b1, 1'b1};
			{~a, s4}:
				{next_state, x, y} <= {s1, 1'b0, 1'b0};
			default:
				{next_state, x, y} <= {s0, 1'b0, 1'b0};
		endcase
	end

    // Next state logic
    always @(posedge clk or negedge rst)
    begin
	if(rst==1)
	    state<=s0;
	else
	    state<=next_state;
    end

endmodule
