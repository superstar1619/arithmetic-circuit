module bcla32(cout, sum, A, B, cin);

    input [31:0] A, B;
    input cin;

    output [31:0] sum;
    output cout;

    wire [3:0] gtemp, ptemp, ctemp;
    wire g, p;

    assign cout = ctemp[2];

    bcla16 b01 (gtemp[0], ptemp[0], sum[15:0], A[15:0], B[15:0], cin); // or ctemp[0]
    bcla16 b02 (gtemp[1], ptemp[1], sum[31:16], A[31:16], B[31:16], ctemp[1]);
    
    bclg4 b (ctemp, g, p, gtemp, ptemp, cin);




endmodule