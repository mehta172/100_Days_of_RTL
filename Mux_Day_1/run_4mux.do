vlib work
vlog Mux_4_to_1.v Mux_4_to_1_tb.sv 
vsim -voptargs=\"+acc\" Mux_4_to_1_tb
#add wave -r *
do wave_mux_4to1.do
run -all