module tb();

    reg [3:0]i_d;
    reg i_clk;
    reg i_rst;
    reg i_load;
    wire o_q;
    
    //reg [3:0] shift_data;

    piso DUT(.i_d(i_d), .i_clk(i_clk), .i_load(i_load), .i_rst(i_rst), .o_q(o_q));

    initial begin
        i_clk = 1'b1;
        forever #5 i_clk = ~i_clk;
    end

    initial begin
        i_rst = 1'b0;
        i_d   = 4'b0000;
        i_load = 1'b0;

        #12;
        i_rst = 1'b1;
        i_load = 1'b1;
        i_d = 4'b1011;

        #10;
        i_load = 1'b0;
        #40;
        i_load = 1'b1;

        #100;
        $finish;
    end

endmodule