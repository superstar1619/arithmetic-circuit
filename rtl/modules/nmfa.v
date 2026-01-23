module nmfa(cout, sum, A0, B0, C, cin);

    input A0, B0, C, cin;

    output cout, sum;

    nand na0 (nab0, A0, B0);
    fa f0 (cout, sum, nab0, C, cin);

endmodule