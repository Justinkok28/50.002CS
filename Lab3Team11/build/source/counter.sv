/*
    This file was generated automatically by Alchitry Labs 2.0.28-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module counter #(
        parameter SIZE = 4'h8,
        parameter DIV = 1'h0,
        parameter TOP = 1'h0,
        parameter UP = 1'h1
    ) (
        input wire clk,
        input wire rst,
        output reg [(SIZE)-1:0] value
    );
    logic [(SIZE + DIV)-1:0] D_ctr_d, D_ctr_q = 0;
    localparam NON_ZERO_DIV = DIV == 1'h0 ? 1'h1 : DIV;
    localparam MAX_VALUE = DIV > 1'h0 ? {TOP, {NON_ZERO_DIV{1'h1}}} : TOP;
    always @* begin
        D_ctr_d = D_ctr_q;
        
        value = D_ctr_q[SIZE + DIV - 1'h1-:SIZE];
        if (UP) begin
            D_ctr_d = D_ctr_q + 1'h1;
            if (TOP != 1'h0 && D_ctr_q == MAX_VALUE) begin
                D_ctr_d = 1'h0;
            end
        end else begin
            D_ctr_d = D_ctr_q - 1'h1;
            if (TOP != 1'h0 && D_ctr_q == 1'h0) begin
                D_ctr_d = ($bits(D_ctr_q))'(MAX_VALUE);
            end
        end
    end
    
    
    always @(posedge (clk)) begin
        if ((rst) == 1'b1) begin
            D_ctr_q <= 0;
        end else begin
            D_ctr_q <= D_ctr_d;
        end
    end
endmodule