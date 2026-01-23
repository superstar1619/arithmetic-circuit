module nmfa31(cout, sum, A0, B0, C, cin);

    input [30:0] A0, B0, C, cin;

    output [30:0] cout, sum;

    genvar i;

    generate
        for(i=0;i<=30;i=i+1)
        begin : gennmfa
            nmfa nm(cout[i], sum[i], A0[i], B0[i], C[i], cin[i]);
        end
    endgenerate

endmodule