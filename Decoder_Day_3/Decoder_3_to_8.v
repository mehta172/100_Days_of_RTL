module Decoder_3_to_8(
    input wire [2:0] i_I,
    input wire i_en,
    output reg [7:0] o_out
);

always@(*)begin
    if(!i_en)begin
        o_out = 'h0;
    end
    else begin
        case(i_I)
            3'b000 : o_out = 8'b00000001;
            3'b001 : o_out = 8'b00000010;
            3'b010 : o_out = 8'b00000100;
            3'b011 : o_out = 8'b00001000;
            3'b100 : o_out = 8'b00010000;
            3'b101 : o_out = 8'b00100000;
            3'b110 : o_out = 8'b01000000;
            3'b111 : o_out = 8'b10000000;
        endcase
end
end

endmodule