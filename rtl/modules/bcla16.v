module bcla16(g, p, sum, A, B, cin);

    input [15:0] A, B;
    input cin;

    output [15:0] sum;
    output g, p;

    wire [3:0] gtemp, ptemp, ctemp;

    bcla4 b01 (gtemp[0], ptemp[0], sum[3:0], A[3:0], B[3:0], cin); // or ctemp[0]
    bcla4 b02 (gtemp[1], ptemp[1], sum[7:4], A[7:4], B[7:4], ctemp[1]);
    bcla4 b03 (gtemp[2], ptemp[2], sum[11:8], A[11:8], B[11:8], ctemp[2]);
    bcla4 b04 (gtemp[3], ptemp[3], sum[15:12], A[15:12], B[15:12], ctemp[3]);
    
    bclg4 b (ctemp, g, p, gtemp, ptemp, cin);


endmodule