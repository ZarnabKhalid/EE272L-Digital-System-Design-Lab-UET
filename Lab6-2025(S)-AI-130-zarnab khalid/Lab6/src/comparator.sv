module comparator #(parameter N = 4)(
    input  logic [N-1:0] count,
    output logic max_reached
);

    assign max_reached = (count == {N{1'b1}}); 

endmodule