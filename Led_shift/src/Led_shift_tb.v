`timescale 1ns/1ns

module Led_shift_tb();

reg clk;
reg reset_n;
wire [3:0]led;
	
	Led_shift Led_shift
	(
		.clk(clk),
		.reset_n(reset_n),
		.led(led)
	);
	
	initial clk =1;
	always #10 clk =~clk;
	
	initial begin
		reset_n =0;
		#201;
		reset_n =1;
		#2_000_000_000;
		$stop;
	end
	
endmodule
