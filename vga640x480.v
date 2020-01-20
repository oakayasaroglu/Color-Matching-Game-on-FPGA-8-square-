module vga640x480( 	input clk25MHz,
							input rst,
							input [1:0] action0,
							input [1:0] action1,
							input [1:0] action2,
							input [1:0] action3,
							input [1:0] action4,
							input [1:0] action5,
							input [1:0] action6,
							input [1:0] action7,
							input winscreen,
							output reg [2:0] red, 
							output reg [2:0] green, 
							output reg [1:0] blue, 
							output hsync, 
							output vsync
																);

	parameter hpulse = 96; 	// hsync pulse length
	parameter vpulse = 2; 	// vsync pulse length
	parameter hbp = 144; 	// end of horizontal back porch //=144
	parameter hfp = 784; 	// beginning of horizontal front porch //=784
	parameter vbp = 31; 		// end of vertical back porch//=31
	parameter vfp = 511; 	// beginning of vertical front porch//=511
	parameter hPixels = 800;	// horizontal pixels per line = 800
	parameter vLines = 521; 	// vertical lines per frame	= 521
	
	reg [9:0] hc,vc;
	
	assign hsync = (hc < hpulse) ? 0:1;
	assign vsync = (vc < vpulse) ? 0:1;
	
	integer blinking=0;
	
	always @(posedge clk25MHz or posedge rst) begin
		if (rst == 1) begin
			hc <= 0;
			vc <= 0;
		end
		else begin
			if (hc < hPixels - 1)
				hc <= hc + 1;
			else begin
				hc <= 0;
				if (vc < vLines - 1)
					vc <= vc + 1;
				else
					vc <= 0;
			end
		end
	end

	always @(posedge clk25MHz or posedge rst) begin
		if(rst == 1) begin
			red 	<= 3'b000;	
			green <= 3'b000;	
			blue 	<= 2'b00;
		end
		else begin
			if (vc >= vbp && vc < vfp && hc >= hbp && hc < hfp) begin
				if(winscreen==0)begin
					if ((hc >= (hbp+40) && hc < (hbp+120)) && vc >= (vbp+ 72) && vc < (vbp+216)) begin //K
						if(action0==2'b00)begin
							red <= 3'b111;
							green <= 3'b111;
							blue <= 2'b00;
						end
						else if(action0==2'b01)begin
								if(blinking>=0 && blinking<=500000) begin                       // burada sarý rengin yanýp sönmesini saðlayan kod baþlýyor
									red <= 3'b111;
									green <= 3'b111;
									blue <= 2'b00;
								end
							
								else if(blinking>500000 && blinking<=1000000)begin
									red <= 3'b000;
									green <= 3'b000;
									blue <= 2'b00;					
								end
							
								if(blinking==1000000)
									blinking=0;
								else 
									blinking=blinking+1;                                              //burada sarý rengin yanýp sönmesini saðlayan kod bitiyor 
						end
						else if(action0==2'b10)begin
							red <= 3'b111;
							green <= 3'b000;
							blue <= 2'b00;
						end
						else begin
							red <= 3'b000;
							green <= 3'b000;
							blue <= 2'b00;
						end
					end
					else if ((hc >= (hbp+200) && hc < (hbp+280)) && vc >= (vbp+ 72) && vc < (vbp+216)) begin //Y
						if(action1==2'b00)begin
							red <= 3'b111;
							green <= 3'b111;
							blue <= 2'b00;
						end
						else if(action1==2'b01)begin
							if(blinking>=0 && blinking<=500000) begin                       // burada sarý rengin yanýp sönmesini saðlayan kod baþlýyor
										red <= 3'b111;
										green <= 3'b111;
										blue <= 2'b00;
									end
								
									else if(blinking>500000 && blinking<=1000000)begin
										red <= 3'b000;
										green <= 3'b000;
										blue <= 2'b00;					
									end
								
									if(blinking==1000000)
										blinking=0;
									else 
										blinking=blinking+1;                                              //burada sarý rengin yanýp sönmesini saðlayan kod bitiyor 
						end
						else if(action1==2'b10)begin
							red <= 3'b000;
							green <= 3'b111;
							blue <= 2'b00;
						end
						else begin
							red <= 3'b000;
							green <= 3'b000;
							blue <= 2'b00;
						end
					end
					else if ((hc >= (hbp+360) && hc < (hbp+440)) && vc >= (vbp+ 72) && vc < (vbp+216)) begin //M
						if(action2==2'b00)begin
							red <= 3'b111;
							green <= 3'b111;
							blue <= 2'b00;
						end
						else if(action2==2'b01)begin
							if(blinking>=0 && blinking<=500000) begin                       // burada sarý rengin yanýp sönmesini saðlayan kod baþlýyor
										red <= 3'b111;
										green <= 3'b111;
										blue <= 2'b00;
									end
								
									else if(blinking>500000 && blinking<=1000000)begin
										red <= 3'b000;
										green <= 3'b000;
										blue <= 2'b00;					
									end
								
									if(blinking==1000000)
										blinking=0;
									else 
										blinking=blinking+1;                                              //burada sarý rengin yanýp sönmesini saðlayan kod bitiyor 
						end
						else if(action2==2'b10)begin
							red <= 3'b000;
							green <= 3'b000;
							blue <= 2'b11;
						end
						else begin
							red <= 3'b000;
							green <= 3'b000;
							blue <= 2'b00;
						end
					end
					else if ((hc >= (hbp+520) && hc < (hbp+600)) && vc >= (vbp+ 72) && vc < (vbp+216)) begin //M
						if(action3==2'b00)begin
							red <= 3'b111;
							green <= 3'b111;
							blue <= 2'b00;
						end
						else if(action3==2'b01)begin
							if(blinking>=0 && blinking<=500000) begin                       // burada sarý rengin yanýp sönmesini saðlayan kod baþlýyor
										red <= 3'b111;
										green <= 3'b111;
										blue <= 2'b00;
									end
								
									else if(blinking>500000 && blinking<=1000000)begin
										red <= 3'b000;
										green <= 3'b000;
										blue <= 2'b00;					
									end
								
									if(blinking==1000000)
										blinking=0;
									else 
										blinking=blinking+1;                                              //burada sarý rengin yanýp sönmesini saðlayan kod bitiyor 
						end
						else if(action3==2'b10)begin
							red <= 3'b000;
							green <= 3'b000;
							blue <= 2'b11;
						end
						else begin
							red <= 3'b000;
							green <= 3'b000;
							blue <= 2'b00;
						end
					end
					else if ((hc >= (hbp+40) && hc < (hbp+120)) && vc >= (vbp+ 264) && vc < (vbp+408)) begin //Y
						if(action4==2'b00)begin
							red <= 3'b111;
							green <= 3'b111;
							blue <= 2'b00;
						end
						else if(action4==2'b01)begin
							if(blinking>=0 && blinking<=500000) begin                       // burada sarý rengin yanýp sönmesini saðlayan kod baþlýyor
										red <= 3'b111;
										green <= 3'b111;
										blue <= 2'b00;
									end
								
									else if(blinking>500000 && blinking<=1000000)begin
										red <= 3'b000;
										green <= 3'b000;
										blue <= 2'b00;					
									end
								
									if(blinking==1000000)
										blinking=0;
									else 
										blinking=blinking+1;                                              //burada sarý rengin yanýp sönmesini saðlayan kod bitiyor 
						end
						else if(action4==2'b10)begin
							red <= 3'b000;
							green <= 3'b111;
							blue <= 2'b00;
						end
						else begin
							red <= 3'b000;
							green <= 3'b000;
							blue <= 2'b00;
						end
					end
					else if ((hc >= (hbp+200) && hc < (hbp+280)) && vc >= (vbp+ 264) && vc < (vbp+408)) begin //B
						if(action5==2'b00)begin
							red <= 3'b111;
							green <= 3'b111;
							blue <= 2'b00;
						end
						else if(action5==2'b01)begin
							if(blinking>=0 && blinking<=500000) begin                       // burada sarý rengin yanýp sönmesini saðlayan kod baþlýyor
										red <= 3'b111;
										green <= 3'b111;
										blue <= 2'b00;
									end
								
									else if(blinking>500000 && blinking<=1000000)begin
										red <= 3'b000;
										green <= 3'b000;
										blue <= 2'b00;					
									end
								
									if(blinking==1000000)
										blinking=0;
									else 
										blinking=blinking+1;                                              //burada sarý rengin yanýp sönmesini saðlayan kod bitiyor 
						end
						else if(action5==2'b10)begin
							red <= 3'b111;
							green <= 3'b111;
							blue <= 2'b11;
						end
						else begin
							red <= 3'b000;
							green <= 3'b000;
							blue <= 2'b00;
						end
					end
					else if ((hc >= (hbp+360) && hc < (hbp+440)) && vc >= (vbp+ 264) && vc < (vbp+408)) begin //K 
						if(action6==2'b00)begin
							red <= 3'b111;
							green <= 3'b111;
							blue <= 2'b00;
						end
						else if(action6==2'b01)begin
							if(blinking>=0 && blinking<=500000) begin                       // burada sarý rengin yanýp sönmesini saðlayan kod baþlýyor
										red <= 3'b111;
										green <= 3'b111;
										blue <= 2'b00;
									end
								
									else if(blinking>500000 && blinking<=1000000)begin
										red <= 3'b000;
										green <= 3'b000;
										blue <= 2'b00;					
									end
								
									if(blinking==1000000)
										blinking=0;
									else 
										blinking=blinking+1;                                              //burada sarý rengin yanýp sönmesini saðlayan kod bitiyor 
						end
						else if(action6==2'b10)begin
							red <= 3'b111;
							green <= 3'b000;
							blue <= 2'b00;
						end
						else begin
							red <= 3'b000;
							green <= 3'b000;
							blue <= 2'b00;
						end
					end
					else if ((hc >= (hbp+520) && hc < (hbp+600)) && vc >= (vbp+ 264) && vc < (vbp+408)) begin //B
						if(action7==2'b00)begin
							red <= 3'b111;
							green <= 3'b111;
							blue <= 2'b00;
						end
						else if(action7==2'b01)begin
							if(blinking>=0 && blinking<=500000) begin                       // burada sarý rengin yanýp sönmesini saðlayan kod baþlýyor
										red <= 3'b111;
										green <= 3'b111;
										blue <= 2'b00;
									end
								
									else if(blinking>500000 && blinking<=1000000)begin
										red <= 3'b000;
										green <= 3'b000;
										blue <= 2'b00;					
									end
								
									if(blinking==1000000)
										blinking=0;
									else 
										blinking=blinking+1;                                              //burada sarý rengin yanýp sönmesini saðlayan kod bitiyor 
						end
						else if(action7==2'b10)begin
							red <= 3'b111;
							green <= 3'b111;
							blue <= 2'b11;
						end
						else begin
							red <= 3'b000;
							green <= 3'b000;
							blue <= 2'b00;
						end
				end
				else begin
					red 	<= 3'b000;	
					green <= 3'b000;	
					blue 	<= 2'b00;
				end
			end
			else if(winscreen==1)begin
				if((hc >= (hbp+96) && hc < (hbp+544)) && (vc >= (vbp+72) && vc < (vbp+408))) begin
					red <= 3'b000;
					green <= 3'b111;
					blue <= 2'b00;
				end
				else begin
					red <= 3'b000;
					green <= 3'b000;
					blue <= 2'b00;	
				end
				end
			end //vc hc  
		end //rst else 
	end //always

endmodule	
