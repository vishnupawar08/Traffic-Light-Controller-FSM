`timescale 1ns/1ps

module tb;

reg clk;
reg rst;
wire [2:0] NS;
wire [2:0] EW;

traffic_light uut (
    .clk(clk),
    .rst(rst),
    .NS(NS),
    .EW(EW)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    rst = 1;
    #10 rst = 0;
    #300 $finish;
end

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb);
end

endmodule