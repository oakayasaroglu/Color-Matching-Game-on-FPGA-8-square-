module step6(
		input clk25MHz,
		input up,
		input down,
		input right,
		input left,	
		input [3:0] step_2,
		input [2:0] secim1,
		input [2:0] secim2,
		input [2:0] es1,
		input [2:0] es2,
		
		output reg [2:0] secim3
    );
	 
	parameter [2:0] kare0=3'b000, kare1=3'b001, kare2=3'b010, kare3=3'b011, kare4=3'b100, kare5=3'b101, kare6=3'b110, kare7=3'b111;
	integer mover=0;
	initial
	secim3<=kare0;
	
	always@(posedge clk25MHz)begin
		if(step_2==4'b0110)begin
			if(mover==0)begin
				mover=1;
				if((secim1 == kare0) || (es1 == kare0) || (secim2 == kare0) || (es2 == kare0))
					if((secim1 == kare1) || (es1 == kare1) || (secim2 == kare1) || (es2 == kare1))
						secim3=kare2;
					else 
						secim3=kare1;
				else
					secim3=kare0;
			end
			if(up)begin
				if(mover == 1)begin
					mover=2;
					if(secim3==kare0)
						secim3=kare5;
					else if(secim3==kare1)
						secim3=kare6;
					else if(secim3==kare2)
						secim3=kare7;
					else if(secim3==kare3)
						secim3=kare4;
					else if(secim3==kare4)
						secim3=kare0;
					else if(secim3==kare5)
						secim3=kare1;
					else if(secim3==kare6)
						secim3=kare2;
					else if(secim3==kare7)
						secim3=kare3;
				end
			end
			else if(down)begin
				if(mover==1)begin
					mover=2;
					if(secim3==3'b000)
						secim3=kare4;
					else if(secim3==3'b001)
						secim3=kare5;
					else if(secim3==3'b010)
						secim3=kare6;
					else if(secim3==3'b011)
						secim3=kare7;
					else if(secim3==3'b100)
						secim3=kare1;
					else if(secim3==3'b101)
						secim3=kare2;
					else if(secim3==3'b110)
						secim3=kare3;
					else if(secim3==3'b111)
						secim3=kare0;
				end
			end
			else if(right)begin
				if(mover==1)begin
					mover=2;
					if(secim3==3'b000)
						secim3=kare1;
					else if(secim3==3'b001)
						secim3=kare2;
					else if(secim3==3'b010)
						secim3=kare3;
					else if(secim3==3'b011)
						secim3=kare4;
					else if(secim3==3'b100)
						secim3=kare5;
					else if(secim3==3'b101)
						secim3=kare6;
					else if(secim3==3'b110)
						secim3=kare7;
					else if(secim3==3'b111)
						secim3=kare0;		
				end
			end
			else if(left)begin
				if(mover==1)begin
					mover=2;
					if(secim3==3'b000)
						secim3=kare7;
					else if(secim3==3'b001)
						secim3=kare0;
					else if(secim3==3'b010)
						secim3=kare1;
					else if(secim3==3'b011)
						secim3=kare2;
					else if(secim3==3'b100)
						secim3=kare3;
					else if(secim3==3'b101)
						secim3=kare4;
					else if(secim3==3'b110)
						secim3=kare5;
					else if(secim3==3'b111)
						secim3=kare6;
				end
			end
			else
				mover = 1;
			if(secim1==secim3 || es1==secim3 || secim2==secim3 || es2==secim3)
				mover = 1;
		end
	end


endmodule
		