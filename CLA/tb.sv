module tb();
    reg [3:0] A;
    reg [3:0] B;
    reg C;
    wire [3:0] S;
    wire Cout;

    cla DUT(.A(A), .B(B), .C(C), .S(S), .Cout(Cout));

    initial begin
        A = 4'b1001;
        B = 4'b0010;
        C = 1'b0;

        #10;
        A = 4'b1011;
        B = 4'b0011;
        C = 1'b1;

        #10;
        $finish();

    end
    
endmodule