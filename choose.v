module choose(
	input clk25MHz,
	input up,
	input down,
	input right,
	input left,
	input [3:0] step_2,
	
	output reg [2:0] secim1
    );
	 
	 parameter [2:0] kare0=3'b000, kare1=3'b001, kare2=3'b010, kare3=3'b011, kare4=3'b100, kare5=3'b101, kare6=3'b110, kare7=3'b111;
	 integer mover=0;
	initial
		secim1<=3'b000;
	
	
	always@(posedge clk25MHz)begin
		if(step_2==4'b0000)begin
			if(up)begin
				if(mover==0)begin
					mover=1;
					if(secim1==3'b000)
						secim1=kare5;
					else if(secim1==3'b001)
						secim1=kare6;
					else if(secim1==3'b010)
						secim1=kare7;
					else if(secim1==3'b011)
						secim1=kare4;
					else if(secim1==3'b100)
						secim1=kare0;
					else if(secim1==3'b101)
						secim1=kare1;
					else if(secim1==3'b110)
						secim1=kare2;
					else if(secim1==3'b111)
						secim1=kare3;
				end
			end
			else if(down)begin
				if(mover==0)begin
					mover=1;
					if(secim1==3'b000)
						secim1=kare4;
					else if(secim1==3'b001)
						secim1=kare5;
					else if(secim1==3'b010)
						secim1=kare6;
					else if(secim1==3'b011)
						secim1=kare7;
					else if(secim1==3'b100)
						secim1=kare1;
					else if(secim1==3'b101)
						secim1=kare2;
					else if(secim1==3'b110)
						secim1=kare3;
					else if(secim1==3'b111)
						secim1=kare0;
				end
			end
			else if(right)begin
				if(mover==0)begin
					mover=1;
					if(secim1==3'b000)
						secim1=kare1;
					else if(secim1==3'b001)
						secim1=kare2;
					else if(secim1==3'b010)
						secim1=kare3;
					else if(secim1==3'b011)
						secim1=kare4;
					else if(secim1==3'b100)
						secim1=kare5;
					else if(secim1==3'b101)
						secim1=kare6;
					else if(secim1==3'b110)
						secim1=kare7;
					else if(secim1==3'b111)
						secim1=kare0;		
				end
			end
			else if(left)begin
				if(mover==0)begin
					mover=1;
					if(secim1==3'b000)
						secim1=kare7;
					else if(secim1==3'b001)
						secim1=kare0;
					else if(secim1==3'b010)
						secim1=kare1;
					else if(secim1==3'b011)
						secim1=kare2;
					else if(secim1==3'b100)
						secim1=kare3;
					else if(secim1==3'b101)
						secim1=kare4;
					else if(secim1==3'b110)
						secim1=kare5;
					else if(secim1==3'b111)
						secim1=kare6;
				end
			end
			else 
				mover=0;
		end
	end

endmodule
