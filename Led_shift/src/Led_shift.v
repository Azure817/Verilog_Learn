module Led_shift
(
	clk,
	reset_n,
	led
);

	input clk;
	input reset_n;
	reg [3:0]buff;
	output reg[3:0]led;
	
	reg [24:0] counter;
	
	always @(posedge clk or negedge reset_n)
		if (!reset_n)
			counter <=0;
		else if (counter==25_000_000 -1)
			counter <=0;
		else
			counter <= counter + 1'd1;
			
	always @(posedge clk or negedge reset_n)
		if(!reset_n)
			buff <= 4'b0000;
		else if (counter==25_000_000-1) 
			begin
				if((buff==4'b1000)||(buff==4'b0000))
					buff <= 4'b0001;
				else
					buff <=buff <<1;
					led <=~buff;
			end

endmodule 