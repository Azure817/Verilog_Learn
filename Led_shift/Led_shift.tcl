set_location_assignment PIN_E1 -to clk
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to clk

set_location_assignment PIN_E16 -to reset_n
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to reset_n

set_location_assignment PIN_A2 -to led[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to led[0]

set_location_assignment PIN_B3 -to led[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to led[1]

set_location_assignment PIN_A4 -to led[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to led[2]

set_location_assignment PIN_A3 -to led[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to led[3]