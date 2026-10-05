
	vlib work
	vlog up_down_counter_tb.v
	vsim -voptargs="+acc" work.tb
	add wave -r *
	run -all


