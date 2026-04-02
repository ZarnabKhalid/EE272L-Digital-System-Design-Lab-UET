module mux #(parameter N = 4)(
    input  logic mode, // 0 = wrap, 1 = saturated
    input  logic [N-1:0] normal,
    input  logic [N-1:0] max_val,
    input  logic [N-1:0] zero,
    output logic [N-1:0] out
);

    always_comb begin
        if (mode == 0) begin // WRAP
            out = (normal == max_val) ? zero : normal;
        end
        else begin // SATURATED
            out = (normal == max_val) ? max_val : normal;
        end
    end

endmodule