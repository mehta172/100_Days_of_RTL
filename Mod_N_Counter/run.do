vlib work
vlog mod_n_counter.v tb.sv 
vsim -voptargs=\"+acc\" tb
#add wave -r *
do wave.do
run -all