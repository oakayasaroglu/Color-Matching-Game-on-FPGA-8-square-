module aksiyon(
	input clk25MHz,
	input [2:0] secim1,
	input [2:0] secim2,
	input [2:0]	secim3,
	input [2:0] secim4,
	input	[2:0] es1,
	input	[2:0] es2,
	input [2:0] es3,
	input [3:0] step_2,
	input [2:0] variety1,
	
	output reg [1:0] action0,
	output reg [1:0] action1,
	output reg [1:0] action2,
	output reg [1:0] action3,
	output reg [1:0] action4,
	output reg [1:0] action5,
	output reg [1:0] action6,
	output reg [1:0] action7,
	output reg winscreen
    );
	
	
	initial begin
		action0 <= 2'b00;
		action1 <= 2'b00;
		action2 <= 2'b00;
		action3 <= 2'b00;
		action4 <= 2'b00;
		action5 <= 2'b00;
		action6 <= 2'b00;
		action7 <= 2'b00;
		
		winscreen<=0;
	end
	
	always@(posedge clk25MHz)begin
		if(step_2==4'b0000)begin
			if(secim1==3'b000)begin
				action0 <= 2'b01;
				action1 <= 2'b00;
				action2 <= 2'b00;
				action3 <= 2'b00;
				action4 <= 2'b00;
				action5 <= 2'b00;
				action6 <= 2'b00;
				action7 <= 2'b00;
			end
			else if(secim1==3'b001)begin
				action0 <= 2'b00;
				action1 <= 2'b01;
				action2 <= 2'b00;
				action3 <= 2'b00;
				action4 <= 2'b00;
				action5 <= 2'b00;
				action6 <= 2'b00;
				action7 <= 2'b00;
			end
			else if(secim1==3'b010)begin
				action0 <= 2'b00;
				action1 <= 2'b00;
				action2 <= 2'b01;
				action3 <= 2'b00;
				action4 <= 2'b00;
				action5 <= 2'b00;
				action6 <= 2'b00;
				action7 <= 2'b00;
			end
			else if(secim1==3'b011)begin
				action0 <= 2'b00;
				action1 <= 2'b00;
				action2 <= 2'b00;
				action3 <= 2'b01;
				action4 <= 2'b00;
				action5 <= 2'b00;
				action6 <= 2'b00;
				action7 <= 2'b00;
			end
			else if(secim1==3'b100)begin
				action0 <= 2'b00;
				action1 <= 2'b00;
				action2 <= 2'b00;
				action3 <= 2'b00;
				action4 <= 2'b01;
				action5 <= 2'b00;
				action6 <= 2'b00;
				action7 <= 2'b00;
			end
			else if(secim1==3'b101)begin
				action0 <= 2'b00;
				action1 <= 2'b00;
				action2 <= 2'b00;
				action3 <= 2'b00;
				action4 <= 2'b00;
				action5 <= 2'b01;
				action6 <= 2'b00;
				action7 <= 2'b00;
			end
			else if(secim1==3'b110)begin
				action0 <= 2'b00;
				action1 <= 2'b00;
				action2 <= 2'b00;
				action3 <= 2'b00;
				action4 <= 2'b00;
				action5 <= 2'b00;
				action6 <= 2'b01;
				action7 <= 2'b00;
			end
			else if(secim1==3'b111)begin
				action0 <= 2'b00;
				action1 <= 2'b00;
				action2 <= 2'b00;
				action3 <= 2'b00;
				action4 <= 2'b00;
				action5 <= 2'b00;
				action6 <= 2'b00;
				action7 <= 2'b01;
			end
		end
		else if(step_2<=4'b0001)begin
			if(secim1==3'b000)
				action0<=2'b10;
			else if(es1==3'b000)
				action0<=2'b01;		
			else
				action0<=2'b00;
				
			if(secim1==3'b001)
				action1<=2'b10;
			else if(es1==3'b001)
				action1<=2'b01;		
			else
				action1<=2'b00;
			
			if(secim1==3'b010)
				action2<=2'b10;
			else if(es1==3'b010)
				action2<=2'b01;		
			else
				action2<=2'b00;
			
			if(secim1==3'b011)
				action3<=2'b10;
			else if(es1==3'b011)
				action3<=2'b01;		
			else
				action3<=2'b00;
				
			if(secim1==3'b100)
				action4<=2'b10;
			else if(es1==3'b100)
				action4<=2'b01;		
			else
				action4<=2'b00;
			
			if(secim1==3'b101)
				action5<=2'b10;
			else if(es1==3'b101)
				action5<=2'b01;		
			else
				action5<=2'b00;
				
			if(secim1==3'b110)
				action6<=2'b10;
			else if(es1==3'b110)
				action6<=2'b01;		
			else
				action6<=2'b00;
				
			if(secim1==3'b111)
				action7<=2'b10;
			else if(es1==3'b111)
				action7<=2'b01;		
			else
				action7<=2'b00;
			
		end
		else if(step_2==4'b0010)begin
			if(es1==3'b000)
				action0<=2'b10;
			else if(es1==3'b001)
				action1<=2'b10;
			else if(es1==3'b010)
				action2<=2'b10;
			else if(es1==3'b011)
				action3<=2'b10;
			else if(es1==3'b100)
				action4<=2'b10;
			else if(es1==3'b101)
				action5<=2'b10;
			else if(es1==3'b110)
				action6<=2'b10;
			else if(es1==3'b111)
				action7<=2'b10;
			end
		else if(step_2==4'b0011)begin
			if(secim2==3'b000)
				action0<=2'b01;
			else if(secim1==3'b000 || es1==3'b000)
				action0<=2'b11;
			else 
				action0<=2'b00;
			if(secim2==3'b001)
				action1<=2'b01;
			else if(secim1==3'b001 || es1==3'b001)
				action1<=2'b11;
			else 
				action1<=2'b00;
			if(secim2==3'b010)
				action2<=2'b01;
			else if(secim1==3'b010 || es1==3'b010)
				action2<=2'b11;
			else 
				action2<=2'b00;
			if(secim2==3'b011)
				action3<=2'b01;
			else if(secim1==3'b011 || es1==3'b011)
				action3<=2'b11;
			else 
				action3<=2'b00;
			if(secim2==3'b100)
				action4<=2'b01;
			else if(secim1==3'b100 || es1==3'b100)
				action4<=2'b11;
			else 
				action4<=2'b00;
			if(secim2==3'b101)
				action5<=2'b01;
			else if(secim1==3'b101 || es1==3'b101)
				action5<=2'b11;
			else 
				action5<=2'b00;
			if(secim2==3'b110)
				action6<=2'b01;
			else if(secim1==3'b110 || es1==3'b110)
				action6<=2'b11;
			else 
				action6<=2'b00;
			if(secim2==3'b111)
				action7<=2'b01;
			else if(secim1==3'b111 || es1==3'b111)
				action7<=2'b11;
			else 
				action7<=2'b00;
			end
			else if(step_2==4'b0100)begin
				if(secim2==3'b000)
					action0<=2'b10;
				else if(secim1==3'b000 || es1==3'b000)
					action0<=2'b11;
				else if(es2==3'b000)
					action0<=2'b01;
				else 
					action0<=2'b00;
					
				if(secim2==3'b001)
					action1<=2'b10;
				else if(secim1==3'b001 || es1==3'b001)
					action1<=2'b11;
				else if(es2==3'b001)
					action1<=2'b01;
				else 
					action1<=2'b00;
					
				if(secim2==3'b010)
					action2<=2'b10;
				else if(secim1==3'b010 || es1==3'b010)
					action2<=2'b11;
				else if(es2==3'b010)
					action2<=2'b01;
				else 
					action2<=2'b00;
					
				if(secim2==3'b011)
					action3<=2'b10;
				else if(secim1==3'b011 || es1==3'b011)
					action3<=2'b11;
				else if(es2==3'b011)
					action3<=2'b01;
				else 
					action3<=2'b00;
					
				if(secim2==3'b100)
					action4<=2'b10;
				else if(secim1==3'b100 || es1==3'b100)
					action4<=2'b11;
				else if(es2==3'b100)
					action4<=2'b01;
				else 
					action4<=2'b00;
					
				if(secim2==3'b101)
					action5<=2'b10;
				else if(secim1==3'b101 || es1==3'b101)
					action5<=2'b11;
				else if(es2==3'b101)
					action5<=2'b01;
				else 
					action5<=2'b00;
				
				if(secim2==3'b110)
					action6<=2'b10;
				else if(secim1==3'b110 || es1==3'b110)
					action6<=2'b11;
				else if(es2==3'b110)
					action6<=2'b01;
				else 
					action6<=2'b00;
					
				if(secim2==3'b111)
					action7<=2'b10;
				else if(secim1==3'b111 || es1==3'b111)
					action7<=2'b11;
				else if(es2==3'b111)
					action7<=2'b01;
				else 
					action7<=2'b00;				
			end
			else if(step_2==4'b0101)begin
				if(secim1==3'b000 || es1==3'b000)
					action0<=2'b11;
				else if(secim2==3'b000 || es2==3'b000)
					action0<=2'b10;
				else 
					action0<=2'b00;
				
				if(secim1==3'b001 || es1==3'b001)
					action1<=2'b11;
				else if(secim2==3'b001 || es2==3'b001)
					action1<=2'b10;
				else 
					action1<=2'b00;
					
				if(secim1==3'b010 || es1==3'b010)
					action2<=2'b11;
				else if(secim2==3'b010 || es2==3'b010)
					action2<=2'b10;
				else 
					action2<=2'b00;	
					
				if(secim1==3'b011 || es1==3'b011)
					action3<=2'b11;
				else if(secim2==3'b011 || es2==3'b011)
					action3<=2'b10;
				else 
					action3<=2'b00;

				if(secim1==3'b100 || es1==3'b100)
					action4<=2'b11;
				else if(secim2==3'b100 || es2==3'b100)
					action4<=2'b10;
				else 
					action4<=2'b00;
					
				if(secim1==3'b101 || es1==3'b101)
					action5<=2'b11;
				else if(secim2==3'b101 || es2==3'b101)
					action5<=2'b10;
				else 
					action5<=2'b00;
					
				if(secim1==3'b110 || es1==3'b110)
					action6<=2'b11;
				else if(secim2==3'b110 || es2==3'b110)
					action6<=2'b10;
				else 
					action6<=2'b00;
					
				if(secim1==3'b111 || es1==3'b111)
					action7<=2'b11;
				else if(secim2==3'b111 || es2==3'b111)
					action7<=2'b10;
				else 
					action7<=2'b00;						
				end
				else if(step_2==4'b0110)begin
					if(secim1==3'b000 || es1==3'b000 || secim2==3'b000 || es2==3'b000 )
						action0<=2'b11;
					else if(secim3==3'b000)
						action0<=2'b01;
					else 
						action0<=2'b00;
						
					if(secim1==3'b001 || es1==3'b001 || secim2==3'b001 || es2==3'b001 )
						action1<=2'b11;
					else if(secim3==3'b001)
						action1<=2'b01;
					else 
						action1<=2'b00;

					if(secim1==3'b010 || es1==3'b010 || secim2==3'b010 || es2==3'b010 )
						action2<=2'b11;
					else if(secim3==3'b010)
						action2<=2'b01;
					else 
						action2<=2'b00;
						
					if(secim1==3'b011 || es1==3'b011 || secim2==3'b011 || es2==3'b011 )
						action3<=2'b11;
					else if(secim3==3'b011)
						action3<=2'b01;
					else 
						action3<=2'b00;	
						
					if(secim1==3'b100 || es1==3'b100 || secim2==3'b100 || es2==3'b100 )
						action4<=2'b11;
					else if(secim3==3'b100)
						action4<=2'b01;
					else 
						action4<=2'b00;

					if(secim1==3'b101 || es1==3'b101 || secim2==3'b101 || es2==3'b101 )
						action5<=2'b11;
					else if(secim3==3'b101)
						action5<=2'b01;
					else 
						action5<=2'b00;
						
					if(secim1==3'b110 || es1==3'b110 || secim2==3'b110 || es2==3'b110 )
						action6<=2'b11;
					else if(secim3==3'b110)
						action6<=2'b01;
					else 
						action6<=2'b00;
						
					if(secim1==3'b111 || es1==3'b111 || secim2==3'b111 || es2==3'b111 )
						action7<=2'b11;
					else if(secim3==3'b111)
						action7<=2'b01;
					else 
						action7<=2'b00;
				end
				else if(step_2==4'b0111)begin
					if(secim1==3'b000 || es1==3'b000 || secim2==3'b000 || es2==3'b000 )
						action0<=2'b11;
					else if(secim3==3'b000)
						action0<=2'b10;
					else if(es3==3'b000)
						action0<=2'b01;
					else 
						action0<=2'b00;
						
					if(secim1==3'b001 || es1==3'b001 || secim2==3'b001 || es2==3'b001 )
						action1<=2'b11;
					else if(secim3==3'b001)
						action1<=2'b10;
					else if(es3==3'b001)
						action1<=2'b01;
					else 
						action1<=2'b00;

					if(secim1==3'b010 || es1==3'b010 || secim2==3'b010 || es2==3'b010 )
						action2<=2'b11;
					else if(secim3==3'b010)
						action2<=2'b10;
					else if(es3==3'b010)
						action2<=2'b01;
					else 
						action2<=2'b00;

					if(secim1==3'b011 || es1==3'b011 || secim2==3'b011 || es2==3'b011 )
						action3<=2'b11;
					else if(secim3==3'b011)
						action3<=2'b10;
					else if(es3==3'b011)
						action3<=2'b01;
					else 
						action3<=2'b00;

					if(secim1==3'b100 || es1==3'b100 || secim2==3'b100 || es2==3'b100 )
						action4<=2'b11;
					else if(secim3==3'b100)
						action4<=2'b10;
					else if(es3==3'b100)
						action4<=2'b01;
					else 
						action4<=2'b00;
						
					if(secim1==3'b101 || es1==3'b101 || secim2==3'b101 || es2==3'b101 )
						action5<=2'b11;
					else if(secim3==3'b101)
						action5<=2'b10;
					else if(es3==3'b101)
						action5<=2'b01;
					else 
						action5<=2'b00;

					if(secim1==3'b110 || es1==3'b110 || secim2==3'b110 || es2==3'b110 )
						action6<=2'b11;
					else if(secim3==3'b110)
						action6<=2'b10;
					else if(es3==3'b110)
						action6<=2'b01;
					else 
						action6<=2'b00;
							
					if(secim1==3'b111 || es1==3'b111 || secim2==3'b111 || es2==3'b111 )
						action7<=2'b11;
					else if(secim3==3'b111)
						action7<=2'b10;
					else if(es3==3'b111)
						action7<=2'b01;
					else 
						action7<=2'b00;		
				end
				else if(step_2==4'b1000)begin
					if(secim1==3'b000 || es1==3'b000 || secim2==3'b000 || es2==3'b000 )
						action0<=2'b11;
					else if(secim3==3'b000 || es3==3'b000)
						action0<=2'b10;
					else 
						action0<=2'b00;
						
					if(secim1==3'b001 || es1==3'b001 || secim2==3'b001 || es2==3'b001 )
						action1<=2'b11;
					else if(secim3==3'b001 || es3==3'b001)
						action1<=2'b10;
					else 
						action1<=2'b00;

					if(secim1==3'b010 || es1==3'b010 || secim2==3'b010 || es2==3'b010 )
						action2<=2'b11;
					else if(secim3==3'b010 || es3==3'b010)
						action2<=2'b10;
					else 
						action2<=2'b00;

					if(secim1==3'b011 || es1==3'b011 || secim2==3'b011 || es2==3'b011 )
						action3<=2'b11;
					else if(secim3==3'b011 || es3==3'b011)
						action3<=2'b10;
					else 
						action3<=2'b00;

					if(secim1==3'b100 || es1==3'b100 || secim2==3'b100 || es2==3'b100 )
						action4<=2'b11;
					else if(secim3==3'b100 || es3==3'b100)
						action4<=2'b10;
					else 
						action4<=2'b00;
						
					if(secim1==3'b101 || es1==3'b101 || secim2==3'b101 || es2==3'b101 )
						action5<=2'b11;
					else if(secim3==3'b101 || es3==3'b101)
						action5<=2'b10;
					else 
						action5<=2'b00;	
						
					if(secim1==3'b110 || es1==3'b110 || secim2==3'b110 || es2==3'b110 )
						action6<=2'b11;
					else if(secim3==3'b110 || es3==3'b110)
						action6<=2'b10;
					else 
						action6<=2'b00;	

					if(secim1==3'b111 || es1==3'b111 || secim2==3'b111 || es2==3'b111 )
						action7<=2'b11;
					else if(secim3==3'b111 || es3==3'b111)
						action7<=2'b10;
					else 
						action7<=2'b00;			
												
				end
				else if(step_2==4'b1001)begin
					if(secim1==3'b000 || es1==3'b000 || secim2==3'b000 || es2==3'b000 || secim3==3'b000 || es3==3'b000)
						action0<=2'b11;
					else if(secim4==3'b000)
						action0<=2'b01;
					else 
						action0<=2'b00;
						
					if(secim1==3'b001 || es1==3'b001 || secim2==3'b001 || es2==3'b001 || secim3==3'b001 || es3==3'b001)
						action1<=2'b11;
					else if(secim4==3'b001)
						action1<=2'b01;
					else 
						action1<=2'b00;
						
					if(secim1==3'b010 || es1==3'b010 || secim2==3'b010 || es2==3'b010 || secim3==3'b010 || es3==3'b010)
						action2<=2'b11;
					else if(secim4==3'b010)
						action2<=2'b01;
					else 
						action2<=2'b00;	
						
					if(secim1==3'b011 || es1==3'b011 || secim2==3'b011 || es2==3'b011 || secim3==3'b011 || es3==3'b011)
						action3<=2'b11;
					else if(secim4==3'b011)
						action3<=2'b01;
					else 
						action3<=2'b00;
						
					if(secim1==3'b100 || es1==3'b100 || secim2==3'b100 || es2==3'b100 || secim3==3'b100 || es3==3'b100)
						action4<=2'b11;
					else if(secim4==3'b100)
						action4<=2'b01;
					else 
						action4<=2'b00;
						
						
					if(secim1==3'b101 || es1==3'b101 || secim2==3'b101 || es2==3'b101 || secim3==3'b101 || es3==3'b101)
						action5<=2'b11;
					else if(secim4==3'b101)
						action5<=2'b01;
					else 
						action5<=2'b00;
									
					if(secim1==3'b110 || es1==3'b110 || secim2==3'b110 || es2==3'b110 || secim3==3'b110 || es3==3'b110)
						action6<=2'b11;
					else if(secim4==3'b110)
						action6<=2'b01;
					else 
						action6<=2'b00;
						
					if(secim1==3'b111 || es1==3'b111 || secim2==3'b111 || es2==3'b111 || secim3==3'b111 || es3==3'b111)
						action7<=2'b11;
					else if(secim4==3'b111)
						action7<=2'b01;
					else 
						action7<=2'b00;	
						
				end	
				else if(step_2==4'b1010)begin
					if(secim1==3'b000 || es1==3'b000 || secim2==3'b000 || es2==3'b000 || secim3==3'b000 || es3==3'b000)
						action0<=2'b11;
					else if(secim4==3'b000)
						action0<=2'b10;
					else 
						action0<=2'b01;
						
					if(secim1==3'b001 || es1==3'b001 || secim2==3'b001 || es2==3'b001 || secim3==3'b001 || es3==3'b001)
						action1<=2'b11;
					else if(secim4==3'b001)
						action1<=2'b10;
					else 
						action1<=2'b01;
						
					if(secim1==3'b010 || es1==3'b010 || secim2==3'b010 || es2==3'b010 || secim3==3'b010 || es3==3'b010)
						action2<=2'b11;
					else if(secim4==3'b010)
						action2<=2'b10;
					else 
						action2<=2'b01;	
						
					if(secim1==3'b011 || es1==3'b011 || secim2==3'b011 || es2==3'b011 || secim3==3'b011 || es3==3'b011)
						action3<=2'b11;
					else if(secim4==3'b011)
						action3<=2'b10;
					else 
						action3<=2'b01;
						
					if(secim1==3'b100 || es1==3'b100 || secim2==3'b100 || es2==3'b100 || secim3==3'b100 || es3==3'b100)
						action4<=2'b11;
					else if(secim4==3'b100)
						action4<=2'b10;
					else 
						action4<=2'b01;
						
						
					if(secim1==3'b101 || es1==3'b101 || secim2==3'b101 || es2==3'b101 || secim3==3'b101 || es3==3'b101)
						action5<=2'b11;
					else if(secim4==3'b101)
						action5<=2'b10;
					else 
						action5<=2'b01;
									
					if(secim1==3'b110 || es1==3'b110 || secim2==3'b110 || es2==3'b110 || secim3==3'b110 || es3==3'b110)
						action6<=2'b11;
					else if(secim4==3'b110)
						action6<=2'b10;
					else 
						action6<=2'b01;
						
					if(secim1==3'b111 || es1==3'b111 || secim2==3'b111 || es2==3'b111 || secim3==3'b111 || es3==3'b111)
						action7<=2'b11;
					else if(secim4==3'b111)
						action7<=2'b10;
					else 
						action7<=2'b01;	
						
				end	
				else if(step_2==4'b1011)begin
					if(secim1==3'b000 || es1==3'b000 || secim2==3'b000 || es2==3'b000 || secim3==3'b000 || es3==3'b000)
						action0<=2'b11;
					else if(secim4==3'b000)
						action0<=2'b10;
					else 
						action0<=2'b10;
						
					if(secim1==3'b001 || es1==3'b001 || secim2==3'b001 || es2==3'b001 || secim3==3'b001 || es3==3'b001)
						action1<=2'b11;
					else if(secim4==3'b001)
						action1<=2'b10;
					else 
						action1<=2'b10;
						
					if(secim1==3'b010 || es1==3'b010 || secim2==3'b010 || es2==3'b010 || secim3==3'b010 || es3==3'b010)
						action2<=2'b11;
					else if(secim4==3'b010)
						action2<=2'b10;
					else 
						action2<=2'b10;	
						
					if(secim1==3'b011 || es1==3'b011 || secim2==3'b011 || es2==3'b011 || secim3==3'b011 || es3==3'b011)
						action3<=2'b11;
					else if(secim4==3'b011)
						action3<=2'b10;
					else 
						action3<=2'b10;
						
					if(secim1==3'b100 || es1==3'b100 || secim2==3'b100 || es2==3'b100 || secim3==3'b100 || es3==3'b100)
						action4<=2'b11;
					else if(secim4==3'b100)
						action4<=2'b10;
					else 
						action4<=2'b10;
						
						
					if(secim1==3'b101 || es1==3'b101 || secim2==3'b101 || es2==3'b101 || secim3==3'b101 || es3==3'b101)
						action5<=2'b11;
					else if(secim4==3'b101)
						action5<=2'b10;
					else 
						action5<=2'b10;
									
					if(secim1==3'b110 || es1==3'b110 || secim2==3'b110 || es2==3'b110 || secim3==3'b110 || es3==3'b110)
						action6<=2'b11;
					else if(secim4==3'b110)
						action6<=2'b10;
					else 
						action6<=2'b10;
						
					if(secim1==3'b111 || es1==3'b111 || secim2==3'b111 || es2==3'b111 || secim3==3'b111 || es3==3'b111)
						action7<=2'b11;
					else if(secim4==3'b111)
						action7<=2'b10;
					else 
						action7<=2'b10;	
						
				end
				else if(step_2==4'b1100)
					winscreen=1;


			
			
		
	end// always




endmodule
