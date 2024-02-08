module AND_TB;
    reg a,b;
    wire y;
    simpleand DUT(y,a,b);
    initial begin
        $dumpfile("andtest.vcd");
        $dumpvars(0,AND_TB);
        $monitor($time," A: %b, B :%b,Y: %b",a, b, y);
        #5 a = 0;b = 0;
        #5 a = 0;b = 1;
        #5 a = 1;b = 0;
        #5 a = 1;b = 1;

        #100 $finish;
    end
endmodule