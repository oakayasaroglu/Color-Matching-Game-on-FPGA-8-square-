module exampleV1TopModule	(	input clk50MHz, 
										input rst, 
										input  [3:0] switches,
										input  select_button,
										output [2:0] red, 
										output [2:0] green, 
										output [1:0] blue, 
										output hsync, 
										output vsync
										
										);
										
							
							
		
	wire clk25MHz;
	wire [2:0] variety;
	wire [2:0] match;
	wire enable;
	wire [1:0] sifirla;
	
	wire [1:0] actionA;
	wire [1:0] actionB;
	wire [1:0] actionC;
	wire [1:0] actionD;
	
	clkDivider	M1	(	.clkIn(clk50MHz), 
							.rst(rst), 
							.clkOut(clk25MHz),
							.switches(switches),
							.enable(enable),
							.select_button(select_button)
														);
		
	vga640x480	M2 ( 	.clk25MHz(clk25MHz),
							.rst(rst),
							.red(red), 
							.green(green), 
							.blue(blue), 
							.hsync(hsync), 
							.vsync(vsync),
							.variety(variety),
							.match(match),
							.actionA(actionA),
							.actionB(actionB),
							.actionC(actionC),
							.actionD(actionD) 
														);
														
	first_step  M3 (	.clk25MHz(clk25MHz),
							.rst(rst),
							.switches(switches),					
							.select_button(select_button),
							.variety(variety),
							.match(match),
							.enable(enable),
							.actionA(actionA),
							.actionB(actionB),
							.actionC(actionC),
							.actionD(actionD),
							.sifirla(sifirla)
													);
	
endmodule
