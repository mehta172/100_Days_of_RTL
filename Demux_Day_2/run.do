vlib work
vlog Demux_1_to_4.v Demux_1_to_4_tb.sv 
vsim -voptargs=\"+acc\" Demux_1_to_4_tb
#add wave -r *
do wave.do
run -all