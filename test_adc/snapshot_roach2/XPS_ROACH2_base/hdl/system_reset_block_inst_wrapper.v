//-----------------------------------------------------------------------------
// system_reset_block_inst_wrapper.v
//-----------------------------------------------------------------------------

module system_reset_block_inst_wrapper
  (
    clk,
    ip_async_reset_i,
    ip_reset_i,
    op_reset_o
  );
  input clk;
  input ip_async_reset_i;
  input ip_reset_i;
  output op_reset_o;

  reset_block
    #(
      .WIDTH ( 1000 )
    )
    reset_block_inst (
      .clk ( clk ),
      .ip_async_reset_i ( ip_async_reset_i ),
      .ip_reset_i ( ip_reset_i ),
      .op_reset_o ( op_reset_o )
    );

endmodule

