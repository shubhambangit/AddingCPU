module PC(input clk,rst,inc_pc,ld_pc, input [5:0] addr_in, output reg [5:0] pc_out);
	always @(posedge clk or negedge rst) begin
		if(!rst)
			pc_out<=6'b0;
		else if (ld_pc)
			pc_out<=addr_in;
		else if (inc_pc)
			pc_out<=pc_out+1;
	end
endmodule
