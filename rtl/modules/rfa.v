module rfa (g, p, sum, A, B, cin);

    input A, B, cin;

    output sum, g, p;

    rha rha1 (.g(g), .p(p), .sum(temp1), .A(A), .B(B));
    rha rha2 (.sum(sum), .A(temp1), .B(cin));

endmodule