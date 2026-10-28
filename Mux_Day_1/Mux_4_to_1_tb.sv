module Mux_4_to_1_tb;

reg i_I0;
reg i_I1;
reg i_I2;
reg i_I3;
reg i_S0;
reg i_S1;
wire o_out;

Mux_4_to_1 dut (
    .i_I0(i_I0),
    .i_I1(i_I1),
    .i_I2(i_I2),
    .i_I3(i_I3),
    .i_S0(i_S0),
    .i_S1(i_S1),
    .o_out(o_out)
);

initial begin
    i_I0 = 0; i_I1 = 1; i_I2 = 0; i_I3 = 1;

    i_S1 = 0; i_S0 = 0;
    #10;

    i_S1 = 0; i_S0 = 1;
    #10;

    i_S1 = 1; i_S0 = 0;
    #10;

    i_S1 = 1; i_S0 = 1;
    #10;

    $finish;
end

initial begin
    $monitor("Time=%0t | I0=%b I1=%b I2=%b I3=%b | S1=%b S0=%b | OUT=%b",
             $time, i_I0, i_I1, i_I2, i_I3, i_S1, i_S0, o_out);
end

endmodule