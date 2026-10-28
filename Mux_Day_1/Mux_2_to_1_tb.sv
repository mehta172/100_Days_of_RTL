module Mux_2_to_1_tb;

reg i_I0, i_I1, i_sel;
wire o_out;

Mux_2_to_1 dut (
    .i_I0(i_I0),
    .i_I1(i_I1),
    .i_sel(i_sel),
    .o_out(o_out)
);

initial begin
    i_I0 = 0; i_I1 = 0; i_sel = 0;
    #10;

    i_I0 = 0; i_I1 = 1; i_sel = 0;
    #10;

    i_I0 = 1; i_I1 = 0; i_sel = 0;
    #10;

    i_I0 = 1; i_I1 = 1; i_sel = 0;
    #10;

    i_I0 = 0; i_I1 = 0; i_sel = 1;
    #10;

    i_I0 = 0; i_I1 = 1; i_sel = 1;
    #10;

    i_I0 = 1; i_I1 = 0; i_sel = 1;
    #10;

    i_I0 = 1; i_I1 = 1; i_sel = 1;
    #10;

    $finish;
end

initial begin
    $monitor("Time=%0t i_I0=%i_I1 i_I1=%i_I1 i_sel=%i_I1 o_out=%i_I1",
              $time, i_I0, i_I1, i_sel, o_out);
end

endmodule