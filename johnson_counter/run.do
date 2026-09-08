
	vlib work
	vlog johnson_counter_tb.v
	vsim -voptargs="+acc" work.tb
	add wave -r *
	run -all


