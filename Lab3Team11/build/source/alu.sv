/*
    This file was generated automatically by Alchitry Labs 2.0.28-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module alu (
        input wire [31:0] a,
        input wire [31:0] b,
        input wire [5:0] alufn,
        output reg [31:0] out,
        output reg [3:0] z,
        output reg [3:0] v,
        output reg [3:0] n
    );
    logic [4:0] R_5d8a317e_i;
    logic [5:0] RR_5d8a317e_i;
    logic [4:0] R_34676d0d_i;
    logic [5:0] RR_34676d0d_i;
    localparam SIZE = 6'h20;
    logic [31:0] muxout;
    localparam _MP_SIZE_2073517975 = 6'h20;
    logic [31:0] M_adder_a;
    logic [31:0] M_adder_b;
    logic [5:0] M_adder_alufn_signal;
    logic [31:0] M_adder_out;
    logic M_adder_z;
    logic M_adder_v;
    logic M_adder_n;
    
    adder #(
        .SIZE(_MP_SIZE_2073517975)
    ) adder (
        .a(M_adder_a),
        .b(M_adder_b),
        .alufn_signal(M_adder_alufn_signal),
        .out(M_adder_out),
        .z(M_adder_z),
        .v(M_adder_v),
        .n(M_adder_n)
    );
    
    
    logic M_compare_z;
    logic M_compare_v;
    logic M_compare_n;
    logic [5:0] M_compare_alufn;
    logic [31:0] M_compare_cmp;
    
    compare compare (
        .z(M_compare_z),
        .v(M_compare_v),
        .n(M_compare_n),
        .alufn(M_compare_alufn),
        .cmp(M_compare_cmp)
    );
    
    
    localparam _MP_SIZE_1379169893 = 6'h20;
    logic [31:0] M_boolean_a;
    logic [31:0] M_boolean_b;
    logic [5:0] M_boolean_alufn;
    logic [31:0] M_boolean_bool;
    
    boolean #(
        .SIZE(_MP_SIZE_1379169893)
    ) boolean (
        .a(M_boolean_a),
        .b(M_boolean_b),
        .alufn(M_boolean_alufn),
        .bool(M_boolean_bool)
    );
    
    
    logic [31:0] M_shifter_a;
    logic [4:0] M_shifter_b;
    logic [5:0] M_shifter_alufn;
    logic [31:0] M_shifter_shift;
    
    compact_shifter shifter (
        .a(M_shifter_a),
        .b(M_shifter_b),
        .alufn(M_shifter_alufn),
        .shift(M_shifter_shift)
    );
    
    
    logic [31:0] M_multiplier_a;
    logic [31:0] M_multiplier_b;
    logic [31:0] M_multiplier_mul;
    
    multiplier multiplier (
        .a(M_multiplier_a),
        .b(M_multiplier_b),
        .mul(M_multiplier_mul)
    );
    
    
    logic [31:0] M_divider_a;
    logic [31:0] M_divider_b;
    logic [31:0] M_divider_div;
    
    divider divider (
        .a(M_divider_a),
        .b(M_divider_b),
        .div(M_divider_div)
    );
    
    
    logic [31:0] M_mux_4_s0;
    logic [31:0] M_mux_4_s1;
    logic [31:0][3:0] M_mux_4_in;
    logic [31:0] M_mux_4_out;
    
    genvar idx_0_1696539461;
    
    generate
        for (idx_0_1696539461 = 0; idx_0_1696539461 < 32; idx_0_1696539461 = idx_0_1696539461 + 1) begin: forLoop_idx_0_1696539461
            mux_4 mux_4 (
                .s0(M_mux_4_s0[idx_0_1696539461]),
                .s1(M_mux_4_s1[idx_0_1696539461]),
                .in(M_mux_4_in[idx_0_1696539461]),
                .out(M_mux_4_out[idx_0_1696539461])
            );
        end
    endgenerate
    
    
    logic [31:0] M_mux_2_s0;
    logic [31:0] M_mux_2_s1;
    logic [31:0][3:0] M_mux_2_in;
    logic [31:0] M_mux_2_out;
    
    genvar idx_0_2113028365;
    
    generate
        for (idx_0_2113028365 = 0; idx_0_2113028365 < 32; idx_0_2113028365 = idx_0_2113028365 + 1) begin: forLoop_idx_0_2113028365
            mux_4 mux_2 (
                .s0(M_mux_2_s0[idx_0_2113028365]),
                .s1(M_mux_2_s1[idx_0_2113028365]),
                .in(M_mux_2_in[idx_0_2113028365]),
                .out(M_mux_2_out[idx_0_2113028365])
            );
        end
    endgenerate
    
    
    always @* begin
        M_adder_a = a;
        M_adder_b = b;
        M_adder_alufn_signal = alufn;
        z = M_adder_z;
        v = M_adder_v;
        n = M_adder_n;
        M_compare_z = M_adder_z;
        M_compare_v = M_adder_v;
        M_compare_n = M_adder_n;
        M_compare_alufn = alufn;
        M_boolean_a = a;
        M_boolean_b = b;
        M_boolean_alufn = alufn;
        M_shifter_a = a;
        M_shifter_b = b[3'h4:1'h0];
        M_shifter_alufn = alufn;
        M_multiplier_a = a;
        M_multiplier_b = b;
        M_divider_a = a;
        M_divider_b = b;
        for (RR_5d8a317e_i = 0; RR_5d8a317e_i < 6'h20; RR_5d8a317e_i = RR_5d8a317e_i + 1) begin
      R_5d8a317e_i = (1'h0) + RR_5d8a317e_i * (1'h1);
            M_mux_2_in[R_5d8a317e_i][1'h0] = M_adder_out[R_5d8a317e_i];
            M_mux_2_in[R_5d8a317e_i][1'h1] = M_adder_out[R_5d8a317e_i];
            M_mux_2_in[R_5d8a317e_i][2'h2] = M_multiplier_mul[R_5d8a317e_i];
            M_mux_2_in[R_5d8a317e_i][2'h3] = M_divider_div[R_5d8a317e_i];
            M_mux_2_s0[R_5d8a317e_i] = alufn[1'h0];
            M_mux_2_s1[R_5d8a317e_i] = alufn[1'h1];
            muxout[R_5d8a317e_i] = M_mux_2_out[R_5d8a317e_i];
        end
        for (RR_34676d0d_i = 0; RR_34676d0d_i < 6'h20; RR_34676d0d_i = RR_34676d0d_i + 1) begin
      R_34676d0d_i = (1'h0) + RR_34676d0d_i * (1'h1);
            M_mux_4_in[R_34676d0d_i][1'h0] = muxout[R_34676d0d_i];
            M_mux_4_in[R_34676d0d_i][1'h1] = M_boolean_bool[R_34676d0d_i];
            M_mux_4_in[R_34676d0d_i][2'h2] = M_shifter_shift[R_34676d0d_i];
            M_mux_4_in[R_34676d0d_i][2'h3] = M_compare_cmp[R_34676d0d_i];
            M_mux_4_s0[R_34676d0d_i] = alufn[3'h4];
            M_mux_4_s1[R_34676d0d_i] = alufn[3'h5];
            out[R_34676d0d_i] = M_mux_4_out[R_34676d0d_i];
        end
    end
    
    
endmodule