module controller (
    input clk, reset,
    input [7:0] ir,
    output reg rd_mem, wr_mem, ld_ac, ld_ir, ld_pc, inc_pc, pass, add
);
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            rd_mem <= 0; wr_mem <= 0; ld_ac <= 0; ld_ir <= 0;
            ld_pc <= 0; inc_pc <= 0; pass <= 0; add <= 0;
        end
        else begin
            case (ir[7:6])  
                2'b00: begin 
                    rd_mem <= 1; ld_ac <= 1;
                end
                2'b01: begin 
                    rd_mem <= 1; add <= 1; ld_ac <= 1;
                end
                2'b10: begin 
                    wr_mem <= 1;
                end
                2'b11: begin 
                    pass <= 1; ld_ac <= 1;
                end
                default: begin
                    rd_mem <= 0; wr_mem <= 0; ld_ac <= 0; ld_ir <= 0;
                    ld_pc <= 0; inc_pc <= 0; pass <= 0; add <= 0;
                end
            endcase
        end
    end
endmodule
