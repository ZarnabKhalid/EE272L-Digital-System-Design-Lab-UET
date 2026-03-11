module binary_to_bcd_tb();

    logic [4:0] bin;
    logic [7:0] bcd;

    binary_to_bcd UUT (
        .bin(bin),
        .bcd(bcd)
    );

    initial begin
        bin = 5'b00000; 
        #10;
        bin = 5'b00101; 
        #10;
        bin = 5'b01010;
        #10;
        bin = 5'b01111;
        #10;
        bin = 5'b10000;
        #10;
        $stop;
    end
endmodule
