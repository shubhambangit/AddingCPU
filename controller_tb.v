module controller_tb;
	wire clk, reset,
    	wire [7:0] ir,
    	reg rd_mem, wr_mem, ld_ac, ld_ir, ld_pc, inc_pc, pass, add;

	controller uut(clk,reset,ir,rd_mem, wr_mem, ld_ac, ld_ir, ld_pc, inc_pc, pass, add);

	always #5 clk=~clk;

	initial begin
		clk=0;
		rd_mem = 0; wr_mem = 0; ld_ac = 0; ld_ir = 0;
            	ld_pc = 0; inc_pc = 0; pass = 0; add = 0;

		#10;

		rd_mem = 1; ld_ac = 1;
		#10;
		rd_mem = 1; add = 1; ld_ac = 1;
		#10;
		
		wr_mem = 1;rd_mem = 0; add = 0; ld_ac = 0;
		#10;
		pass = 1; ld_ac = 1;wr_mem = 0;
		#20;

	end
endmodule

