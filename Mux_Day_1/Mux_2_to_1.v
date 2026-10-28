module Mux_2_to_1(
    input wire i_I0,
    input wire i_I1,
    input wire i_sel,
    output wire o_out
);

// Implementation of Mux using Ternary operator
assign o_out = i_sel ? i_I1 : i_I0;

// Implementation using always block
// Note : To use this type of implementation the output o_out must be declared as reg

// always @(*)begin
//     if(i_sel == 1'b0)begin
//         o_out = i_I0;
//     end
//     else begin
//         o_out = i_I1;
//     end
// end

endmodule