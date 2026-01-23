module ctrl(H, D, x, x_1);

    input x, x_1;

    output H, D;

    xor x0(H, x, x_1);
    not n0(x_1_bar, x_1);
    and a0(D, x, x_1_bar);

endmodule