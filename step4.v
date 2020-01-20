module step4(
		input clk25MHz,
		input up,
		input down,
		input right,
		input left,	
		input [3:0] step_2,
		input [2:0] secim1,
		input [2:0] secim2,
		input [2:0] es1,
		output reg [2:0] es2
									);


	parameter [2:0] kare0=3'b000, kare1=3'b001, kare2=3'b010, kare3=3'b011, kare4=3'b100, kare5=3'b101, kare6=3'b110, kare7=3'b111;
	integer mover=0;
	initial
	es2<=kare0;
	
	
	always@(posedge clk25MHz)begin
		if(step_2==4'b0100)begin
			if(mover==0)begin
				mover=1;
				if((secim1 == kare0) || (es1 == kare0) || (secim2 == kare0))
					if((secim1 == kare1) || (es1 == kare1) || (secim2 == kare1))
						es2=kare2;
					else 
						es2=kare1;
				else
					es2=kare0;
			end
			if(up)begin
				if(mover == 1)begin
					mover=2;
					if(es2==kare0)
						es2=kare5;
					else if(es2==kare1)
						es2=kare6;
					else if(es2==kare2)
						es2=kare7;
					else if(es2==kare3)
						es2=kare4;
					else if(es2==kare4)
						es2=kare0;
					else if(es2==kare5)
						es2=kare1;
					else if(es2==kare6)
						es2=kare2;
					else if(es2==kare7)
						es2=kare3;
				end
			end
			else if(down)begin
				if(mover==1)begin
					mover=2;
					if(es2==3'b000)
						es2=kare4;
					else if(es2==3'b001)
						es2=kare5;
					else if(es2==3'b010)
						es2=kare6;
					else if(es2==3'b011)
						es2=kare7;
					else if(es2==3'b100)
						es2=kare1;
					else if(es2==3'b101)
						es2=kare2;
					else if(es2==3'b110)
						es2=kare3;
					else if(es2==3'b111)
						es2=kare0;
				end
			end
			else if(right)begin
				if(mover==1)begin
					mover=2;
					if(es2==3'b000)
						es2=kare1;
					else if(es2==3'b001)
						es2=kare2;
					else if(es2==3'b010)
						es2=kare3;
					else if(es2==3'b011)
						es2=kare4;
					else if(es2==3'b100)
						es2=kare5;
					else if(es2==3'b101)
						es2=kare6;
					else if(es2==3'b110)
						es2=kare7;
					else if(es2==3'b111)
						es2=kare0;		
				end
			end
			else if(left)begin
				if(mover==1)begin
					mover=2;
					if(es2==3'b000)
						es2=kare7;
					else if(es2==3'b001)
						es2=kare0;
					else if(es2==3'b010)
						es2=kare1;
					else if(es2==3'b011)
						es2=kare2;
					else if(es2==3'b100)
						es2=kare3;
					else if(es2==3'b101)
						es2=kare4;
					else if(es2==3'b110)
						es2=kare5;
					else if(es2==3'b111)
						es2=kare6;
				end
			end
			else
				mover = 1;
			if(secim1==es2 || es1==es2 || secim2==es2)
				mover = 1;
		end
	end







endmodule

	 
	
	 
	
	
	