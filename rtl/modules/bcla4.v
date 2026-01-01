module bcla4(g, p, sum, A, B, cin);

    input [3:0] A, B;
    input cin;

    output [3:0] sum;
    output g, p;

    wire [3:0] gtemp, ptemp, ctemp;

    rfa r01 (gtemp[0], ptemp[0], sum[0], A[0], B[0], cin); // or ctemp[0]
    rfa r02 (gtemp[1], ptemp[1], sum[1], A[1], B[1], ctemp[1]);
    rfa r03 (gtemp[2], ptemp[2], sum[2], A[2], B[2], ctemp[2]);
    rfa r04 (gtemp[3], ptemp[3], sum[3], A[3], B[3], ctemp[3]);
    
    bclg4 b (ctemp, g, p, gtemp, ptemp, cin);

endmodule