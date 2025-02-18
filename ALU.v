module ALU (input pass,add, input [7:0]ac, input [5:0] ir, output reg [13:0] out);
	always @(ac or ir) begin	
		if(pass)
			out=ir;
		else if(add)
			out=ac+ir;
		else
			out=0;
	end
endmodule
