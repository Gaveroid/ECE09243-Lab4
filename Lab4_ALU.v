module Lab4_ALU (A, B, FS, C0, F, status);
	input [31:0] A,B;
	input C0;
	input [2:0] FS;
	output [31:0] F;
	output [3:0] status;
	
	wire Z,N,C,V;
	wire temp;
	assign status= {V,C,N,Z};
	wire [31:0] A, B;
	
	assign N=F[31];
	assign Z= (F== 32'b0) ? 1'b1 : 1'b0 ;
	assign V = ((~A[31])&(~B[31])&F[31])|(A[31] & B[31] &(~F[31]));
	
	
	wire [31:0]and_out, or_out, xor_out, nor_out, add_out, left_out, right_out, i7;
	assign and_out = A & B;
	assign or_out = A | B;
	assign xor_out = A ^ B;
	assign nor_out = ~(A | B);
	
	Adder adderboi (A, B, C0,add_out, C);
	
	Shifter shiftboi (A, B[4:0], left_out, right_out);
	
	assign i7= 32'b0;
	
	mux8 mainmux (F, and_out, or_out, xor_out, nor_out, add_out, left_out, right_out,i7, FS);
endmodule 
