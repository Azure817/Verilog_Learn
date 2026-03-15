transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Work/FPGA/Led_shift/src {C:/Work/FPGA/Led_shift/src/Led_shift.v}

vlog -vlog01compat -work work +incdir+C:/Work/FPGA/Led_shift/src {C:/Work/FPGA/Led_shift/src/Led_shift_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  Led_shift_tb

add wave *
view structure
view signals
run -all
