`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2020 02:27:01 PM
// Design Name: 
// Module Name: dec2to4
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


module dec2to4(input [1:0] Xin,
               input _en,   // active-low enable signal
               output [3:0] Yout);
               
    assign Yout[0] = (_en == 0 && Xin == 0)? _en : 1,
           Yout[1] = (_en == 0 && Xin == 1)? _en : 1,
           Yout[2] = (_en == 0 && Xin == 2)? _en : 1,
           Yout[3] = (_en == 0 && Xin == 3)? _en : 1;
    
endmodule
