module configurable_counter (
    input logic clk,           // reduced clock
    input logic reset,         // reset signal
    input logic mode,          // 0 = wrap, 1 = saturated
    output logic [3:0] count   // 4-bit count value
);

logic [3:0] next_count;

always_ff @(posedge clk or posedge reset) begin
    if (reset)
        count <= 4'b0000;
    else
        count <= next_count;
end

always_comb begin
    if (mode == 0) begin  // WRAP mode
        if (count == 4'b1111)
            next_count = 4'b0000;
        else
            next_count = count + 1'b1;
    end 
    else begin  // SATURATED mode
        if (count == 4'b1111)
            next_count = 4'b1111;  // stays at 15
        else
            next_count = count + 1'b1;
    end
end

endmodule