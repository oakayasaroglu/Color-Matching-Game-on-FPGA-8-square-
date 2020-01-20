module step1(
	input clk25MHz,
	input up,
	input down,
	input right,
	input left,
	input [3:0] step_2,
	input [2:0] secim1,
	output reg [2:0] es1
    );
	 
	 parameter [2:0] kare0=3'b000, kare1=3'b001, kare2=3'b010, kare3=3'b011, kare4=3'b100, kare5=3'b101, kare6=3'b110, kare7=3'b111;
	 integer mover=0;
	initial 
		es1<=kare0;
	
	always@(posedge clk25MHz)begin
		if(step_2==4'b0001)begin
			if(up==0 && down==0 && right==0 && left==0 && (secim1==es1))
				es1=kare1;
			if(up)begin
				if(mover==0)begin
					mover=1;
					if(es1==3'b000)
						es1=kare5;	
					else if(es1==3'b001)
						es1=kare6;
					else if(es1==3'b010)
						es1=kare7;
					else if(es1==3'b011)
						es1=kare4;
					else if(es1==3'b100)
						es1=kare0;
					else if(es1==3'b101)
						es1=kare1;
					else if(es1==3'b110)
						es1=kare2;
					else if(es1==3'b111)
						es1=kare3;
				end
			end
			else if(down)begin
				if(mover==0)begin
					mover=1;
					if(es1==3'b000)
						es1=kare4;	
					else if(es1==3'b001)
						es1=kare5;
					else if(es1==3'b010)
						es1=kare6;
					else if(es1==3'b011)
						es1=kare7;
					else if(es1==3'b100)
						es1=kare1;
					else if(es1==3'b101)
						es1=kare2;
					else if(es1==3'b110)
						es1=kare3;
					else if(es1==3'b111)
						es1=kare0;
				end
			end
			else if(right)begin
				if(mover==0)begin
					mover=1;
					if(es1==3'b000)
						es1=kare1;	
					else if(es1==3'b001)
						es1=kare2;
					else if(es1==3'b010)
						es1=kare3;
					else if(es1==3'b011)
						es1=kare4;
					else if(es1==3'b100)
						es1=kare5;
					else if(es1==3'b101)
						es1=kare6;
					else if(es1==3'b110)
						es1=kare7;
					else if(es1==3'b111)
						es1=kare0;
				end
			end
			else if(left)begin
				if(mover==0)begin
					mover=1;
					if(es1==3'b000)
						es1=kare7;	
					else if(es1==3'b001)
						es1=kare0;
					else if(es1==3'b010)
						es1=kare1;
					else if(es1==3'b011)
						es1=kare2;
					else if(es1==3'b100)
						es1=kare3;
					else if(es1==3'b101)
						es1=kare4;
					else if(es1==3'b110)
						es1=kare5;
					else if(es1==3'b111)
						es1=kare6;
				end
			end
			else 
				mover=0;
			if (secim1==es1)
				mover=0;
		end
	end

endmodule
