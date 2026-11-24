onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb/i_clk
add wave -noupdate /tb/i_rst
add wave -noupdate /tb/i_in
add wave -noupdate /tb/o_det
add wave -noupdate /tb/DUT/present_state
add wave -noupdate /tb/DUT/next_state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {97 ns} 0}
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {258 ns}
