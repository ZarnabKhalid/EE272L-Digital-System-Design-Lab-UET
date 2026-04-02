module counter_tb;

    logic clk;
    logic rst;
    logic mode;
    logic [3:0] count;

    // DUT
    counter #(4) DUT (
        .clk(clk),
        .rst(rst),
        .mode(mode),
        .count(count)
    );


    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;
        mode = 0; 

        #10;
        rst = 0;

       
        #100;

       
        mode = 1;

        #100;

        $stop;
    end

    initial begin
        $monitor("time=%0t mode=%b count=%b", $time, mode, count);
    end

endmodule