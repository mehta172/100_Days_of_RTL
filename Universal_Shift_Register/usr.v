module usr(
    input wire i_clk,
    input wire i_rst,
    input wire [1:0] i_sel,
    input wire [3:0] i_in,
    output reg [3:0] o_out
);

always@(posedge i_clk or negedge i_rst)begin
    if(!i_rst)begin
        o_out <= 4'b0000;
    end
    else begin
        case(i_sel)
            2'b00 : begin
                o_out <= o_out;
            end
            2'b01 : begin
                o_out <= i_in >> 1;
            end
            2'b10 : begin
                o_out <= i_in << 1;
            end
            2'b11 : begin
                o_out <= i_in;
            end
            default: o_out <= o_out;
        endcase
    end
end

endmodule