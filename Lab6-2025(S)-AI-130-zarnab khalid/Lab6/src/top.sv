module top(
    input  logic clk,
    input  logic rst,
    input  logic mode,
    output logic [3:0] led
);

    logic slow_clk;

    freq_divider FD (.clk(clk), .rst(rst), .slow_clk(slow_clk));

    counter #(4) C1 (
        .clk(slow_clk),
        .rst(rst),
        .mode(mode),
        .count(led)
    );

endmodule