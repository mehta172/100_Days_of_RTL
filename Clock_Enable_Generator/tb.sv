module tb();

    reg i_clk;
    reg i_rst;
    wire o_en;
    
    //reg [3:0] shift_data;

    clk_en_gen #(.N(10)) DUT(.i_clk(i_clk), .i_rst(i_rst), .o_en(o_en));

    initial begin
        i_clk = 1'b1;
        forever #5 i_clk = ~i_clk;
    end

    initial begin
        i_rst = 1'b0;
        #12;
        i_rst = 1'b1;
        #100;
        $finish;
    end

endmodule