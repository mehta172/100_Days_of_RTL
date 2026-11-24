module gray_code_counter #(
    parameter N = 10
)
(
    input wire i_clk,
    input wire i_rst,
    output wire [$clog2(N)-1 : 0] o_count_gray
);

reg [$clog2(N)-1 : 0] r_count_gray;

always@(posedge i_clk or negedge i_rst)begin
    if(!i_rst)begin
        r_count_gray <= 'h00;
    end
    else begin
        if(r_count_gray == N)begin
            r_count_gray <= 'h00;
        end
        else begin
            r_count_gray <= r_count_gray + 1;
        end
    end
end

assign o_count_gray = r_count_gray ^ (r_count_gray >> 1);

endmodule