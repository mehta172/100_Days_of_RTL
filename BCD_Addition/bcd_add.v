module bcd_add(
    input wire [3:0] A,
    input wire [3:0] B,
    input wire C,
    output wire Cout,
    output wire [3:0]S
);

wire [4:0] w_s1;
wire [4:0] w_s2;
wire w_valid;

assign w_s1 = A + B + C;
assign w_valid = ((w_s1[4]) | ((w_s1[3]) & (w_s1[2])) | ((w_s1[3]) & (w_s1[1])));

assign w_s2 = w_s1 + (w_valid ? 4'b0110 : 4'b0000);

assign S = w_s2[3:0];
assign Cout = w_valid;

endmodule