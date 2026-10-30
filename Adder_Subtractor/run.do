vlib work
vlog add_sub.v tb.sv 
vsim -voptargs=\"+acc\" tb
#add wave -r *
do wave.do
run -all