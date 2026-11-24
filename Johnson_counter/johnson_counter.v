module johnson_counter(
    input wire i_clk,
    input wire i_rst,
    output reg [3:0] o_q
);


always@(posedge i_clk or negedge i_rst)begin
    if(!i_rst)begin
        o_q <= 4'b0000;
    end
    else begin
        o_q <= {o_q[2:0], ~o_q[3]};
    end
end

endmodule