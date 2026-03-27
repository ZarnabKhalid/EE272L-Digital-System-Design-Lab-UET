module decoder_sel (
    input  logic [2:0] sel,
    output logic [7:0] an
);
    always_comb begin
        case(sel)
            3'b000: an = 8'b11111110;
            3'b001: an = 8'b11111101;
            3'b010: an = 8'b11111011;
            3'b011: an = 8'b11110111;
            3'b100: an = 8'b11101111;
            3'b101: an = 8'b11011111;
            3'b110: an = 8'b10111111;
            3'b111: an = 8'b01111111;
            default: an = 8'b11111111;
        endcase
    end
endmodule