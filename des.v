`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.01.2024 15:17:29
// Design Name: 
// Module Name: des
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
module des(
    input clk,
    input reset,  
    output reg [4:0] q
    );
    /*wire w1,w2,w3,w4,w5,w6,w7;
    assign w4=q[0];
    assign w1=w4^0;
    assign w2=q[4];
    assign w3=q[3];
    assign w5=w3^w5;
    assign w6=q[2];
    assign w7=q[1];*/
    always @ (posedge clk) begin
    if(reset)
    q<=5'h00001;
    else begin
    /*q[4]=w1;
    q[3]=w2;
    q[2]=w5;
    q[1]=w6;
    q[0]=w7;*/
    q[4]<=q[0]^0;
    q[3]<=q[4];
    q[2]<=q[3]^q[0];
    q[1]<=q[2];
    q[0]<=q[1];
    end
    end
    
endmodule
