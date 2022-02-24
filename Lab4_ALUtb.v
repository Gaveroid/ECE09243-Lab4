module Lab4_ALUtb (A,B,FS,C0, F,status);
	output reg [31:0] A, B;
	output reg [2:0] FS;
	output reg C0;
	output wire [31:0] F;
	output wire [3:0] status;
	
	Lab4_ALU beepboop (A,B,FS,C0, F,status);
	
	initial begin 
	FS<= 5'b000;//and
	C0<= 1'b0;
	A<= 32'd15;
	B<= 32'd10;
	#5
	FS<=5'b001;//or
	#5
	FS<= 5'b010;//xor

	#5 FS<= 5'b011;//nor
	#5 A<={$random, $random};
	B<= {$random, $random};
	#5 FS<= 5'b100;//add
	#5 A<={$random, $random};
	B<= {$random, $random};
	#5 FS<= 3'b101;//left shift
	A<= 3'b0010;
	B<= 3'b0001;
	#5 FS<= 3'b110;//right shifter
	A<= 3'b0010;
	B<= 3'b0001;
	#2500 $finish;
	end
	endmodule
	
	