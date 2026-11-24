module mealy_det_1101(
    input wire i_clk,
    input wire i_rst,
    input wire i_in,
    output reg o_det
);


typedef enum logic [1:0] {
    S0 = 2'b00,
    S1 = 2'b01,
    S2 = 2'b11,
    S3 = 2'b10
} state;

state present_state, next_state;

always@(posedge i_clk or negedge i_rst)begin
    if(!i_rst)begin
        present_state <= S0;
    end
    else begin
        present_state <= next_state;
    end
end

always@(*)begin
    next_state = present_state;
    o_det = 0;

    case(present_state)
        S0: begin
            if(i_in == 1)begin
                next_state = S1;
            end
            else begin
                next_state = S0;
            end
        end

        S1: begin
            if(i_in == 1)begin
                next_state = S2;
            end
            else begin
                next_state = S0;
            end
        end

        S2: begin
            if(i_in == 0)begin
                next_state = S3;
            end
            else begin
                next_state = S2;
            end
        end

        S3: begin
            if(i_in == 1)begin
                next_state = S1;
                o_det = 1;
            end
            else begin
                next_state = S0;
                o_det = 0;
            end
        end

        default : begin
            next_state = S0;
            o_det = 0;
        end
    endcase
end

endmodule