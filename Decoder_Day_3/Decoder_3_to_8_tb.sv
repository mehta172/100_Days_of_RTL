module Decoder_3_to_8_tb;

reg [2:0] i_I;
reg i_en;
wire [7:0] o_out;

Decoder_3_to_8 dut (
    .i_I(i_I),
    .i_en(i_en),
    .o_out(o_out)
);

initial begin
    i_en = 0;
    i_I = 3'b000;
    #10;

    i_en = 1;

    i_I = 3'b000; #10;
    i_I = 3'b001; #10;
    i_I = 3'b010; #10;
    i_I = 3'b011; #10;
    i_I = 3'b100; #10;
    i_I = 3'b101; #10;
    i_I = 3'b110; #10;
    i_I = 3'b111; #10;

    i_en = 0;
    #10;

    $finish;
end

initial begin
    $monitor("Time=%0t | en=%b | i_I=%b | o_out=%b",
              $time, i_en, i_I, o_out);
end

endmodule
