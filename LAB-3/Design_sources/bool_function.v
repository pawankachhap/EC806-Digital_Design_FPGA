`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2020 09:03:01 PM
// Design Name: 
// Module Name: bool_function
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


module bool_function(input v,w,x,y,z,
                     output reg Fout);
    
    // F(v,w,x,y,z) = SOP(0,2,3,4,8,21,22,29,31)
    always @(*) begin
      Fout = (~v&~w&~x&~y&~z)|(~v&~w&~x&y&~z)|(~v&~w&~x&y&z)|(~v&~w&x&~y&~z)
             |(~v&w&~x&~y&~z)|(v&~w&x&~y&z)|(v&~w&x&y&~z)|(v&w&x&~y&z)|(v&w&x&y&z);
    end
endmodule
