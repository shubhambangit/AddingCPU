module AC (input [7:0] din, input ld_ac,clk,rst, output reg [7:0] out);
	always @(posedge clk or negedge rst) begin
		if(!rst)
			out<=0;
		else if(ld_ac)
			out<=din;
	end
endmodule
