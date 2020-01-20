
module first_step(	input clk25MHz,
							input rst,
							input [3:0] switches,					
							input select_button,
							
							output reg [1:0] sifirla,
							input enable,	
							output reg [2:0] variety,
							output reg [2:0] match,
							
							output reg [1:0] actionA,
							output reg [1:0] actionB,
							output reg [1:0] actionC,
							output reg [1:0] actionD
    );
	 

	
	reg [2:0] squares;
	parameter [2:0] S0=3'b000, S1=3'b001, S2=3'b010, S3=3'b011, S4=3'b100, S5=3'b101, S6=3'b110;
	

	
	initial begin
	 sifirla <=2'b00;
	 squares <= S0;
	 variety <= 3'b000;
	 match <= 3'b000;
	 
	 actionA <= 2'b01;
	 actionB <= 2'b00;
	 actionC <= 2'b00;
	 actionD <= 2'b00;
	 
	 //enable <= 1;
	 end

			
	always@(posedge enable) begin
			if(switches==4'b1000)begin               //// switch reaksiyonlarý baþlangýcý	
				if(variety==3'b000)begin
					if(actionD==2'b10 || actionD==2'b11)
						variety<=3'b001;
					else if((actionD==2'b10 || actionD==2'b11) && (actionB==2'b10 || actionB==2'b11))
						variety <= 3'b010;
					else
						variety <= 3'b011;
				end
				else if(variety==3'b001)begin
					if(actionC==2'b10 || actionC==2'b11)
						variety<=3'b000;
					else if((actionC==2'b10 || actionC==2'b11) && (actionA==2'b10 || actionA==2'b11))
						variety <= 3'b011;
					else
						variety <= 3'b010;
				end
				else if(variety==3'b010)begin                      //üste çýkma kod (a veya b den kaçýþ)
					if(actionA==2'b10 || actionA==2'b11)
						variety<=3'b001;
					else
					variety<=3'b000;
				end
				else if(variety==3'b011)begin
					if(actionB==2'b10 || actionB==2'b11)
						variety<=3'b000;
					else
					variety<=3'b001;
				end
					
			end
			///////////
			if(switches==4'b0100)begin
				if(variety==3'b010)begin
					if(actionB==2'b10 || actionB==2'b11)
						variety<=3'b011;
					else if((actionB==2'b10 || actionB==2'b11) && (actionD==2'b10 || actionD==2'b11))
						variety <= 3'b011;
					else
						variety <= 3'b011;
				end
				if(variety==3'b011)begin
					if(actionA==2'b10 || actionA==2'b11)
						variety<=3'b010;
					else if((actionA==2'b10 || actionA==2'b11) && (actionB==2'b10 || actionB==2'b11))
						variety <= 3'b001;
					else
						variety <= 3'b000;
				end
				if(variety==3'b000)begin
					if(actionC==2'b10 || actionC==2'b11)
						variety<=3'b011;
					else
						variety <= 3'b010;
				end
				if(variety==3'b001)begin
					if(actionD==2'b10 || actionD==2'b11)
						variety<=3'b010;
					else
						variety <= 3'b011;
				end
			end
			///////////
			if(switches==4'b0010)begin
				if(variety==3'b000)begin
					if(actionB==2'b10 || actionB==2'b11)
						variety<=3'b010;
					else if((actionB==2'b10 || actionB==2'b11) && (actionC==2'b10 || actionC==2'b11))
						variety <= 3'b011;
					else
						variety <= 3'b001;
				end
				if(variety==3'b001)begin
					if(actionC==2'b10 || actionC==2'b11)
						variety<=3'b011;
					else if((actionC==2'b10 || actionC==2'b11) && (actionD==2'b10 || actionD==2'b11))
						variety <= 3'b000;
					else
						variety <= 3'b010;
				end	
				if(variety==3'b010)begin
					if(actionD==2'b10 || actionD==2'b11)
						variety<=3'b000;
					else if((actionD==2'b10 || actionD==2'b11) && (actionA==2'b10 || actionA==2'b11))
						variety <= 3'b001;
					else
						variety <= 3'b011;
				end
				
				
				if(variety==3'b011)begin
					if(actionA==2'b10 || actionA==2'b11)
						variety<=3'b001;
					else if((actionA==2'b10 || actionA==2'b11) && (actionB==2'b10 || actionB==2'b11))
						variety <= 3'b010;
					else
						variety <= 3'b000;
				end
			
			
			end
			////////////
			if(switches==4'b0001)begin
				if(variety==3'b000)begin
					if(actionD==2'b10 || actionD==2'b11)
						variety<=3'b010;
					else if((actionD==2'b10 || actionD==2'b11) && (actionC==2'b10 || actionC==2'b11))
						variety <= 3'b001;
					else
						variety <= 3'b011;
				end
					
				if(variety==3'b001)begin
					if(actionA==2'b10 || actionA==2'b11)
						variety<=3'b011;
					else if((actionA==2'b10 || actionA==2'b11) && (actionD==2'b10 || actionD==2'b11))
						variety <= 3'b010;
					else
						variety <= 3'b000;
				end
					
				if(variety==3'b010)begin
					if(actionB==2'b10 || actionB==2'b11)
						variety<=3'b000;
					else if((actionB==2'b10 || actionB==2'b11) && (actionA==2'b10 || actionA==2'b11))
						variety <= 3'b011;
					else
						variety <= 3'b001;
				end
					
				if(variety==3'b011)begin
					if(actionC==2'b10 || actionC==2'b11)
						variety<=3'b001;
					else if((actionC==2'b10 || actionC==2'b11) && (actionB==2'b10 || actionB==2'b11))
						variety <= 3'b000;
					else
						variety <= 3'b010;
				end
					
			end                                             ///////// switch reaksiyonlarý bitimi
			
			//else if(select_button == 0) begin
	/*			if (variety==3'b000)
					actionA<=2'b01;
				if (variety==3'b001)
					actionB<=2'b01;
				if (variety==3'b010)
					actionC<=2'b01;
				if (variety==3'b011)
					actionD<=2'b01;*/
		//	end
				
				
				/*if (variety!=3'b000)
					actionA<=2'b00;
				if (variety!=3'b001)
					actionB<=2'b00;
				if (variety!=3'b010)
					actionC<=2'b00;
				if (variety!=3'b011)
					actionD<=2'b00;*/
	end
			
			
	 always@(posedge enable)begin
		if( switches==4'b1000)begin
			if(variety == 3'b011)begin
					if(actionB != 2'b10 || actionB != 2'b11) 
						actionB = 2'b00;
					else if(actionC != 2'b10 || actionC != 2'b11) 
						actionC = 2'b00;
					else if(actionA != 2'b10 || actionA != 2'b11) 
						actionA = 2'b00;
					actionD = 2'b01;
			end
			else if (variety == 3'b001)begin
					if(actionD != 2'b10 || actionD != 2'b11) 
						actionD = 2'b00;
					else if(actionC != 2'b10 || actionC != 2'b11) 
						actionC = 2'b00;
					else if(actionA != 2'b10 || actionA != 2'b11) 
						actionA = 2'b00;
					actionB = 2'b01;
			end
			else if (variety == 3'b010)begin
					if(actionD != 2'b10 || actionD != 2'b11) 
						actionD = 2'b00;
					else if(actionB != 2'b10 || actionB != 2'b11) 
						actionB = 2'b00;
					else if(actionA != 2'b10 || actionA != 2'b11) 
						actionA = 2'b00;
					actionC = 2'b01;
			end
			else if (variety == 3'b000)begin
					if(actionD != 2'b10 || actionD != 2'b11) 
						actionD = 2'b00;
					else if(actionC != 2'b10 || actionC != 2'b11) 
						actionC = 2'b00;
					else if(actionB != 2'b10 || actionB != 2'b11) 
						actionB = 2'b00;
					actionA = 2'b01;
			end
		end// switch 1000
		else if( switches==4'b0100)begin
			if(variety == 3'b011)begin
					if(actionB != 2'b10 || actionB != 2'b11) 
						actionB = 2'b00;
					else if(actionC != 2'b10 || actionC != 2'b11) 
						actionC = 2'b00;
					else if(actionA != 2'b10 || actionA != 2'b11) 
						actionA = 2'b00;
					actionD = 2'b01;
			end
			else if (variety == 3'b001)begin
					if(actionD != 2'b10 || actionD != 2'b11) 
						actionD = 2'b00;
					else if(actionC != 2'b10 || actionC != 2'b11) 
						actionC = 2'b00;
					else if(actionA != 2'b10 || actionA != 2'b11) 
						actionA = 2'b00;
					actionB = 2'b01;
			end
			else if (variety == 3'b010)begin
					if(actionD != 2'b10 || actionD != 2'b11) 
						actionD = 2'b00;
					else if (actionB != 2'b10 || actionB != 2'b11) 
						actionB = 2'b00;
					else if (actionA != 2'b10 || actionA != 2'b11) 
						actionA = 2'b00;
					actionC = 2'b01;
			end
			else if (variety == 3'b000)begin
					if(actionD != 2'b10 || actionD != 2'b11) 
						actionD = 2'b00;
					else if(actionC != 2'b10 || actionC != 2'b11) 
						actionC = 2'b00;
					else if (actionB != 2'b10 || actionB != 2'b11) 
						actionB = 2'b00;
					actionA = 2'b01;
			end
	 end// switch 0100 endi
	end// always endi
endmodule
