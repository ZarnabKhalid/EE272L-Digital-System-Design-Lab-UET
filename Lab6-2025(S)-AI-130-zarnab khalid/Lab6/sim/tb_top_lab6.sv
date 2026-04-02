module tb_top_lab6();

    logic clk;
    logic reset;
    logic sw0;
    logic sw1;
    logic [6:0] seg;
    logic [3:0] an;

    top_lab6 dut (
        .clk(clk),
        .reset(reset),
        .sw0(sw0),
        .sw1(sw1),
        .seg(seg),
        .an(an)
    );

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        reset = 1; sw0 = 0; sw1 = 1; #20;
        reset = 0;
        
        $display("Simulating Top Module...");
        #200; 
        
        sw1 = 0; 
        #200;

        $finish;
    end

endmodule