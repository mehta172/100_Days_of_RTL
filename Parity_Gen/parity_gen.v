module parity_gen #(
    parameter DATA_WIDTH = 8
)
    (
    input wire [DATA_WIDTH-1:0] i_in,
    output wire o_even_par,
    output wire o_odd_par
);

assign o_even_par = ^i_in;
assign o_odd_par  = ~(^i_in);

endmodule