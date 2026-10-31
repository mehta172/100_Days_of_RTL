module tb;

reg [3:0] i_A;
reg [3:0] i_B;

wire o_A_greater_B;
wire o_A_less_B;
wire o_A_equal_B;

integer i, j;

comp_4bit dut (
    .i_A(i_A),
    .i_B(i_B),
    .o_A_greater_B(o_A_greater_B),
    .o_A_less_B(o_A_less_B),
    .o_A_equal_B(o_A_equal_B)
);

initial begin

    $monitor("Time=%0t | A=%d | B=%d | A>B=%b | A<B=%b | A==B=%b",
             $time, i_A, i_B, o_A_greater_B, o_A_less_B, o_A_equal_B);

    for (i = 0; i < 16; i = i + 1) begin
        for (j = 0; j < 16; j = j + 1) begin

            i_A = i;
            i_B = j;

            #10;

        end
    end

    $finish;

end

endmodule