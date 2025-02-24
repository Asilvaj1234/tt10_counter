/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_counter (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

    counter #(.bits(4)) c (
        .clk(clk),
        .rst(~rst_n),
        .select(ui_in[0]),
        .count(uo_out[3:0])
    );  
    
  // All output pins must be assigned. If not used, assign to 0.
    assign uo_out[7:4] = 4'b0000;
    assign uio_out[7:0] = 8'b00000000;
 //   assign uio_oe[7:0] = 8'b00000000;
    
  // List all unused inputs to prevent warnings
    wire _unused = &{ui_in[7:1], uio_in[7:0], ena, rst_n};

endmodule
