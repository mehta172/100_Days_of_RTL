module pipo(
    input wire [3:0]i_d,
    input wire i_rst,
    input wire i_clk,
    output reg [3:0]o_q
);


always@(posedge i_clk or negedge i_rst)begin
    if(!i_rst)begin
        o_q <= 4'b0;
    end
    else begin
        o_q <= i_d;
    end
end


endmodule