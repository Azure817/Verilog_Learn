library verilog;
use verilog.vl_types.all;
entity LED_Blink is
    port(
        clk             : in     vl_logic;
        reset_n         : in     vl_logic;
        led             : out    vl_logic
    );
end LED_Blink;
