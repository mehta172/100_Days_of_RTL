
module Demux_1_to_4_tb;

reg i_I;
reg i_S0;
reg i_S1;

wire o_out0;
wire o_out1;
wire o_out2;
wire o_out3;

Demux_1_to_4 dut (
    .i_I(i_I),
    .i_S0(i_S0),
    .i_S1(i_S1),
    .o_out0(o_out0),
    .o_out1(o_out1),
    .o_out2(o_out2),
    .o_out3(o_out3)
);

initial begin
    i_I = 0;
    i_S0 = 0;
    i_S1 = 0;
    #10;

    i_I = 1;
    i_S1 = 0; i_S0 = 0;
    #10;

    i_S1 = 0; i_S0 = 1;
    #10;

    i_S1 = 1; i_S0 = 0;
    #10;

    i_S1 = 1; i_S0 = 1;
    #10;

    i_I = 0;
    #10;

    $finish;
end

initial begin
    $monitor("Time=%0t | I=%b | S1=%b S0=%b | OUT0=%b OUT1=%b OUT2=%b OUT3=%b",
             $time, i_I, i_S1, i_S0, o_out0, o_out1, o_out2, o_out3);
end

endmodule