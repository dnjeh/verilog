module full_adder_multibit (
    input        A_i,
    input        B_i,
    input        C_i,
    output [1:0] F_o
);
    wire S_w;
    wire C_w;

    assign S_w = A_i ^ B_i ^ C_i;
    assign C_w = ((A_i ^ B_i) & C_i) | (A_i & B_i);
    assign F_o = {C_w, S_w};
endmodule