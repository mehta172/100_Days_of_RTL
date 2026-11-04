module bcd_add(
    input wire [3:0] A,
    input wire [3:0] B,
    output wire [7:0]S
);

wire [3:0] w_s;

assign w_s = A ^ B;


endmodule