module siso(
    input wire i_d,
    input wire i_clk,
    input wire i_rst,
    output wire o_q
);

reg [3:0] r_reg;

always@(posedge i_clk or negedge i_rst)begin
    if(!i_rst)begin
        r_reg <= 4'b0000;
    end
    else begin
        r_reg <= {r_reg[2:0],i_d};
    end
end

assign o_q = r_reg[3]; 

endmodule