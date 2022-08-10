`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/11/2022 10:36:13 AM
// Design Name: 
// Module Name: debouncer
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


module debouncer(input clk, in, output out);
reg D0, D1, D2;

always@(posedge clk) begin
 D0 <= in;
 D1 <= D0;
 D2 <= D1;
end
assign out = D0&D1&D2;
endmodule
