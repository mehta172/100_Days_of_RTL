vlib work
vlog mealy_det_1101.sv tb.sv 
vsim -voptargs=\"+acc\" tb
#add wave -r *
do wave.do
run -all