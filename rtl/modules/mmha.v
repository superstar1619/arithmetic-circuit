module mmha(cout, sum, A0, B0, C);

    input A0, B0, C;

    output cout, sum;

    and a0(abar, A0, B0);
    ha h(cout, sum, abar, C);

endmodule