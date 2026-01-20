module prefixadder32 (cout, sum, A, B, cin);

    input [31:0] A, B;
    input cin;

    output [31:0] sum;
    output cout;

    wire [31:0] g, p;
    wire [32:0] c;

    assign c[0] = cin;

    prepostprocessing ppp(g, p, sum, A, B, c[31:0]);

    parallelprefix pp(c[32:1], g, p);

    assign cout = c[32];
    
endmodule