vlib work
vlog gray_code_counter.v tb.sv 
vsim -voptargs=\"+acc\" tb
#add wave -r *
do wave.do
run -all