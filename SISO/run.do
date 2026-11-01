vlib work
vlog siso.sv tb.sv 
vsim -voptargs=\"+acc\" tb
#add wave -r *
do wave.do
run -all