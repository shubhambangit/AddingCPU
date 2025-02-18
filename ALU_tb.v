module ALU_tb;
    reg [7:0] ac, ir;
    reg pass, add;
    wire [7:0] alu_out;

    ALU uut (pass,add,ac,ir,alu_out);

    initial begin
        ac = 8'h10; ir = 8'h20; pass = 0; add = 0;
        #10 pass = 1; add = 0; // Pass
        #10 pass = 0; add = 1; // Addition
        #10 pass = 1; add = 1; // Undefined behavior
        #10 $finish;
    end
endmodule
