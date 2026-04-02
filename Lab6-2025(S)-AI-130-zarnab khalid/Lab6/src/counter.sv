module counter #(parameter N = 4)(
    input  logic clk,
    input  logic rst,
    input  logic mode, // 0=wrap, 1=saturated
    output logic [N-1:0] count
);

    logic [N-1:0] next;
    logic [N-1:0] plus1;
    logic max;

    // instances
    adder #(N) A1 (.a(count), .sum(plus1));
    comparator #(N) C1 (.count(count), .max_reached(max));

    always_comb begin
        if (mode == 0) begin
            // WRAP
            if (max)
                next = 0;
            else
                next = plus1;
        end
        else begin
            // SATURATED
            if (max)
                next = count;
            else
                next = plus1;
        end
    end

    always_ff @(posedge clk or posedge rst) begin
        if (rst)
            count <= 0;
        else
            count <= next;
    end

endmodule