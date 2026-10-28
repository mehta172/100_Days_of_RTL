module Demux_1_to_4(
    input wire i_I,
    input wire i_S0,
    input wire i_S1,
    output reg o_out0,
    output reg o_out1,
    output reg o_out2,
    output reg o_out3
);

// Implementation using always block

always@(*)begin
    case({i_S1,i_S0})
        2'b00 : o_out0 = i_I;
        2'b01 : o_out1 = i_I;
        2'b10 : o_out2 = i_I;
        2'b11 : o_out3 = i_I;
    endcase
end

endmodule