library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roach2_tut_intro/a"

entity a_entity_2ff74aa54c is
  port (
    roach2_tut_intro_a_user_data_out: in std_logic_vector(31 downto 0); 
    in_reg: out std_logic_vector(31 downto 0)
  );
end a_entity_2ff74aa54c;

architecture structural of a_entity_2ff74aa54c is
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x0: std_logic_vector(31 downto 0);
  signal roach2_tut_intro_a_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal slice_reg_y_net: std_logic_vector(31 downto 0);

begin
  roach2_tut_intro_a_user_data_out_net_x0 <= roach2_tut_intro_a_user_data_out;
  in_reg <= reint1_output_port_net_x0;

  io_delay: entity work.delay_2b0feb00fb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => roach2_tut_intro_a_user_data_out_net_x0,
      q => io_delay_q_net
    );

  reint1: entity work.reinterpret_c5d4d59b73
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_reg_y_net,
      output_port => reint1_output_port_net_x0
    );

  slice_reg: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 31,
      x_width => 32,
      y_width => 32
    )
    port map (
      x => io_delay_q_net,
      y => slice_reg_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roach2_tut_intro/b"

entity b_entity_7504096060 is
  port (
    roach2_tut_intro_b_user_data_out: in std_logic_vector(31 downto 0); 
    in_reg: out std_logic_vector(31 downto 0)
  );
end b_entity_7504096060;

architecture structural of b_entity_7504096060 is
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x0: std_logic_vector(31 downto 0);
  signal roach2_tut_intro_b_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal slice_reg_y_net: std_logic_vector(31 downto 0);

begin
  roach2_tut_intro_b_user_data_out_net_x0 <= roach2_tut_intro_b_user_data_out;
  in_reg <= reint1_output_port_net_x0;

  io_delay: entity work.delay_2b0feb00fb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => roach2_tut_intro_b_user_data_out_net_x0,
      q => io_delay_q_net
    );

  reint1: entity work.reinterpret_c5d4d59b73
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_reg_y_net,
      output_port => reint1_output_port_net_x0
    );

  slice_reg: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 31,
      x_width => 32,
      y_width => 32
    )
    port map (
      x => io_delay_q_net,
      y => slice_reg_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roach2_tut_intro/counter_ctrl"

entity counter_ctrl_entity_5afd1b77ec is
  port (
    roach2_tut_intro_counter_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    in_reg: out std_logic_vector(31 downto 0)
  );
end counter_ctrl_entity_5afd1b77ec;

architecture structural of counter_ctrl_entity_5afd1b77ec is
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x0: std_logic_vector(31 downto 0);
  signal roach2_tut_intro_counter_ctrl_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal slice_reg_y_net: std_logic_vector(31 downto 0);

begin
  roach2_tut_intro_counter_ctrl_user_data_out_net_x0 <= roach2_tut_intro_counter_ctrl_user_data_out;
  in_reg <= reint1_output_port_net_x0;

  io_delay: entity work.delay_2b0feb00fb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => roach2_tut_intro_counter_ctrl_user_data_out_net_x0,
      q => io_delay_q_net
    );

  reint1: entity work.reinterpret_c5d4d59b73
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_reg_y_net,
      output_port => reint1_output_port_net_x0
    );

  slice_reg: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 31,
      x_width => 32,
      y_width => 32
    )
    port map (
      x => io_delay_q_net,
      y => slice_reg_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roach2_tut_intro/counter_value"

entity counter_value_entity_f5c112b9ec is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    out_reg: in std_logic_vector(31 downto 0); 
    cast_gw_x0: out std_logic_vector(31 downto 0)
  );
end counter_value_entity_f5c112b9ec;

architecture structural of counter_value_entity_f5c112b9ec is
  signal assert_reg_dout_net: std_logic_vector(31 downto 0);
  signal cast_gw_dout_net_x0: std_logic_vector(31 downto 0);
  signal ce_1_sg_x0: std_logic;
  signal clk_1_sg_x0: std_logic;
  signal counter_op_net_x0: std_logic_vector(31 downto 0);
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x0 <= ce_1;
  clk_1_sg_x0 <= clk_1;
  counter_op_net_x0 <= out_reg;
  cast_gw_x0 <= cast_gw_dout_net_x0;

  assert_reg: entity work.xlpassthrough
    generic map (
      din_width => 32,
      dout_width => 32
    )
    port map (
      din => counter_op_net_x0,
      dout => assert_reg_dout_net
    );

  cast_gw: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 32,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 32,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      din => io_delay_q_net,
      en => "1",
      dout => cast_gw_dout_net_x0
    );

  io_delay: entity work.delay_2b0feb00fb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => reint1_output_port_net,
      q => io_delay_q_net
    );

  reint1: entity work.reinterpret_c5d4d59b73
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => assert_reg_dout_net,
      output_port => reint1_output_port_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roach2_tut_intro/gpio"

entity gpio_entity_d8df364e8f is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    gpio_out: in std_logic; 
    convert_x0: out std_logic
  );
end gpio_entity_d8df364e8f;

architecture structural of gpio_entity_d8df364e8f is
  signal ce_1_sg_x1: std_logic;
  signal clk_1_sg_x1: std_logic;
  signal convert_dout_net_x0: std_logic;
  signal slice_y_net_x0: std_logic;

begin
  ce_1_sg_x1 <= ce_1;
  clk_1_sg_x1 <= clk_1;
  slice_y_net_x0 <= gpio_out;
  convert_x0 <= convert_dout_net_x0;

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      din(0) => slice_y_net_x0,
      en => "1",
      dout(0) => convert_dout_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roach2_tut_intro"

entity roach2_tut_intro is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    roach2_tut_intro_a_user_data_out: in std_logic_vector(31 downto 0); 
    roach2_tut_intro_b_user_data_out: in std_logic_vector(31 downto 0); 
    roach2_tut_intro_counter_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    roach2_tut_intro_counter_value_user_data_in: out std_logic_vector(31 downto 0); 
    roach2_tut_intro_gpio1_gateway: out std_logic; 
    roach2_tut_intro_gpio2_gateway: out std_logic; 
    roach2_tut_intro_gpio3_gateway: out std_logic; 
    roach2_tut_intro_gpio_gateway: out std_logic; 
    roach2_tut_intro_sum_a_b_user_data_in: out std_logic_vector(31 downto 0)
  );
end roach2_tut_intro;

architecture structural of roach2_tut_intro is
  attribute core_generation_info: string;
  attribute core_generation_info of structural : architecture is "roach2_tut_intro,sysgen_core,{clock_period=10.00000000,clocking=Clock_Enables,compilation=NGC_Netlist,sample_periods=1.00000000000,testbench=0,total_blocks=82,xilinx_adder_subtracter_block=1,xilinx_assert_block=2,xilinx_bit_slice_extractor_block=8,xilinx_counter_block=4,xilinx_delay_block=5,xilinx_gateway_in_block=3,xilinx_gateway_out_block=6,xilinx_system_generator_block=1,xilinx_type_converter_block=6,xilinx_type_reinterpreter_block=5,}";

  signal addsub_s_net_x0: std_logic_vector(31 downto 0);
  signal ce_1_sg_x6: std_logic;
  signal clk_1_sg_x6: std_logic;
  signal counter_led1_op_net: std_logic_vector(29 downto 0);
  signal counter_led2_op_net: std_logic_vector(31 downto 0);
  signal counter_led_op_net: std_logic_vector(26 downto 0);
  signal counter_op_net_x0: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x0: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x1: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x2: std_logic_vector(31 downto 0);
  signal roach2_tut_intro_a_user_data_out_net: std_logic_vector(31 downto 0);
  signal roach2_tut_intro_b_user_data_out_net: std_logic_vector(31 downto 0);
  signal roach2_tut_intro_counter_ctrl_user_data_out_net: std_logic_vector(31 downto 0);
  signal roach2_tut_intro_counter_value_user_data_in_net: std_logic_vector(31 downto 0);
  signal roach2_tut_intro_gpio1_gateway_net: std_logic;
  signal roach2_tut_intro_gpio2_gateway_net: std_logic;
  signal roach2_tut_intro_gpio3_gateway_net: std_logic;
  signal roach2_tut_intro_gpio_gateway_net: std_logic;
  signal roach2_tut_intro_sum_a_b_user_data_in_net: std_logic_vector(31 downto 0);
  signal slice1_y_net_x0: std_logic;
  signal slice2_y_net_x0: std_logic;
  signal slice_en_y_net: std_logic;
  signal slice_rst_y_net: std_logic;
  signal slice_y_net_x1: std_logic;

begin
  ce_1_sg_x6 <= ce_1;
  clk_1_sg_x6 <= clk_1;
  roach2_tut_intro_a_user_data_out_net <= roach2_tut_intro_a_user_data_out;
  roach2_tut_intro_b_user_data_out_net <= roach2_tut_intro_b_user_data_out;
  roach2_tut_intro_counter_ctrl_user_data_out_net <= roach2_tut_intro_counter_ctrl_user_data_out;
  roach2_tut_intro_counter_value_user_data_in <= roach2_tut_intro_counter_value_user_data_in_net;
  roach2_tut_intro_gpio1_gateway <= roach2_tut_intro_gpio1_gateway_net;
  roach2_tut_intro_gpio2_gateway <= roach2_tut_intro_gpio2_gateway_net;
  roach2_tut_intro_gpio3_gateway <= roach2_tut_intro_gpio3_gateway_net;
  roach2_tut_intro_gpio_gateway <= roach2_tut_intro_gpio_gateway_net;
  roach2_tut_intro_sum_a_b_user_data_in <= roach2_tut_intro_sum_a_b_user_data_in_net;

  a_2ff74aa54c: entity work.a_entity_2ff74aa54c
    port map (
      roach2_tut_intro_a_user_data_out => roach2_tut_intro_a_user_data_out_net,
      in_reg => reint1_output_port_net_x0
    );

  addsub: entity work.xladdsub_roach2_tut_intro
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 32,
      b_arith => xlUnsigned,
      b_bin_pt => 0,
      b_width => 32,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 33,
      core_name0 => "addsb_11_0_1366619f9bb096bd",
      extra_registers => 0,
      full_s_arith => 1,
      full_s_width => 33,
      latency => 0,
      overflow => 2,
      quantization => 1,
      s_arith => xlUnsigned,
      s_bin_pt => 0,
      s_width => 32
    )
    port map (
      a => reint1_output_port_net_x0,
      b => reint1_output_port_net_x1,
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      en => "1",
      s => addsub_s_net_x0
    );

  b_7504096060: entity work.b_entity_7504096060
    port map (
      roach2_tut_intro_b_user_data_out => roach2_tut_intro_b_user_data_out_net,
      in_reg => reint1_output_port_net_x1
    );

  counter: entity work.xlcounter_free_roach2_tut_intro
    generic map (
      core_name0 => "cntr_11_0_8513360a51c30657",
      op_arith => xlUnsigned,
      op_width => 32
    )
    port map (
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      en(0) => slice_en_y_net,
      rst(0) => slice_rst_y_net,
      op => counter_op_net_x0
    );

  counter_ctrl_5afd1b77ec: entity work.counter_ctrl_entity_5afd1b77ec
    port map (
      roach2_tut_intro_counter_ctrl_user_data_out => roach2_tut_intro_counter_ctrl_user_data_out_net,
      in_reg => reint1_output_port_net_x2
    );

  counter_led: entity work.xlcounter_free_roach2_tut_intro
    generic map (
      core_name0 => "cntr_11_0_c428a25ea66a740d",
      op_arith => xlUnsigned,
      op_width => 27
    )
    port map (
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      en => "1",
      rst => "0",
      op => counter_led_op_net
    );

  counter_led1: entity work.xlcounter_free_roach2_tut_intro
    generic map (
      core_name0 => "cntr_11_0_e8ba9564db20af16",
      op_arith => xlUnsigned,
      op_width => 30
    )
    port map (
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      en => "1",
      rst => "0",
      op => counter_led1_op_net
    );

  counter_led2: entity work.xlcounter_free_roach2_tut_intro
    generic map (
      core_name0 => "cntr_11_0_8513360a51c30657",
      op_arith => xlUnsigned,
      op_width => 32
    )
    port map (
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      en => "1",
      rst => "0",
      op => counter_led2_op_net
    );

  counter_value_f5c112b9ec: entity work.counter_value_entity_f5c112b9ec
    port map (
      ce_1 => ce_1_sg_x6,
      clk_1 => clk_1_sg_x6,
      out_reg => counter_op_net_x0,
      cast_gw_x0 => roach2_tut_intro_counter_value_user_data_in_net
    );

  gpio1_10a1e7dfe8: entity work.gpio_entity_d8df364e8f
    port map (
      ce_1 => ce_1_sg_x6,
      clk_1 => clk_1_sg_x6,
      gpio_out => slice_y_net_x1,
      convert_x0 => roach2_tut_intro_gpio1_gateway_net
    );

  gpio2_feb07d9688: entity work.gpio_entity_d8df364e8f
    port map (
      ce_1 => ce_1_sg_x6,
      clk_1 => clk_1_sg_x6,
      gpio_out => slice1_y_net_x0,
      convert_x0 => roach2_tut_intro_gpio2_gateway_net
    );

  gpio3_89e328d55a: entity work.gpio_entity_d8df364e8f
    port map (
      ce_1 => ce_1_sg_x6,
      clk_1 => clk_1_sg_x6,
      gpio_out => slice2_y_net_x0,
      convert_x0 => roach2_tut_intro_gpio3_gateway_net
    );

  gpio_d8df364e8f: entity work.gpio_entity_d8df364e8f
    port map (
      ce_1 => ce_1_sg_x6,
      clk_1 => clk_1_sg_x6,
      gpio_out => slice_y_net_x1,
      convert_x0 => roach2_tut_intro_gpio_gateway_net
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 26,
      new_msb => 26,
      x_width => 27,
      y_width => 1
    )
    port map (
      x => counter_led_op_net,
      y(0) => slice_y_net_x1
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 29,
      new_msb => 29,
      x_width => 30,
      y_width => 1
    )
    port map (
      x => counter_led1_op_net,
      y(0) => slice1_y_net_x0
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 31,
      new_msb => 31,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => counter_led2_op_net,
      y(0) => slice2_y_net_x0
    );

  slice_en: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => reint1_output_port_net_x2,
      y(0) => slice_en_y_net
    );

  slice_rst: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => reint1_output_port_net_x2,
      y(0) => slice_rst_y_net
    );

  sum_a_b_578d7d79f8: entity work.counter_value_entity_f5c112b9ec
    port map (
      ce_1 => ce_1_sg_x6,
      clk_1 => clk_1_sg_x6,
      out_reg => addsub_s_net_x0,
      cast_gw_x0 => roach2_tut_intro_sum_a_b_user_data_in_net
    );

end structural;
