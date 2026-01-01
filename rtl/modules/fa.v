module fa (cout, sum, A, B, cin);

    input A, B, cin;

    output sum, cout;

    ha ha1 (g1, temp1, A, B);
    ha ha2 (g2, sum, temp1, cin);
    or o1 (cout, g1, g2);

endmodule