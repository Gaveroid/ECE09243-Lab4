module mux8(o,i0,i1,i2,i3,i4,i5,i6,i7,s);
	input [2:0] s;
	input [31:0]i0,i1,i2,i3,i4,i5,i6,i7;
	output reg [31:0] o;
	
	always @*
	begin 
		case(s)
			3'd0:o=i0;
			3'd1:o=i1;
			3'd2:o=i2;
			3'd3:o=i3;
			3'd4:o=i4;
			3'd5:o=i5;
			3'd6:o=i6;
			3'd7:o=i7;
		endcase
	end 
	
endmodule 