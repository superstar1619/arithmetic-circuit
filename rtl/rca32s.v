module rca32s (cout, sum, A, B, substract);

    input [31:0] A, B;
    input substract;

    output [31:0] sum;
    output cout;

    wire [31:0] w, c;
    genvar i;
    xor x1 (w[0], B[0], substract);
    fa fa1 (c[0], sum[0], A[0], w[0], substract);
    
    generate
        for (i=1;i<=31;i=i+1) 
        begin : gen_rca32;
            xor x (w[i], B[i], substract);
            fa f (c[i], sum[i], A[i], w[i], c[i-1]);
        end
    endgenerate

    assign cout = c[31];

endmodule