module tb();

    reg i_clk;
    reg i_rst;
    reg i_ctrl;
    wire [3:0]o_count;
    
    //reg [3:0] shift_data;

    up_down_counter DUT(.i_clk(i_clk), .i_rst(i_rst), .i_ctrl(i_ctrl), .o_count(o_count));

    initial begin
        i_clk = 1'b1;
        forever #5 i_clk = ~i_clk;
    end

    initial begin
        i_rst = 1'b0;
        #12;
        i_ctrl = 1'b0;
        i_rst = 1'b1;
        #80;
        i_ctrl = 1'b1;
        #100;
        $finish;
    end

endmodule