`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2024 09:47:40
// Design Name: 
// Module Name: tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb(

    );
    reg clk,reset;
    wire [4:0] q;
    designn dut(.clk(clk),.reset(reset),.q(q));
    always #5 clk=~clk;
    initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $display("time=%0t reset=%b q=%b",$time,reset,q);
    clk<=0;
    reset<=0;
    #100 $finish;
    end
endmodule
