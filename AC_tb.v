module AC_tb;
    reg clk, rst, ld_ac;
    reg [7:0] data_in;
    wire [7:0] ac_out;

    AC uut (data_in,ld_ac,clk,rst,out);

    always #5 clk = ~clk; // Clock generation

    initial begin
        clk = 0; rst = 0; ld_ac = 0; data_in = 8'h00;
        #10 rst = 1;
        #10 ld_ac = 1; data_in = 8'hA5;
        #10 ld_ac = 0;
        #10 ld_ac = 1; data_in = 8'h3C;
        #10 $finish;
    end
endmodule
