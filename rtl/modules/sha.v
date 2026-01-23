module sha(cout, sum, A, B);

    input A, B;

    output cout, sum;

    xnor xn0(sum, A, B);
    or o0(cout, A, B);

endmodule