module rha(g, p, sum, A, B);
    
    input A, B;
     
    output g, p, sum;

    and a1 (g, A, B);
    not i1 (gbar, g);
    or o1 (p, A, B);
    and a2 (sum, gbar, p);

endmodule