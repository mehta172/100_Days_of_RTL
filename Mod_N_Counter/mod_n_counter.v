module mod_n_counter #(
    parameter N = 10
)
(
    input wire i_clk,
    input wire i_rst,
    output reg [$clog2(N)-1 : 0] o_count
);

always@(posedge i_clk or negedge i_rst)begin
    if(!i_rst)begin
        o_count <= 'h00;
    end
    else begin
        if(o_count == N)begin
            o_count <= 'h00;
        end
        else begin
            o_count <= o_count + 1;
        end
    end
end

endmodule