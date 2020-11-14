`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2020 02:27:01 PM
// Design Name: 
// Module Name: mux2to1
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


module mux2to1(input [1:0] Xin,
               input sel,
               output Yout);
    
    assign Yout = (sel == 0) ? Xin[0] : 'bz;
    assign Yout = (sel == 1) ? Xin[1] : 'bz;
endmodule
