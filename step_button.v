module step_button(
	input button,
	input [2:0] secim1,
	input [2:0] secim2,
	input [2:0] secim3,
	input [2:0] es1,
	input [2:0] es2,
	input [2:0] es3,
	input rst,
	output reg [3:0] step_2
    );
	 
	 initial 
		step_2<=4'b0000;
	 
	 
	 always@(posedge button or posedge rst)begin
		if(rst)
			step_2<=4'b0000;
		else begin
			if(step_2==4'b0000)
				step_2<=4'b0001;
			else if(step_2==4'b0001)
				step_2<=4'b0010;
			else if(step_2==4'b0010)begin
				if((secim1==3'b000 && es1==3'b110) || (secim1==3'b110 && es1==3'b000) || (secim1==3'b001 && es1==3'b100) || (secim1==3'b100 && es1==3'b001) || (secim1==3'b010 && es1==3'b011) || (secim1==3'b011 && es1==3'b010) || (secim1==3'b101 && es1==3'b111) || (secim1==3'b111 && es1==3'b101) ) 
					step_2<=4'b0011;
				else 
					step_2<=4'b0000;
			end
			else if(step_2==4'b0011)
				step_2<=4'b0100;
			else if(step_2==4'b0100)
				step_2<=4'b0101;
			else if(step_2==4'b0101)begin
				if((secim2==3'b000 && es2==3'b110) || (secim2==3'b110 && es2==3'b000) || (secim2==3'b001 && es2==3'b100) || (secim2==3'b100 && es2==3'b001) || (secim2==3'b010 && es2==3'b011) || (secim2==3'b011 && es2==3'b010) || (secim2==3'b101 && es2==3'b111) || (secim2==3'b111 && es2==3'b101) ) 
					step_2<=4'b0110;
				else 
					step_2<=4'b0011;
			end		
			else if(step_2==4'b0110)
				step_2<=4'b0111;
			else if(step_2==4'b0111)
				step_2<=4'b1000;	
			else if(step_2==4'b1000)begin
				if((secim3==3'b000 && es3==3'b110) || (secim3==3'b110 && es3==3'b000) || (secim3==3'b001 && es3==3'b100) || (secim3==3'b100 && es3==3'b001) || (secim3==3'b010 && es3==3'b011) || (secim3==3'b011 && es3==3'b010) || (secim3==3'b101 && es3==3'b111) || (secim3==3'b111 && es3==3'b101) ) 
					step_2<=4'b1001;
				else 
					step_2<=4'b0110;
			end
			else if(step_2==4'b1001)
				step_2<=4'b1010;	
			else if(step_2==4'b1010)
				step_2<=4'b1011;
			else if(step_2==4'b1011)
				step_2<=4'b1100;
		end
	
	 end


endmodule
