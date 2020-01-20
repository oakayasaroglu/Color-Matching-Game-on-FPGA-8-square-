module top_module(
	input clk50MHz,
	input rst,
	input up,
	input down,
	input right,
	input left,
	input button,
	output [2:0] red, 
	output [2:0] green, 
	output [1:0] blue, 
	output hsync, 
	output vsync
	
    );
	 
	 wire clk25MHz;
	 wire [3:0] step_2;
	 
	 wire [1:0] action0;
	 wire [1:0] action1;
	 wire [1:0] action2;
	 wire [1:0] action3;
	 wire [1:0] action4;
	 wire [1:0] action5;
	 wire [1:0] action6;
	 wire [1:0] action7;
	 
	 wire [2:0] secim1;
	 wire [2:0] secim2;
	 wire [2:0] secim3;
	 wire [2:0] secim4;
	 wire [2:0] es1;
	 wire [2:0] es2;
	 wire [2:0] es3;
	 
	 wire winscreen;
	 
	clkDivider	M1	(	.clkIn(clk50MHz), 
							.rst(rst), 
							.clkOut(clk25MHz)
														);
						
	vga640x480	M2 ( 	.clk25MHz(clk25MHz),
							.rst(rst),
							.red(red), 
							.green(green), 
							.blue(blue), 
							.hsync(hsync), 
							.vsync(vsync),
							.action0(action0),
							.action1(action1),
							.action2(action2),
							.action3(action3),
							.action4(action4),
							.action5(action5),
							.action6(action6),
							.action7(action7),
							.winscreen(winscreen)
														);
														
	step_button M3 (  .button(button),
							.secim1(secim1),
							.secim2(secim2),
							.secim3(secim3),
							.es1(es1),
							.es2(es2),
							.es3(es3),
							.step_2(step_2),
							.rst(rst)
														);
														
	choose      M4 (	.clk25MHz(clk25MHz),
							.up(up),
							.down(down),
							.right(right),
							.left(left),
							.step_2(step_2),
							.secim1(secim1)
														);
	
	step1			M5	(	.clk25MHz(clk25MHz),
							.up(up),
							.down(down),
							.right(right),
							.left(left),
							.step_2(step_2),
							.secim1(secim1),
							.es1(es1)
														);
	step3      M6	(	.clk25MHz(clk25MHz),
							.up(up),
							.down(down),
							.right(right),
							.left(left),
							.step_2(step_2),
							.secim1(secim1),
							.es1(es1),
							.secim2(secim2)
														);
														
														
	step4		  M7	(	.clk25MHz(clk25MHz),
							.up(up),
							.down(down),
							.right(right),
							.left(left),
							.step_2(step_2),
							.secim1(secim1),
							.es1(es1),
							.secim2(secim2),
							.es2(es2)
														);
														
	step6		  M8	(	.clk25MHz(clk25MHz),
							.up(up),
							.down(down),
							.right(right),
							.left(left),
							.step_2(step_2),
							.secim1(secim1),
							.es1(es1),
							.secim2(secim2),
							.es2(es2),
							.secim3(secim3)
														);
														
	step7		  M9	(	.clk25MHz(clk25MHz),
							.up(up),
							.down(down),
							.right(right),
							.left(left),
							.step_2(step_2),
							.secim1(secim1),
							.es1(es1),
							.secim2(secim2),
							.es2(es2),
							.secim3(secim3),
							.es3(es3)
														);			

	step9		  M10	(	.clk25MHz(clk25MHz),
							.up(up),
							.down(down),
							.right(right),
							.left(left),
							.step_2(step_2),
							.secim1(secim1),
							.es1(es1),
							.secim2(secim2),
							.es2(es2),
							.secim3(secim3),
							.es3(es3),
							.secim4(secim4)
														);																

	
													
	aksiyon		M11 ( .clk25MHz(clk25MHz),
							.secim1(secim1),
							.secim2(secim2),
							.secim3(secim3),
							.secim4(secim4),
							.es1(es1),
							.es2(es2),
							.es3(es3),
							.step_2(step_2),
							.action0(action0),
							.action1(action1),
							.action2(action2),
							.action3(action3),
							.action4(action4),
							.action5(action5),
							.action6(action6),
							.action7(action7),
							.variety1(variety1),
							.winscreen(winscreen)
														);
							


endmodule
