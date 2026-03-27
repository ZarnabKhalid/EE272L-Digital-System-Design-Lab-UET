module top_module (
    input  logic [3:0] x,     
    input  logic [2:0] sel,   
    output logic [6:0] seg,    
    output logic [7:0] an      
);

    logic [3:0] p;

    multiplier mult_inst (.x(x), .p(p));

    seven_seg_decoder ssd_inst (.bin(p), .seg(seg));

    decoder_sel an_inst (.sel(sel), .an(an));

endmodule