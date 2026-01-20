module mha(cout, sum, A0, B0, A1, B1);

    input A0, B0, A1, B1;

    output cout, sum;

    and a0 (ab0, A0, B0);
    and a1 (ab1, A1, B1);
    and a2 (cout, ab0, ab1);
    xor x0 (sum, ab0, ab1);

endmodule