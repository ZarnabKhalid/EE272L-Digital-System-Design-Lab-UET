module tb_multiplier;
    logic [3:0] x;
    logic [2:0] sel;
    logic [3:0] p;
    logic [6:0] seg;
    logic [7:0] an;

    top_module uut (.*);

    initial begin
        sel = 3'b000;
        $display("Simulating: X * 3 = P");
        
        for (int i = 0; i < 16; i++) begin
            x = i;
            #10;
        end
        
        $finish;
    end
endmodule
