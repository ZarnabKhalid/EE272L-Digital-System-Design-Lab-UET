module adder #(parameter N = 4)(
    input  logic [N-1:0] a,
    output logic [N-1:0] sum
);

    assign sum = a + 1;

endmodule