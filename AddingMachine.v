module AddingMachine (
    input clk, reset,
    input [7:0] data_in,
    input [5:0] addr_in,
    output [5:0] addr_out,
    output [7:0] data_out
);
    wire [7:0] ac_out, ir_out, alu_out;
    wire [5:0] pc_out;
    wire rd_mem, wr_mem, ld_ac, ld_ir, ld_pc, inc_pc, pass, add;

    AC AC1 (clk, reset, ld_ac, alu_out, ac_out);
    IR IR1 (clk, reset, ld_ir, data_in, ir_out);
    PC PC1 (clk, reset, inc_pc, ld_pc, addr_in, pc_out);
    ALU ALU1 (pass,add, ac_out, ir_out, alu_out);
    controller CTRL (clk, reset, ir_out, rd_mem, wr_mem, ld_ac, ld_ir, ld_pc, inc_pc, pass, add);

    assign addr_out = pc_out;
    assign data_out = ac_out;
endmodule
