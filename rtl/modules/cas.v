module cas(cout, sout, U, R, Q, D, H, a, b, cin);

    input U, R, Q, D, H, a, b, cin;

    output cout, sout;

    xor x0(W, b, D);
    and a0(abar0, a, H);
    and a1(abar1, cin, H);
    xor (sout, b, abar0, abar1);
    and a2(abar2, a, cin);
    or o0(obar0, a, cin);
    and a3(abar3, obar0, W);
    or o1(cout, abar3, abar2);

    buf b0(U, a);
    buf b1(Q, H);
    buf b2(R, D);

endmodule