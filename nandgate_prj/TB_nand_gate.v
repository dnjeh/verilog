module TB_nand_gate (
    // TB don't have any I/O port
);
    reg A_i;
    reg B_i;
    wire F_o;

    nand_gate u_nand_gate(
        .A_i ( A_i ),
        .B_i ( B_i ),
        .F_o ( F_o )
    );

    initial begin
        #0
        A_i = 1'b0;
        B_i = 1'b0;

        #5
        A_i = 1'b1;
        B_i = 1'b0;

        #5
        A_i = 1'b0;
        B_i = 1'b1;

        #5
        A_i = 1'b1;
        B_i = 1'b1;
    end
endmodule