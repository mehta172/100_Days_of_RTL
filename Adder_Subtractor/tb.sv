module tb;

reg [3:0] i_A;
reg [3:0] i_B;
reg i_K;

wire [3:0]o_out;
wire o_carry;

integer i, j, k;

add_sub dut (
    .i_A(i_A),
    .i_B(i_B),
    .i_K(i_K),
    .o_out(o_out),
    .o_carry(o_carry)
);

initial begin

    $monitor("Time=%0t | i_K=%b | i_A=%d | i_B=%d | o_out=%d | o_carry=%b",
             $time, i_K, i_A, i_B, o_out, o_carry);

    for (k = 0; k < 2; k = k + 1) begin
        i_K = k;

        for (i = 0; i < 16; i = i + 1) begin
            for (j = 0; j < 16; j = j + 1) begin
                i_A = i;
                i_B = j;
                #10;
            end
        end
    end

    $finish;

end

endmodule