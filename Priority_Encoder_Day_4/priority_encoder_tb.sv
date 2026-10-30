module priority_encoder_tb;

reg [7:0] i_I;
reg i_en;
wire [2:0] o_out;

priority_encoder dut (
    .i_I(i_I),
    .i_en(i_en),
    .o_out(o_out)
);

initial begin
    i_en = 0;
    i_I = 8'b00000000;
    #10;

    i_en = 1;

    i_I = 8'b00000001; #10;
    i_I = 8'b00000010; #10;
    i_I = 8'b00000100; #10;
    i_I = 8'b00001000; #10;
    i_I = 8'b00010000; #10;
    i_I = 8'b00100000; #10;
    i_I = 8'b01000000; #10;
    i_I = 8'b10000000; #10;

    // Multiple inputs HIGH
    i_I = 8'b00001111; #10;
    i_I = 8'b00110100; #10;
    i_I = 8'b01101010; #10;
    i_I = 8'b11111111; #10;

    // No input active
    i_I = 8'b00000000; #10;

    // Disable encoder
    i_en = 0;
    i_I = 8'b11111111; #10;

    $finish;
end

initial begin
    $monitor("Time=%0t | en=%b | i_I=%b | o_out=%b",
              $time, i_en, i_I, o_out);
end

endmodule