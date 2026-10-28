onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /Demux_1_to_4_tb/dut/i_I
add wave -noupdate /Demux_1_to_4_tb/dut/i_S0
add wave -noupdate /Demux_1_to_4_tb/dut/i_S1
add wave -noupdate /Demux_1_to_4_tb/dut/o_out0
add wave -noupdate /Demux_1_to_4_tb/dut/o_out1
add wave -noupdate /Demux_1_to_4_tb/dut/o_out2
add wave -noupdate /Demux_1_to_4_tb/dut/o_out3
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {213 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {4799 ps}
