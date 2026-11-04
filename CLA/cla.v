module cla(
    input wire [3:0]A,
    input wire [3:0]B,
    input wire C,
    output wire [3:0]S,
    output wire Cout
);

wire [3:0]P;
wire [3:0]G;
wire c1, c2, c3;

assign P = A ^ B;
assign G = A & B;

assign c1 = ((P[0] & C) | G[0]);
assign c2 = ((P[1] & ((P[0] & C) | G[0])) | G[1]);
assign c3 = ((P[2] & ((P[1] & ((P[0] & C) | G[0])) | G[1])) | G[2]);

assign Cout = ((P[3] & ((P[2] & ((P[1] & ((P[0] & C) | G[0])) | G[1])) | G[2])) | G[3]);
assign S[0] = P[0] ^ C;
assign S[1] = P[1] ^ c1;
assign S[2] = P[2] ^ c2;
assign S[3] = P[3] ^ c3;

endmodule