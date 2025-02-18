module IR(input [7:0] din, input clk,ld_ir,rst, output reg [7:0] out);
	always @(posedge clk or negedge rst) begin
		if(!rst)
			out<=0;
		else if (ld_ir)
			out<=din;
	end
endmodule
