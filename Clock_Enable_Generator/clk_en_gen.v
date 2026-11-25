module clk_en_gen #(
    parameter N = 10
)
(
    input wire i_clk,
    input wire i_rst,
    output reg o_en
);

localparam WIDTH = $clog2(N);
reg [WIDTH-1:0] r_count;

always @(posedge i_clk or negedge i_rst) begin
    if(!i_rst)begin
        r_count <= 0;
        o_en <= 0;
    end
    else begin
        if(r_count == N-1)begin
            r_count <= 0;
            o_en <= 1;
        end
        else begin
            r_count <= r_count + 1;
            o_en <= 0;
        end
    end
end

endmodule