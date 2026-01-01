module ha(cout, sum, A, B);
    
    input A, B;
     
    output cout, sum;

    and a1 (cout, A, B);
    not i1 (cbar, cout);
    or o1 (p, A, B);
    and a2 (sum, cbar, p);

endmodule