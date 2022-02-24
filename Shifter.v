module Shifter(a, b, left_shift, right_shift);

	input [31:0] a;
	input [4:0] b;
	
	output [31:0] left_shift;
	output [31:0] right_shift;
	
	assign left_shift = a << b;
	assign right_shift = a>>b;
	
endmodule 