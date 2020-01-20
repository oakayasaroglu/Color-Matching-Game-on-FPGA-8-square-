module step7(
		input clk25MHz,
		input up,
		input down,
		input right,
		input left,	
		input [3:0] step_2,
		input [2:0] secim1,
		input [2:0] secim2,
		input [2:0] secim3,
		input [2:0] es1,
		input [2:0] es2,
		
		output reg [2:0] es3
    );
	 
	parameter [2:0] kare0=3'b000, kare1=3'b001, kare2=3'b010, kare3=3'b011, kare4=3'b100, kare5=3'b101, kare6=3'b110, kare7=3'b111;
	integer mover=0;
	initial
	es3<=kare0;
	
	always@(posedge clk25MHz)begin
		if(step_2==4'b0111)begin
			if(mover==0)begin
				mover=1;
				if((secim1 == kare0) || (es1 == kare0) || (secim2 == kare0) || (es2 == kare0) || (secim3==kare0))
					if((secim1 == kare1) || (es1 == kare1) || (secim2 == kare1) || (es2 == kare1) || (secim3==kare1))
						if((secim1 == kare2) || (es1 == kare2) || (secim2 == kare2) || (es2 == kare2) || (secim3==kare2))
							es3=kare3;
						else
							es3=kare2;
					else 
						es3=kare1;
				else
					es3=kare0;
			end
			if(up)begin
				if(mover == 1)begin
					mover=2;
					if(es3==kare0)
						es3=kare5;
					else if(es3==kare1)
						es3=kare6;
					else if(es3==kare2)
						es3=kare7;
					else if(es3==kare3)
						es3=kare4;
					else if(es3==kare4)
						es3=kare0;
					else if(es3==kare5)
						es3=kare1;
					else if(es3==kare6)
						es3=kare2;
					else if(es3==kare7)
						es3=kare3;
				end
			end
			else if(down)begin
				if(mover==1)begin
					mover=2;
					if(es3==3'b000)
						es3=kare4;
					else if(es3==3'b001)
						es3=kare5;
					else if(es3==3'b010)
						es3=kare6;
					else if(es3==3'b011)
						es3=kare7;
					else if(es3==3'b100)
						es3=kare1;
					else if(es3==3'b101)
						es3=kare2;
					else if(es3==3'b110)
						es3=kare3;
					else if(es3==3'b111)
						es3=kare0;
				end
			end
			else if(right)begin
				if(mover==1)begin
					mover=2;
					if(es3==3'b000)
						es3=kare1;
					else if(es3==3'b001)
						es3=kare2;
					else if(es3==3'b010)
						es3=kare3;
					else if(es3==3'b011)
						es3=kare4;
					else if(es3==3'b100)
						es3=kare5;
					else if(es3==3'b101)
						es3=kare6;
					else if(es3==3'b110)
						es3=kare7;
					else if(es3==3'b111)
						es3=kare0;		
				end
			end
			else if(left)begin
				if(mover==1)begin
					mover=2;
					if(es3==3'b000)
						es3=kare7;
					else if(es3==3'b001)
						es3=kare0;
					else if(es3==3'b010)
						es3=kare1;
					else if(es3==3'b011)
						es3=kare2;
					else if(es3==3'b100)
						es3=kare3;
					else if(es3==3'b101)
						es3=kare4;
					else if(es3==3'b110)
						es3=kare5;
					else if(es3==3'b111)
						es3=kare6;
				end
			end
			else
				mover = 1;
			if(secim1==es3 || es1==es3 || secim2==es3 || es2==es3 || secim3==es3)
				mover = 1;
		end
	end


endmodule
		