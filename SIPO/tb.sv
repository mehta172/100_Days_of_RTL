module tb();

    reg i_d;
    reg i_clk;
    reg i_rst;
    wire [3:0]o_q;
    
    reg [3:0] shift_data;

    sipo DUT(.i_d(i_d), .i_clk(i_clk), .i_rst(i_rst), .o_q(o_q));

    initial begin
        i_clk = 1'b1;
        forever #5 i_clk = ~i_clk;
    end

    initial begin
        i_rst = 1'b0;
        i_d   = 1'b0;

        #12;
        i_rst = 1'b1;

        transfer(4'b1011);

        #100;
        $finish;
    end

    task transfer(input [3:0] data);
        integer i;
        begin
            shift_data = data;
            for (i = 3; i >= 0; i = i - 1) begin
                @(negedge i_clk);
                i_d = shift_data[i];
                @(posedge i_clk);
                #1;
                $display("Time=%0t, i_d=%b, o_q=%b", $time, i_d, o_q);
            end
        end
    endtask

endmodule