
	vlib work
	vlog mod10_counter_tb.v
	vsim -voptargs="+acc" work.tb
	add wave -r *
	run -all


