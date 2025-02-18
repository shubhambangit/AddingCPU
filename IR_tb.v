module IR_tb;
    reg clk, rst, ld_ir;
    reg [7:0] data_in;
    wire [7:0] ir_out;

    IR uut (data_in,clk,ld_ir,rst,ir_out);

    always #5 clk = ~clk;

    initial begin
        clk = 0; rst = 0; ld_ir = 0; data_in = 8'h00;
        #10 rst = 1;
        #10 ld_ir = 1; data_in = 8'hF0;
        #10 ld_ir = 0;
        #10 ld_ir = 1; data_in = 8'h55;
        #10 $finish;
    end
endmodule
