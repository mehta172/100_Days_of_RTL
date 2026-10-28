vlib work
vlog Mux_2_to_1.v Mux_2_to_1_tb.sv 
vsim -voptargs=\"+acc\" Mux_2_to_1_tb
#add wave -r *
do wave_mux_2to1.do
run -all