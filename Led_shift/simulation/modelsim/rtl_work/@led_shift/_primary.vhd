library verilog;
use verilog.vl_types.all;
entity Led_shift is
    port(
        clk             : in     vl_logic;
        reset_n         : in     vl_logic;
        led             : out    vl_logic_vector(3 downto 0)
    );
end Led_shift;
