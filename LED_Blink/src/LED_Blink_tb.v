`timescale 1ns/1ns

module LED_Blink_tb();

reg clk;
reg reset_n;
wire led;

    LED_Blink LED_Blink
    (
        .clk(clk),
        .reset_n(reset_n),
        .led(led)
    );

    initial clk =1;
    always #10 clk =~clk;

    initial 
    begin
        reset_n =0;
        #201;
        reset_n =1;
		//   #2_000_000;
        #2_000_000_000;
		  $stop;
    end   
endmodule