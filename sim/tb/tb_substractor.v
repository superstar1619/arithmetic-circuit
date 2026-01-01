module tb_substractor();

    integer i,j;
    integer random_seed = 0;

    reg [31:0] A, B;
    reg Cin;

    wire s_Cout, Cout, a_Cout;
    wire [31:0] s_Sum, Sum, a_Sum;

    rca32s test_substractor(Cout, Sum, A, B, Cin);
    adder standard_adder(a_Cout, a_Sum, A, B, Cin);
    subtractor standard_substractor(s_Cout, s_Sum, A, B, Cin);

    initial 
    begin
        for(i=10000;i>=1;i=i-1)
        begin
            #5
            get_rand();
            #20
            check();    
        end
        $display("Pass all test!");
        $display("Congratulation!");
        $finish();
    end

    task get_rand; 
        begin
            Cin = {$random(random_seed)} % 2;
            for(j=31;j>=0;j=j-1)
            begin
                A[j] = {$random(random_seed)} % 2;
                B[j] = {$random(random_seed)} % 2;
            end
        end
    endtask

    task check;
        begin
            if((Cin == 0 && (a_Sum != Sum || Cout != a_Cout)) || (Cin == 1 && (s_Sum != Sum || Cout != s_Cout)))
            begin
                $display("Fail in A = %h B = %h Cin = %h", A, B, Cin);
                $display("required Cout = %h Sum = %h", Cin ? s_Cout : a_Cout, Cin ? s_Sum : a_Sum);
                $display("Now Cout = %h Sum = %h", Cout, Sum);
                $finish();
            end 
                
        end
    endtask

endmodule

