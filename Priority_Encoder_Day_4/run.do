vlib work
vlog priority_encoder.v priority_encoder_tb.sv 
vsim -voptargs=\"+acc\" priority_encoder_tb
#add wave -r *
do wave.do
run -all