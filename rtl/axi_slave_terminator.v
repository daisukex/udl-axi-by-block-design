module axi_slave_terminator (
  output [31:0] REG_RDATA,
  output REG_WACCERR,
  output REG_RACCERR,
  output REG_RWAIT
);

assign REG_RDATA = 32'h0;
assign REG_WACCERR = 1'b0;
assign REG_RACCERR = 1'b0;
assign REG_RWAIT = 1'b0;

endmodule
