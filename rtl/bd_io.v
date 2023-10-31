module bd_buf # (
  parameter BUS_WIDTH = 16
) (
  output [BUS_WIDTH-1:0] s_in,
  input [BUS_WIDTH-1:0] s_out,
  input [BUS_WIDTH-1:0] s_oen,
  inout [BUS_WIDTH-1:0] io
);

genvar i;
for (i=0; i<BUS_WIDTH; i=i+1) begin
  assign io[i] = (s_oen[i]) ? s_out: 1'bz;
  assign s_in[i] = io[i];
end

endmodule
