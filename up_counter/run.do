
	vlib work
	vlog up_counter_tb.v
	vsim -voptargs="+acc" work.tb
	add wave -r *
	run -all


