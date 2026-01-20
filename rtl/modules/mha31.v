module mha31(cout, sum, A0, B0, A1, B1);

    input [30:0] A0, B0, A1, B1;

    output [30:0] cout, sum;

    genvar i;

    generate
        for(i=0;i<=30;i=i+1)
        begin : genmha
            mha m(cout[i], sum[i], A0[i], B0[i], A1[i], B1[i]);
        end
    endgenerate

endmodule