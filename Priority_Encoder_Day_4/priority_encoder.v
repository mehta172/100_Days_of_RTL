module priority_encoder(
    input wire [7:0] i_I,
    input wire i_en,
    output reg [2:0] o_out
);

always@(*)begin
    if(!i_en)begin
        o_out = 3'b000;
    end
    else begin
        if(i_I[7])begin
            o_out = 3'b111;
        end
        else if(i_I[6])begin
            o_out = 3'b110;
        end
        else if(i_I[5])begin
            o_out = 3'b101;
        end
        else if(i_I[4])begin
            o_out = 3'b100;
        end
        else if(i_I[3])begin
            o_out = 3'b011;
        end
        else if(i_I[2])begin
            o_out = 3'b010;
        end
        else if(i_I[1])begin
            o_out = 3'b001;
        end
        else if(i_I[0])begin
            o_out = 3'b000;
        end
    end
end

endmodule