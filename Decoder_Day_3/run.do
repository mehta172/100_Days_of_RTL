vlib work
vlog Decoder_3_to_8.v Decoder_3_to_8_tb.sv 
vsim -voptargs=\"+acc\" Decoder_3_to_8_tb
#add wave -r *
do wave.do
run -all