module Adder(A, B, Cin, S, Cout);
	 input [31:0] A, B; 
	 input Cin;
	 output [31:0] S; 
	 output Cout;
	 
	 wire [32:0] carry;
	 assign carry[0] = Cin;
	 assign Cout= carry[32];
	 
	 genvar i;
	 generate 
	 for (i=0; i<=31; i=i+1) begin: full_adders
		Full_Adder adder_inst (A[i], B[i], carry[i], S[i], carry[i+1]);
	end 
	endgenerate 
	
endmodule
	 