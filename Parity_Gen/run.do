vlib work
vlog parity_gen.v tb.sv 
vsim -voptargs=\"+acc\" tb
#add wave -r *
do wave.do
run -all