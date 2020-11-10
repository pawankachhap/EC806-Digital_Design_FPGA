`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2020 08:51:00 PM
// Design Name: 4:1 Multiplexer
// Module Name: mux4to1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Gate-level implementation of 4:1 mux
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux4to1(input [3:0] X,
               input [1:0] sel,
               output Y

    );
    
    wire [3:0] Z;     // for connection between AND and OR gates
    wire [1:0] _sel; // For complement of select lines
    
    not N0(_sel[0],sel[0]),
        N1(_sel[1],sel[1]);
        
    and A0(Z[0],X[0],_sel[0],_sel[1]),
        A1(Z[1],X[1],sel[0],_sel[1]),
        A2(Z[2],X[2],_sel[0],sel[1]),
        A3(Z[3],X[3],sel[0],sel[1]);
        
    or OUT(Y,Z[0],Z[1],Z[2],Z[3]);
    
endmodule