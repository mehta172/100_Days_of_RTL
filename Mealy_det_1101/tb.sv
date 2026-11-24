module tb();

    reg i_clk;
    reg i_rst;
    reg i_in;
    wire o_det;

    mealy_det_1101 DUT(.i_clk(i_clk), .i_rst(i_rst), .i_in(i_in), .o_det(o_det));

    initial begin
        i_clk = 1;
        forever #5 i_clk = ~i_clk;
    end

    task transfer(input logic [3:0] data);
        for(int i=3; i>=0; i--)begin
            @(posedge i_clk);
            i_in = data[i];
        end
    endtask

    initial begin
        i_rst = 0;
        i_in = 0;
        #12;
        i_rst = 1;
        transfer($urandom_range(0,15));
        @(posedge i_clk);
        transfer($urandom_range(0,15));
        @(posedge i_clk);
        transfer($urandom_range(0,15));
        @(posedge i_clk);
        transfer($urandom_range(0,15));
        @(posedge i_clk);
        transfer($urandom_range(0,15));
        @(posedge i_clk);
        transfer($urandom_range(0,15));
        @(posedge i_clk);
        transfer($urandom_range(0,15));
        @(posedge i_clk);
        transfer($urandom_range(0,15));
        @(posedge i_clk);
        transfer($urandom_range(0,15));
        #50;
        $finish;
    end

endmodule