module Mux_4_to_1(
    input wire i_I0,
    input wire i_I1,
    input wire i_I2,
    input wire i_I3,
    input wire i_S0,
    input wire i_S1,
    output wire o_out
);

// Implementation using nsted ternery operator
assign o_out = (i_S1) ? ((i_S0) ? i_I3 : i_I2) : ((i_S0) ? i_I1 : i_I0);

// Implementation using always block

// always@(*)begin
//     case({i_S1,i_S0})
//         2'b00 : o_out = i_I0;
//         2'b01 : o_out = i_I1;
//         2'b10 : o_out = i_I2;
//         2'b11 : o_out = i_I3;
//     endcase
// end

endmodule