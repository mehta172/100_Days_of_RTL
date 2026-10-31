module tb;

parameter DATA_WIDTH = 8;

reg [DATA_WIDTH-1:0] i_in;

wire o_even_par;
wire o_odd_par;

integer i;

parity_gen #(
    .DATA_WIDTH(DATA_WIDTH)
) dut (
    .i_in(i_in),
    .o_even_par(o_even_par),
    .o_odd_par(o_odd_par)
);

initial begin

    $monitor("Time=%0t | i_in=%b | Even Parity=%b | Odd Parity=%b",
             $time, i_in, o_even_par, o_odd_par);

    for (i = 0; i < (2**DATA_WIDTH); i = i + 1) begin
        i_in = i;
        #10;
    end

    $finish;

end

endmodule