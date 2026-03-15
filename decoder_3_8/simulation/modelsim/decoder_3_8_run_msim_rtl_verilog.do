transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Work/FPGA/decoder_3_8/src {C:/Work/FPGA/decoder_3_8/src/decoder_3_8.v}

