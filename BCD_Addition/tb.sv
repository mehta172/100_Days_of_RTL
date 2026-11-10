module tb();

    reg [3:0] A;
    reg [3:0] B;
    reg C;

    wire Cout;
    wire [3:0] S;

    bcd_add DUT(
        .A(A),
        .B(B),
        .C(C),
        .Cout(Cout),
        .S(S)
    );

    initial begin

        // Test Case 1: 2 + 3 = 5
        A = 4'b0010; B = 4'b0011; C = 1'b0;
        #10;

        // Test Case 2: 5 + 3 = 8
        A = 4'b0101; B = 4'b0011; C = 1'b0;
        #10;

        // Test Case 3: 7 + 8 = 15
        A = 4'b0111; B = 4'b1000; C = 1'b0;
        #10;

        // Test Case 4: 9 + 9 = 18
        A = 4'b1001; B = 4'b1001; C = 1'b0;
        #10;

        // Test Case 5: 8 + 9 + 1 = 18
        A = 4'b1000; B = 4'b1001; C = 1'b1;
        #10;

        // Test Case 6: 4 + 5 + 1 = 10
        A = 4'b0100; B = 4'b0101; C = 1'b1;
        #10;

        // Test Case 7: 0 + 0 = 0
        A = 4'b0000; B = 4'b0000; C = 1'b0;
        #10;

        $finish;

    end

    initial begin
        $monitor("Time=%0t | A=%d | B=%d | C=%b | Cout=%b | S=%d",
                  $time, A, B, C, Cout, S);
    end

endmodule