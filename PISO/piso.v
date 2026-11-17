module piso(
    input wire [3:0]i_d,
    input wire i_clk,
    input wire i_rst,
    input wire i_load,
    output reg o_q
);

reg [2:0]r_dff;

always@(posedge i_clk or negedge i_rst)begin
    if(!i_rst)begin
        o_q <= 1'b0;
    end
    else begin
        r_dff[0] <= i_d[0];
        r_dff[1] <= i_load ? i_d[1] : r_dff[0];
        r_dff[2] <= i_load ? i_d[2] : r_dff[1];
        o_q      <= i_load ? i_d[3] : r_dff[2];
    end
end


endmodule