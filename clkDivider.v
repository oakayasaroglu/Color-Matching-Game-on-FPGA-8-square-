module clkDivider( 	input clkIn, 
							input rst, 
							output reg clkOut
																);
	
	initial 
		clkOut <= 0;
	
	always@(posedge clkIn or posedge rst) begin
		if(rst == 1) 
			clkOut <= 0;
		else 
			clkOut <= ~clkOut;
	end
	
endmodule
