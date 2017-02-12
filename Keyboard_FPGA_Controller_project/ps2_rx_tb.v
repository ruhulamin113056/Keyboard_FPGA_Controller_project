`timescale 1ns / 1ps


module ps2_rx_tb;

	// Inputs
	reg clk;
	reg reset;
	reg ps2d;
	reg ps2c;
	reg rx_en;

	// Outputs
	wire rx_done_tick;
	wire [7:0] dout;

	// Instantiate the Unit Under Test (UUT)
	ps2_rx uut (
		.clk(clk), 
		.reset(reset), 
		.ps2d(ps2d), 
		.ps2c(ps2c), 
		.rx_en(rx_en), 
		.rx_done_tick(rx_done_tick), 
		.dout(dout)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		ps2d = 0;
		ps2c = 0;
		rx_en = 0;
		#10;
	
		
		reset = 0;
		ps2d = 1;
		ps2c = 0;
		rx_en = 1;
		#10;
		
		ps2d = 0;
		ps2c = 1;
		rx_en = 1;
		#10;
		
		ps2d = 1;
		ps2c = 0;
		rx_en = 1;
		#10;
        

	end
    
	always
		begin
			#20 clk = ~clk;
		end
		
endmodule

