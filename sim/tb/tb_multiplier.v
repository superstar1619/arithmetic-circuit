module tb_multiplier();

    integer i,j;
    integer random_seed = 0;

    reg [31:0] X, Y;

    wire [63:0] s_Z, Z;

    ra32 test_multiplier(Z, X, Y);
    multiplier standard_multiplier(s_Z, X, Y);

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
            for(j=31;j>=0;j=j-1)
            begin
                X[j] = {$random(random_seed)} % 2;
                Y[j] = {$random(random_seed)} % 2;
            end
        end
    endtask

    task check;
        begin
            if(s_Z != Z)
            begin
                $display("Fail in X = %h Y = %h", X, Y);
                $display("required Z = %h", s_Z);
                $display("Now Z = %h", Z);
                $finish();
            end 
        end
    endtask

endmodule

