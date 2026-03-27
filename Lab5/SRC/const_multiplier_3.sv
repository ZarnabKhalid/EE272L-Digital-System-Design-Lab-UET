module multiplier (
    input  logic [3:0] x,
    output logic [3:0] p
);
    logic [3:0] s0_out; 
    logic [3:0] s1_out; 
    logic cout_unused;

    log_shifter shifter0 (
        .x(x), .s(2'b00), .zero_en(1'b0), .y(s0_out)
    );

    log_shifter shifter1 (
        .x(x), .s(2'b01), .zero_en(1'b0), .y(s1_out)
    );

    ripple_adder adder_inst (
        .a(s0_out), .b(s1_out), .cin(1'b0), 
        .sum(p), .cout(cout_unused)
    );
endmodule
