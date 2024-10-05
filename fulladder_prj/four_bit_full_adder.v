module four_bit_full_adder (
    input [3:0] A_i,
    input [3:0] B_i,
    input       C_i,
    output [3:0] S_o,
    output       C_o
);
    wire [4:0] C_w;
    assign C_w[0] = C_i;

    for(i=0;i<4;i=i+1)begin
        full_adder u_full_adder
    end

    assign C_o C_w[4];
endmodule