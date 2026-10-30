module add_sub(
    input wire [3:0] i_A,
    input wire [3:0] i_B,
    input wire i_K,
    output wire [3:0]o_out,
    output wire o_carry
);

wire [3:0] w_B;

assign w_B = {4{i_K}} ^ i_B;

assign {o_carry, o_out} = ({1'b0,i_A} + {1'b0,w_B} + i_K);


endmodule