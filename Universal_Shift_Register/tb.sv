module tb();

    reg [3:0]i_in;
    reg i_clk;
    reg i_rst;
    reg [1:0] i_sel;
    wire [3:0]o_out;
    
    //reg [3:0] shift_data;

    usr DUT(.i_in(i_in), .i_clk(i_clk), .i_rst(i_rst), .i_sel(i_sel), .o_out(o_out));

    initial begin
        i_clk = 1'b1;
        forever #5 i_clk = ~i_clk;
    end

    initial begin
        i_rst = 1'b0;
        i_in   = 4'b0000;
        #12;
        i_rst = 1'b1;
        i_sel = 2'b00;
        i_in = 4'b1011;
        #40;
        i_sel = 2'b01;
        i_in = 4'b1101;
        #40;
        i_sel = 2'b10;
        i_in = 4'b0011;
        #40;
        i_sel = 2'b11;
        i_in = 4'b1001;

        #100;
        $finish;
    end

endmodule