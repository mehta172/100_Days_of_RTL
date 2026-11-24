module down_counter(
    input wire i_clk,
    input wire i_rst,
    output wire [3:0] o_count
);

reg [3:0] r_count;

always@(posedge i_clk or negedge i_rst)begin
    if(!i_rst)begin
        r_count <= 4'b1111;
    end
    else begin
        if(r_count == 0)begin
            r_count <= 4'b1111;
        end
        else begin
            r_count <= r_count - 1;
        end
    end
end

assign o_count = r_count;

endmodule