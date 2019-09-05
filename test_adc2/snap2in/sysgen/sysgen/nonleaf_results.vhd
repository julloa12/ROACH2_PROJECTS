library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "snap2in/adc_mkid_4x1/conv"

entity conv_entity_2e1c115097 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(11 downto 0); 
    out1: out std_logic_vector(11 downto 0)
  );
end conv_entity_2e1c115097;

architecture structural of conv_entity_2e1c115097 is
  signal ce_1_sg_x0: std_logic;
  signal clk_1_sg_x0: std_logic;
  signal concat_y_net: std_logic_vector(11 downto 0);
  signal inverter_op_net: std_logic;
  signal reinterpret_output_port_net_x0: std_logic_vector(11 downto 0);
  signal slice1_y_net: std_logic_vector(10 downto 0);
  signal slice_y_net: std_logic;
  signal snap2in_adc_mkid_4x1_user_data_i0_net_x0: std_logic_vector(11 downto 0);

begin
  ce_1_sg_x0 <= ce_1;
  clk_1_sg_x0 <= clk_1;
  snap2in_adc_mkid_4x1_user_data_i0_net_x0 <= in1;
  out1 <= reinterpret_output_port_net_x0;

  concat: entity work.concat_9769d05421
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0(0) => inverter_op_net,
      in1 => slice1_y_net,
      y => concat_y_net
    );

  inverter: entity work.inverter_e2b989a05e
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      ip(0) => slice_y_net,
      op(0) => inverter_op_net
    );

  reinterpret: entity work.reinterpret_8f5500aea5
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => concat_y_net,
      output_port => reinterpret_output_port_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 11,
      new_msb => 11,
      x_width => 12,
      y_width => 1
    )
    port map (
      x => snap2in_adc_mkid_4x1_user_data_i0_net_x0,
      y(0) => slice_y_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 10,
      x_width => 12,
      y_width => 11
    )
    port map (
      x => snap2in_adc_mkid_4x1_user_data_i0_net_x0,
      y => slice1_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "snap2in/adc_mkid_4x1"

entity adc_mkid_4x1_entity_ec81f44fe6 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    snap2in_adc_mkid_4x1_user_data_i0: in std_logic_vector(11 downto 0); 
    snap2in_adc_mkid_4x1_user_data_i1: in std_logic_vector(11 downto 0); 
    snap2in_adc_mkid_4x1_user_data_i2: in std_logic_vector(11 downto 0); 
    snap2in_adc_mkid_4x1_user_data_i3: in std_logic_vector(11 downto 0); 
    snap2in_adc_mkid_4x1_user_data_q0: in std_logic_vector(11 downto 0); 
    snap2in_adc_mkid_4x1_user_data_q1: in std_logic_vector(11 downto 0); 
    snap2in_adc_mkid_4x1_user_data_q2: in std_logic_vector(11 downto 0); 
    snap2in_adc_mkid_4x1_user_data_q3: in std_logic_vector(11 downto 0); 
    data_i0: out std_logic_vector(11 downto 0); 
    data_i1: out std_logic_vector(11 downto 0); 
    data_i2: out std_logic_vector(11 downto 0); 
    data_i3: out std_logic_vector(11 downto 0); 
    data_q0: out std_logic_vector(11 downto 0); 
    data_q1: out std_logic_vector(11 downto 0); 
    data_q2: out std_logic_vector(11 downto 0); 
    data_q3: out std_logic_vector(11 downto 0)
  );
end adc_mkid_4x1_entity_ec81f44fe6;

architecture structural of adc_mkid_4x1_entity_ec81f44fe6 is
  signal ce_1_sg_x8: std_logic;
  signal clk_1_sg_x8: std_logic;
  signal reinterpret_output_port_net_x10: std_logic_vector(11 downto 0);
  signal reinterpret_output_port_net_x11: std_logic_vector(11 downto 0);
  signal reinterpret_output_port_net_x12: std_logic_vector(11 downto 0);
  signal reinterpret_output_port_net_x13: std_logic_vector(11 downto 0);
  signal reinterpret_output_port_net_x14: std_logic_vector(11 downto 0);
  signal reinterpret_output_port_net_x15: std_logic_vector(11 downto 0);
  signal reinterpret_output_port_net_x8: std_logic_vector(11 downto 0);
  signal reinterpret_output_port_net_x9: std_logic_vector(11 downto 0);
  signal snap2in_adc_mkid_4x1_user_data_i0_net_x1: std_logic_vector(11 downto 0);
  signal snap2in_adc_mkid_4x1_user_data_i1_net_x1: std_logic_vector(11 downto 0);
  signal snap2in_adc_mkid_4x1_user_data_i2_net_x1: std_logic_vector(11 downto 0);
  signal snap2in_adc_mkid_4x1_user_data_i3_net_x1: std_logic_vector(11 downto 0);
  signal snap2in_adc_mkid_4x1_user_data_q0_net_x1: std_logic_vector(11 downto 0);
  signal snap2in_adc_mkid_4x1_user_data_q1_net_x1: std_logic_vector(11 downto 0);
  signal snap2in_adc_mkid_4x1_user_data_q2_net_x1: std_logic_vector(11 downto 0);
  signal snap2in_adc_mkid_4x1_user_data_q3_net_x1: std_logic_vector(11 downto 0);

begin
  ce_1_sg_x8 <= ce_1;
  clk_1_sg_x8 <= clk_1;
  snap2in_adc_mkid_4x1_user_data_i0_net_x1 <= snap2in_adc_mkid_4x1_user_data_i0;
  snap2in_adc_mkid_4x1_user_data_i1_net_x1 <= snap2in_adc_mkid_4x1_user_data_i1;
  snap2in_adc_mkid_4x1_user_data_i2_net_x1 <= snap2in_adc_mkid_4x1_user_data_i2;
  snap2in_adc_mkid_4x1_user_data_i3_net_x1 <= snap2in_adc_mkid_4x1_user_data_i3;
  snap2in_adc_mkid_4x1_user_data_q0_net_x1 <= snap2in_adc_mkid_4x1_user_data_q0;
  snap2in_adc_mkid_4x1_user_data_q1_net_x1 <= snap2in_adc_mkid_4x1_user_data_q1;
  snap2in_adc_mkid_4x1_user_data_q2_net_x1 <= snap2in_adc_mkid_4x1_user_data_q2;
  snap2in_adc_mkid_4x1_user_data_q3_net_x1 <= snap2in_adc_mkid_4x1_user_data_q3;
  data_i0 <= reinterpret_output_port_net_x8;
  data_i1 <= reinterpret_output_port_net_x9;
  data_i2 <= reinterpret_output_port_net_x12;
  data_i3 <= reinterpret_output_port_net_x13;
  data_q0 <= reinterpret_output_port_net_x10;
  data_q1 <= reinterpret_output_port_net_x11;
  data_q2 <= reinterpret_output_port_net_x14;
  data_q3 <= reinterpret_output_port_net_x15;

  conv1_be5450d9e9: entity work.conv_entity_2e1c115097
    port map (
      ce_1 => ce_1_sg_x8,
      clk_1 => clk_1_sg_x8,
      in1 => snap2in_adc_mkid_4x1_user_data_i1_net_x1,
      out1 => reinterpret_output_port_net_x9
    );

  conv2_af7fd2e9b0: entity work.conv_entity_2e1c115097
    port map (
      ce_1 => ce_1_sg_x8,
      clk_1 => clk_1_sg_x8,
      in1 => snap2in_adc_mkid_4x1_user_data_q0_net_x1,
      out1 => reinterpret_output_port_net_x10
    );

  conv3_6b48e2ae53: entity work.conv_entity_2e1c115097
    port map (
      ce_1 => ce_1_sg_x8,
      clk_1 => clk_1_sg_x8,
      in1 => snap2in_adc_mkid_4x1_user_data_q1_net_x1,
      out1 => reinterpret_output_port_net_x11
    );

  conv4_4809b11463: entity work.conv_entity_2e1c115097
    port map (
      ce_1 => ce_1_sg_x8,
      clk_1 => clk_1_sg_x8,
      in1 => snap2in_adc_mkid_4x1_user_data_i2_net_x1,
      out1 => reinterpret_output_port_net_x12
    );

  conv5_c040ed6c13: entity work.conv_entity_2e1c115097
    port map (
      ce_1 => ce_1_sg_x8,
      clk_1 => clk_1_sg_x8,
      in1 => snap2in_adc_mkid_4x1_user_data_i3_net_x1,
      out1 => reinterpret_output_port_net_x13
    );

  conv6_a29ccffd36: entity work.conv_entity_2e1c115097
    port map (
      ce_1 => ce_1_sg_x8,
      clk_1 => clk_1_sg_x8,
      in1 => snap2in_adc_mkid_4x1_user_data_q2_net_x1,
      out1 => reinterpret_output_port_net_x14
    );

  conv7_3916fb4beb: entity work.conv_entity_2e1c115097
    port map (
      ce_1 => ce_1_sg_x8,
      clk_1 => clk_1_sg_x8,
      in1 => snap2in_adc_mkid_4x1_user_data_q3_net_x1,
      out1 => reinterpret_output_port_net_x15
    );

  conv_2e1c115097: entity work.conv_entity_2e1c115097
    port map (
      ce_1 => ce_1_sg_x8,
      clk_1 => clk_1_sg_x8,
      in1 => snap2in_adc_mkid_4x1_user_data_i0_net_x1,
      out1 => reinterpret_output_port_net_x8
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "snap2in/adcsnap0/add_gen/edge_detect"

entity edge_detect_entity_ae894edbdc is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end edge_detect_entity_ae894edbdc;

architecture structural of edge_detect_entity_ae894edbdc is
  signal ce_1_sg_x9: std_logic;
  signal clk_1_sg_x9: std_logic;
  signal delay_q_net: std_logic;
  signal edge_op_y_net_x0: std_logic;
  signal inverter_op_net: std_logic;
  signal slice3_y_net_x0: std_logic;

begin
  ce_1_sg_x9 <= ce_1;
  clk_1_sg_x9 <= clk_1;
  slice3_y_net_x0 <= in_x0;
  out_x0 <= edge_op_y_net_x0;

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x9,
      clk => clk_1_sg_x9,
      d(0) => slice3_y_net_x0,
      en => '1',
      rst => '1',
      q(0) => delay_q_net
    );

  edge_op: entity work.logical_f6397bdee1
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => inverter_op_net,
      d1(0) => delay_q_net,
      y(0) => edge_op_y_net_x0
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x9,
      clk => clk_1_sg_x9,
      clr => '0',
      ip(0) => slice3_y_net_x0,
      op(0) => inverter_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "snap2in/adcsnap0/add_gen"

entity add_gen_entity_e00c7fa4f8 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    cont: in std_logic; 
    din: in std_logic_vector(127 downto 0); 
    go: in std_logic; 
    init: in std_logic; 
    we: in std_logic; 
    add: out std_logic_vector(15 downto 0); 
    dout: out std_logic_vector(127 downto 0); 
    status: out std_logic_vector(31 downto 0); 
    we_o: out std_logic
  );
end add_gen_entity_e00c7fa4f8;

architecture structural of add_gen_entity_e00c7fa4f8 is
  signal add_gen_op_net: std_logic_vector(20 downto 0);
  signal ce_1_sg_x10: std_logic;
  signal clk_1_sg_x10: std_logic;
  signal concat_y_net_x0: std_logic_vector(31 downto 0);
  signal convert_dout_net: std_logic_vector(10 downto 0);
  signal delay10_q_net_x0: std_logic;
  signal delay16_q_net_x0: std_logic;
  signal delay1_q_net: std_logic_vector(19 downto 0);
  signal delay3_q_net: std_logic;
  signal delay3_q_net_x1: std_logic;
  signal delay4_q_net: std_logic;
  signal delay6_q_net_x0: std_logic_vector(127 downto 0);
  signal delay9_q_net_x0: std_logic_vector(127 downto 0);
  signal delay_q_net: std_logic;
  signal edge_op_y_net_x0: std_logic;
  signal inverter1_op_net: std_logic;
  signal inverter_op_net: std_logic;
  signal logical1_y_net: std_logic;
  signal logical4_y_net: std_logic;
  signal logical6_y_net_x0: std_logic;
  signal register5_q_net: std_logic;
  signal register_q_net_x0: std_logic;
  signal shift_op_net: std_logic_vector(10 downto 0);
  signal slice1_y_net: std_logic_vector(19 downto 0);
  signal slice2_y_net_x0: std_logic_vector(15 downto 0);
  signal slice3_y_net_x0: std_logic;

begin
  ce_1_sg_x10 <= ce_1;
  clk_1_sg_x10 <= clk_1;
  delay10_q_net_x0 <= cont;
  delay9_q_net_x0 <= din;
  register_q_net_x0 <= go;
  delay3_q_net_x1 <= init;
  delay16_q_net_x0 <= we;
  add <= slice2_y_net_x0;
  dout <= delay6_q_net_x0;
  status <= concat_y_net_x0;
  we_o <= logical6_y_net_x0;

  add_gen: entity work.xlcounter_free_snap2in
    generic map (
      core_name0 => "cntr_11_0_aa4bb8a7567a9dd3",
      op_arith => xlUnsigned,
      op_width => 21
    )
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      en(0) => logical6_y_net_x0,
      rst(0) => delay4_q_net,
      op => add_gen_op_net
    );

  concat: entity work.concat_dd8e77b436
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => shift_op_net,
      in1(0) => inverter_op_net,
      in2 => delay1_q_net,
      y => concat_y_net_x0
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 11,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      din(0) => register5_q_net,
      en => "1",
      dout => convert_dout_net
    );

  delay: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      d(0) => delay4_q_net,
      q(0) => delay_q_net
    );

  delay1: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 20
    )
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      d => slice1_y_net,
      en => '1',
      rst => '1',
      q => delay1_q_net
    );

  delay3: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      d(0) => delay10_q_net_x0,
      q(0) => delay3_q_net
    );

  delay4: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      d(0) => delay3_q_net_x1,
      q(0) => delay4_q_net
    );

  delay6: entity work.delay_ee0f706095
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      d => delay9_q_net_x0,
      q => delay6_q_net_x0
    );

  edge_detect_ae894edbdc: entity work.edge_detect_entity_ae894edbdc
    port map (
      ce_1 => ce_1_sg_x10,
      clk_1 => clk_1_sg_x10,
      in_x0 => slice3_y_net_x0,
      out_x0 => edge_op_y_net_x0
    );

  inverter: entity work.inverter_6844eee868
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      ip(0) => register5_q_net,
      op(0) => inverter_op_net
    );

  inverter1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      ip(0) => edge_op_y_net_x0,
      op(0) => inverter1_op_net
    );

  logical1: entity work.logical_799f62af22
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      d0(0) => delay16_q_net_x0,
      d1(0) => register_q_net_x0,
      y(0) => logical1_y_net
    );

  logical4: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay3_q_net,
      d1(0) => inverter1_op_net,
      y(0) => logical4_y_net
    );

  logical6: entity work.logical_954ee29728
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => register5_q_net,
      d1(0) => logical4_y_net,
      d2(0) => logical1_y_net,
      y(0) => logical6_y_net_x0
    );

  register5: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"1"
    )
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      d(0) => delay3_q_net,
      en(0) => edge_op_y_net_x0,
      rst(0) => delay_q_net,
      q(0) => register5_q_net
    );

  shift: entity work.shift_9139524f83
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      ip => convert_dout_net,
      op => shift_op_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 19,
      x_width => 21,
      y_width => 20
    )
    port map (
      x => add_gen_op_net,
      y => slice1_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 4,
      new_msb => 19,
      x_width => 21,
      y_width => 16
    )
    port map (
      x => add_gen_op_net,
      y => slice2_y_net_x0
    );

  slice3: entity work.xlslice
    generic map (
      new_lsb => 20,
      new_msb => 20,
      x_width => 21,
      y_width => 1
    )
    port map (
      x => add_gen_op_net,
      y(0) => slice3_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "snap2in/adcsnap0/basic_ctrl/dram_munge"

entity dram_munge_entity_7ac0030401 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(127 downto 0); 
    init: in std_logic; 
    we: in std_logic; 
    dout: out std_logic_vector(127 downto 0); 
    we_o: out std_logic
  );
end dram_munge_entity_7ac0030401;

architecture structural of dram_munge_entity_7ac0030401 is
  signal cast_dout_net_x0: std_logic_vector(127 downto 0);
  signal ce_1_sg_x11: std_logic;
  signal clk_1_sg_x11: std_logic;
  signal con0_op_net: std_logic_vector(1 downto 0);
  signal con1_op_net: std_logic_vector(1 downto 0);
  signal con2_op_net: std_logic_vector(1 downto 0);
  signal con3_op_net: std_logic_vector(1 downto 0);
  signal concat1_y_net: std_logic_vector(271 downto 0);
  signal concat_y_net: std_logic_vector(271 downto 0);
  signal constant_op_net: std_logic_vector(7 downto 0);
  signal data_choice_y_net_x0: std_logic_vector(127 downto 0);
  signal delay1_q_net: std_logic;
  signal delay_q_net: std_logic;
  signal dout_count_op_net: std_logic;
  signal dram_op_net: std_logic;
  signal edge_op_y_net_x0: std_logic;
  signal input_count_op_net: std_logic_vector(1 downto 0);
  signal logical1_y_net: std_logic;
  signal logical_y_net: std_logic;
  signal mux1_y_net_x0: std_logic_vector(271 downto 0);
  signal mux1_y_net_x1: std_logic;
  signal register1_q_net: std_logic_vector(127 downto 0);
  signal register2_q_net: std_logic_vector(127 downto 0);
  signal register3_q_net: std_logic_vector(127 downto 0);
  signal register_q_net: std_logic_vector(127 downto 0);
  signal relational1_op_net: std_logic;
  signal relational2_op_net: std_logic;
  signal relational3_op_net: std_logic;
  signal relational_op_net: std_logic;
  signal we_choice_y_net_x0: std_logic;

begin
  ce_1_sg_x11 <= ce_1;
  clk_1_sg_x11 <= clk_1;
  cast_dout_net_x0 <= din;
  edge_op_y_net_x0 <= init;
  mux1_y_net_x1 <= we;
  dout <= data_choice_y_net_x0;
  we_o <= we_choice_y_net_x0;

  con0: entity work.constant_cda50df78a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => con0_op_net
    );

  con1: entity work.constant_a7e2bb9e12
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => con1_op_net
    );

  con2: entity work.constant_e8ddc079e9
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => con2_op_net
    );

  con3: entity work.constant_3a9a3daeb9
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => con3_op_net
    );

  concat: entity work.concat_fd1ce36c4a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => constant_op_net,
      in1 => register_q_net,
      in2 => constant_op_net,
      in3 => register1_q_net,
      y => concat_y_net
    );

  concat1: entity work.concat_fd1ce36c4a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => constant_op_net,
      in1 => register2_q_net,
      in2 => constant_op_net,
      in3 => register3_q_net,
      y => concat1_y_net
    );

  constant_x0: entity work.constant_91ef1678ca
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  data_choice: entity work.mux_5441ad2d93
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => cast_dout_net_x0,
      d1 => mux1_y_net_x0,
      sel(0) => dram_op_net,
      y => data_choice_y_net_x0
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      d(0) => logical_y_net,
      en => '1',
      rst => '1',
      q(0) => delay_q_net
    );

  delay1: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      d(0) => logical1_y_net,
      en => '1',
      rst => '1',
      q(0) => delay1_q_net
    );

  dout_count: entity work.counter_caa2b01eef
    port map (
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      clr => '0',
      en(0) => logical1_y_net,
      rst(0) => edge_op_y_net_x0,
      op(0) => dout_count_op_net
    );

  dram: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => dram_op_net
    );

  input_count: entity work.xlcounter_free_snap2in
    generic map (
      core_name0 => "cntr_11_0_541f86689cddfa59",
      op_arith => xlUnsigned,
      op_width => 2
    )
    port map (
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      clr => '0',
      en(0) => mux1_y_net_x1,
      rst(0) => edge_op_y_net_x0,
      op => input_count_op_net
    );

  logical: entity work.logical_799f62af22
    port map (
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      clr => '0',
      d0(0) => relational3_op_net,
      d1(0) => mux1_y_net_x1,
      y(0) => logical_y_net
    );

  logical1: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical_y_net,
      d1(0) => delay_q_net,
      y(0) => logical1_y_net
    );

  mux1: entity work.mux_ddf27bda35
    port map (
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      clr => '0',
      d0 => concat_y_net,
      d1 => concat1_y_net,
      sel(0) => dout_count_op_net,
      y => mux1_y_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 128,
      init_value => b"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      d => cast_dout_net_x0,
      en(0) => relational1_op_net,
      rst => "0",
      q => register1_q_net
    );

  register2: entity work.xlregister
    generic map (
      d_width => 128,
      init_value => b"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      d => cast_dout_net_x0,
      en(0) => relational2_op_net,
      rst => "0",
      q => register2_q_net
    );

  register3: entity work.xlregister
    generic map (
      d_width => 128,
      init_value => b"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      d => cast_dout_net_x0,
      en(0) => relational3_op_net,
      rst => "0",
      q => register3_q_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 128,
      init_value => b"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      d => cast_dout_net_x0,
      en(0) => relational_op_net,
      rst => "0",
      q => register_q_net
    );

  relational: entity work.relational_5f1eb17108
    port map (
      a => input_count_op_net,
      b => con0_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_5f1eb17108
    port map (
      a => input_count_op_net,
      b => con1_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net
    );

  relational2: entity work.relational_5f1eb17108
    port map (
      a => input_count_op_net,
      b => con2_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational2_op_net
    );

  relational3: entity work.relational_5f1eb17108
    port map (
      a => input_count_op_net,
      b => con3_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational3_op_net
    );

  we_choice: entity work.mux_d99e59b6d4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => mux1_y_net_x1,
      d1(0) => delay1_q_net,
      sel(0) => dram_op_net,
      y(0) => we_choice_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "snap2in/adcsnap0/basic_ctrl/edge_detect"

entity edge_detect_entity_663cc1f7c1 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end edge_detect_entity_663cc1f7c1;

architecture structural of edge_detect_entity_663cc1f7c1 is
  signal ce_1_sg_x12: std_logic;
  signal clk_1_sg_x12: std_logic;
  signal delay1_q_net_x0: std_logic;
  signal delay_q_net: std_logic;
  signal edge_op_y_net_x1: std_logic;
  signal inverter_op_net: std_logic;

begin
  ce_1_sg_x12 <= ce_1;
  clk_1_sg_x12 <= clk_1;
  delay1_q_net_x0 <= in_x0;
  out_x0 <= edge_op_y_net_x1;

  delay: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      clr => '0',
      d(0) => delay1_q_net_x0,
      q(0) => delay_q_net
    );

  edge_op: entity work.logical_dfe2dded7f
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => inverter_op_net,
      d1(0) => delay_q_net,
      y(0) => edge_op_y_net_x1
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      clr => '0',
      ip(0) => delay1_q_net_x0,
      op(0) => inverter_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "snap2in/adcsnap0/basic_ctrl"

entity basic_ctrl_entity_d63045b576 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    ctrl: in std_logic_vector(31 downto 0); 
    din: in std_logic_vector(127 downto 0); 
    we: in std_logic; 
    dout: out std_logic_vector(127 downto 0); 
    go: out std_logic; 
    init: out std_logic; 
    we_o: out std_logic
  );
end basic_ctrl_entity_d63045b576;

architecture structural of basic_ctrl_entity_d63045b576 is
  signal cast_dout_net_x1: std_logic_vector(127 downto 0);
  signal ce_1_sg_x13: std_logic;
  signal clk_1_sg_x13: std_logic;
  signal constant1_op_net: std_logic;
  signal constant2_op_net_x0: std_logic;
  signal constant2_op_net_x1: std_logic;
  signal constant_op_net: std_logic;
  signal data_choice_y_net_x1: std_logic_vector(127 downto 0);
  signal delay1_q_net_x0: std_logic;
  signal delay2_q_net: std_logic;
  signal delay3_q_net: std_logic;
  signal edge_op_y_net_x2: std_logic;
  signal enable_y_net: std_logic;
  signal inverter_op_net: std_logic;
  signal logical_y_net: std_logic;
  signal mux1_y_net_x1: std_logic;
  signal mux2_y_net: std_logic;
  signal register1_q_net: std_logic;
  signal register6_q_net_x0: std_logic;
  signal reint1_output_port_net_x0: std_logic_vector(31 downto 0);
  signal trig_src_y_net: std_logic;
  signal valid_src_y_net: std_logic;
  signal we_choice_y_net_x1: std_logic;

begin
  ce_1_sg_x13 <= ce_1;
  clk_1_sg_x13 <= clk_1;
  reint1_output_port_net_x0 <= ctrl;
  cast_dout_net_x1 <= din;
  constant2_op_net_x1 <= we;
  dout <= data_choice_y_net_x1;
  go <= register6_q_net_x0;
  init <= edge_op_y_net_x2;
  we_o <= we_choice_y_net_x1;

  constant1: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant1_op_net
    );

  constant2: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant2_op_net_x0
    );

  constant_x0: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant_op_net
    );

  delay1: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
      d(0) => enable_y_net,
      en => '1',
      rst => '1',
      q(0) => delay1_q_net_x0
    );

  delay2: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
      d(0) => trig_src_y_net,
      en => '1',
      rst => '1',
      q(0) => delay2_q_net
    );

  delay3: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
      d(0) => valid_src_y_net,
      en => '1',
      rst => '1',
      q(0) => delay3_q_net
    );

  dram_munge_7ac0030401: entity work.dram_munge_entity_7ac0030401
    port map (
      ce_1 => ce_1_sg_x13,
      clk_1 => clk_1_sg_x13,
      din => cast_dout_net_x1,
      init => edge_op_y_net_x2,
      we => mux1_y_net_x1,
      dout => data_choice_y_net_x1,
      we_o => we_choice_y_net_x1
    );

  edge_detect_663cc1f7c1: entity work.edge_detect_entity_663cc1f7c1
    port map (
      ce_1 => ce_1_sg_x13,
      clk_1 => clk_1_sg_x13,
      in_x0 => delay1_q_net_x0,
      out_x0 => edge_op_y_net_x2
    );

  enable: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => reint1_output_port_net_x0,
      y(0) => enable_y_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
      clr => '0',
      ip(0) => edge_op_y_net_x2,
      op(0) => inverter_op_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => mux2_y_net,
      d1(0) => inverter_op_net,
      y(0) => logical_y_net
    );

  mux1: entity work.mux_d99e59b6d4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => constant2_op_net_x1,
      d1(0) => constant2_op_net_x0,
      sel(0) => delay3_q_net,
      y(0) => mux1_y_net_x1
    );

  mux2: entity work.mux_d99e59b6d4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => constant2_op_net_x1,
      d1(0) => constant1_op_net,
      sel(0) => delay2_q_net,
      y(0) => mux2_y_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
      d(0) => constant_op_net,
      en(0) => edge_op_y_net_x2,
      rst(0) => logical_y_net,
      q(0) => register1_q_net
    );

  register6: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
      d(0) => mux2_y_net,
      en(0) => register1_q_net,
      rst(0) => edge_op_y_net_x2,
      q(0) => register6_q_net_x0
    );

  trig_src: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => reint1_output_port_net_x0,
      y(0) => trig_src_y_net
    );

  valid_src: entity work.xlslice
    generic map (
      new_lsb => 2,
      new_msb => 2,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => reint1_output_port_net_x0,
      y(0) => valid_src_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "snap2in/adcsnap0/bram/calc_add"

entity calc_add_entity_4d68be273e is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic_vector(15 downto 0); 
    out_x0: out std_logic_vector(15 downto 0)
  );
end calc_add_entity_4d68be273e;

architecture structural of calc_add_entity_4d68be273e is
  signal add_del_q_net_x0: std_logic_vector(15 downto 0);
  signal add_sub_s_net: std_logic;
  signal ce_1_sg_x14: std_logic;
  signal clk_1_sg_x14: std_logic;
  signal concat_y_net: std_logic_vector(15 downto 0);
  signal const_op_net: std_logic;
  signal convert_addr_dout_net: std_logic_vector(15 downto 0);
  signal lsw_y_net: std_logic;
  signal manipulate_op_net: std_logic;
  signal msw_y_net: std_logic_vector(14 downto 0);
  signal mux_y_net_x0: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x14 <= ce_1;
  clk_1_sg_x14 <= clk_1;
  add_del_q_net_x0 <= in_x0;
  out_x0 <= mux_y_net_x0;

  add_sub: entity work.addsub_c13097e33e
    port map (
      a(0) => const_op_net,
      b(0) => lsw_y_net,
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
      clr => '0',
      s(0) => add_sub_s_net
    );

  concat: entity work.concat_039bece892
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => msw_y_net,
      in1(0) => add_sub_s_net,
      y => concat_y_net
    );

  const: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => const_op_net
    );

  convert_addr: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 16,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 16,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
      clr => '0',
      din => add_del_q_net_x0,
      en => "1",
      dout => convert_addr_dout_net
    );

  lsw: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => convert_addr_dout_net,
      y(0) => lsw_y_net
    );

  manipulate: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => manipulate_op_net
    );

  msw: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 15,
      x_width => 16,
      y_width => 15
    )
    port map (
      x => convert_addr_dout_net,
      y => msw_y_net
    );

  mux: entity work.mux_2c45f290ed
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => convert_addr_dout_net,
      d1 => concat_y_net,
      sel(0) => manipulate_op_net,
      y => mux_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "snap2in/adcsnap0/bram/munge_in/join"

entity join_entity_729425b771 is
  port (
    in1: in std_logic_vector(31 downto 0); 
    in2: in std_logic_vector(31 downto 0); 
    in3: in std_logic_vector(31 downto 0); 
    in4: in std_logic_vector(31 downto 0); 
    bus_out: out std_logic_vector(127 downto 0)
  );
end join_entity_729425b771;

architecture structural of join_entity_729425b771 is
  signal concatenate_y_net_x0: std_logic_vector(127 downto 0);
  signal reinterpret1_output_port_net: std_logic_vector(31 downto 0);
  signal reinterpret1_output_port_net_x1: std_logic_vector(31 downto 0);
  signal reinterpret2_output_port_net: std_logic_vector(31 downto 0);
  signal reinterpret2_output_port_net_x1: std_logic_vector(31 downto 0);
  signal reinterpret3_output_port_net: std_logic_vector(31 downto 0);
  signal reinterpret3_output_port_net_x1: std_logic_vector(31 downto 0);
  signal reinterpret4_output_port_net: std_logic_vector(31 downto 0);
  signal reinterpret4_output_port_net_x1: std_logic_vector(31 downto 0);

begin
  reinterpret1_output_port_net_x1 <= in1;
  reinterpret2_output_port_net_x1 <= in2;
  reinterpret3_output_port_net_x1 <= in3;
  reinterpret4_output_port_net_x1 <= in4;
  bus_out <= concatenate_y_net_x0;

  concatenate: entity work.concat_b11ec1c0d4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterpret1_output_port_net,
      in1 => reinterpret2_output_port_net,
      in2 => reinterpret3_output_port_net,
      in3 => reinterpret4_output_port_net,
      y => concatenate_y_net_x0
    );

  reinterpret1: entity work.reinterpret_c5d4d59b73
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => reinterpret1_output_port_net_x1,
      output_port => reinterpret1_output_port_net
    );

  reinterpret2: entity work.reinterpret_c5d4d59b73
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => reinterpret2_output_port_net_x1,
      output_port => reinterpret2_output_port_net
    );

  reinterpret3: entity work.reinterpret_c5d4d59b73
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => reinterpret3_output_port_net_x1,
      output_port => reinterpret3_output_port_net
    );

  reinterpret4: entity work.reinterpret_c5d4d59b73
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => reinterpret4_output_port_net_x1,
      output_port => reinterpret4_output_port_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "snap2in/adcsnap0/bram/munge_in/split"

entity split_entity_6e48613a5e is
  port (
    bus_in: in std_logic_vector(127 downto 0); 
    lsb_out1: out std_logic_vector(31 downto 0); 
    msb_out4: out std_logic_vector(31 downto 0); 
    out2: out std_logic_vector(31 downto 0); 
    out3: out std_logic_vector(31 downto 0)
  );
end split_entity_6e48613a5e;

architecture structural of split_entity_6e48613a5e is
  signal reinterpret1_output_port_net_x2: std_logic_vector(31 downto 0);
  signal reinterpret2_output_port_net_x2: std_logic_vector(31 downto 0);
  signal reinterpret3_output_port_net_x2: std_logic_vector(31 downto 0);
  signal reinterpret4_output_port_net_x2: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net_x0: std_logic_vector(127 downto 0);
  signal slice1_y_net: std_logic_vector(31 downto 0);
  signal slice2_y_net: std_logic_vector(31 downto 0);
  signal slice3_y_net: std_logic_vector(31 downto 0);
  signal slice4_y_net: std_logic_vector(31 downto 0);

begin
  reinterpret_output_port_net_x0 <= bus_in;
  lsb_out1 <= reinterpret1_output_port_net_x2;
  msb_out4 <= reinterpret4_output_port_net_x2;
  out2 <= reinterpret2_output_port_net_x2;
  out3 <= reinterpret3_output_port_net_x2;

  reinterpret1: entity work.reinterpret_c5d4d59b73
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice1_y_net,
      output_port => reinterpret1_output_port_net_x2
    );

  reinterpret2: entity work.reinterpret_c5d4d59b73
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice2_y_net,
      output_port => reinterpret2_output_port_net_x2
    );

  reinterpret3: entity work.reinterpret_c5d4d59b73
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice3_y_net,
      output_port => reinterpret3_output_port_net_x2
    );

  reinterpret4: entity work.reinterpret_c5d4d59b73
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice4_y_net,
      output_port => reinterpret4_output_port_net_x2
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 31,
      x_width => 128,
      y_width => 32
    )
    port map (
      x => reinterpret_output_port_net_x0,
      y => slice1_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 32,
      new_msb => 63,
      x_width => 128,
      y_width => 32
    )
    port map (
      x => reinterpret_output_port_net_x0,
      y => slice2_y_net
    );

  slice3: entity work.xlslice
    generic map (
      new_lsb => 64,
      new_msb => 95,
      x_width => 128,
      y_width => 32
    )
    port map (
      x => reinterpret_output_port_net_x0,
      y => slice3_y_net
    );

  slice4: entity work.xlslice
    generic map (
      new_lsb => 96,
      new_msb => 127,
      x_width => 128,
      y_width => 32
    )
    port map (
      x => reinterpret_output_port_net_x0,
      y => slice4_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "snap2in/adcsnap0/bram/munge_in"

entity munge_in_entity_ee12672e52 is
  port (
    din: in std_logic_vector(127 downto 0); 
    dout: out std_logic_vector(127 downto 0)
  );
end munge_in_entity_ee12672e52;

architecture structural of munge_in_entity_ee12672e52 is
  signal concatenate_y_net_x0: std_logic_vector(127 downto 0);
  signal dat_del_q_net_x0: std_logic_vector(127 downto 0);
  signal reinterpret1_output_port_net_x2: std_logic_vector(31 downto 0);
  signal reinterpret2_output_port_net_x2: std_logic_vector(31 downto 0);
  signal reinterpret3_output_port_net_x2: std_logic_vector(31 downto 0);
  signal reinterpret4_output_port_net_x2: std_logic_vector(31 downto 0);
  signal reinterpret_out_output_port_net_x0: std_logic_vector(127 downto 0);
  signal reinterpret_output_port_net_x0: std_logic_vector(127 downto 0);

begin
  dat_del_q_net_x0 <= din;
  dout <= reinterpret_out_output_port_net_x0;

  join_729425b771: entity work.join_entity_729425b771
    port map (
      in1 => reinterpret1_output_port_net_x2,
      in2 => reinterpret2_output_port_net_x2,
      in3 => reinterpret3_output_port_net_x2,
      in4 => reinterpret4_output_port_net_x2,
      bus_out => concatenate_y_net_x0
    );

  reinterpret: entity work.reinterpret_28b9ecc6fc
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => dat_del_q_net_x0,
      output_port => reinterpret_output_port_net_x0
    );

  reinterpret_out: entity work.reinterpret_28b9ecc6fc
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => concatenate_y_net_x0,
      output_port => reinterpret_out_output_port_net_x0
    );

  split_6e48613a5e: entity work.split_entity_6e48613a5e
    port map (
      bus_in => reinterpret_output_port_net_x0,
      lsb_out1 => reinterpret1_output_port_net_x2,
      msb_out4 => reinterpret4_output_port_net_x2,
      out2 => reinterpret2_output_port_net_x2,
      out3 => reinterpret3_output_port_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "snap2in/adcsnap0/bram"

entity bram_entity_bb644de149 is
  port (
    addr: in std_logic_vector(15 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    data_in: in std_logic_vector(127 downto 0); 
    we: in std_logic; 
    convert_addr_x0: out std_logic_vector(15 downto 0); 
    convert_din1_x0: out std_logic_vector(127 downto 0); 
    convert_we_x0: out std_logic
  );
end bram_entity_bb644de149;

architecture structural of bram_entity_bb644de149 is
  signal add_del_q_net_x1: std_logic_vector(15 downto 0);
  signal ce_1_sg_x15: std_logic;
  signal clk_1_sg_x15: std_logic;
  signal convert_addr_dout_net_x0: std_logic_vector(15 downto 0);
  signal convert_din1_dout_net_x0: std_logic_vector(127 downto 0);
  signal convert_we_dout_net_x0: std_logic;
  signal dat_del_q_net_x1: std_logic_vector(127 downto 0);
  signal mux_y_net_x0: std_logic_vector(15 downto 0);
  signal reinterpret_out_output_port_net_x0: std_logic_vector(127 downto 0);
  signal we_del_q_net_x0: std_logic;

begin
  add_del_q_net_x1 <= addr;
  ce_1_sg_x15 <= ce_1;
  clk_1_sg_x15 <= clk_1;
  dat_del_q_net_x1 <= data_in;
  we_del_q_net_x0 <= we;
  convert_addr_x0 <= convert_addr_dout_net_x0;
  convert_din1_x0 <= convert_din1_dout_net_x0;
  convert_we_x0 <= convert_we_dout_net_x0;

  calc_add_4d68be273e: entity work.calc_add_entity_4d68be273e
    port map (
      ce_1 => ce_1_sg_x15,
      clk_1 => clk_1_sg_x15,
      in_x0 => add_del_q_net_x1,
      out_x0 => mux_y_net_x0
    );

  convert_addr: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 16,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 16,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      clr => '0',
      din => mux_y_net_x0,
      en => "1",
      dout => convert_addr_dout_net_x0
    );

  convert_din1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 128,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 128,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      clr => '0',
      din => reinterpret_out_output_port_net_x0,
      en => "1",
      dout => convert_din1_dout_net_x0
    );

  convert_we: entity work.xlconvert
    generic map (
      bool_conversion => 0,
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
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      clr => '0',
      din(0) => we_del_q_net_x0,
      en => "1",
      dout(0) => convert_we_dout_net_x0
    );

  munge_in_ee12672e52: entity work.munge_in_entity_ee12672e52
    port map (
      din => dat_del_q_net_x1,
      dout => reinterpret_out_output_port_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "snap2in/adcsnap0/ctrl"

entity ctrl_entity_00dbab58d4 is
  port (
    snap2in_adcsnap0_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    in_reg: out std_logic_vector(31 downto 0)
  );
end ctrl_entity_00dbab58d4;

architecture structural of ctrl_entity_00dbab58d4 is
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x1: std_logic_vector(31 downto 0);
  signal slice_reg_y_net: std_logic_vector(31 downto 0);
  signal snap2in_adcsnap0_ctrl_user_data_out_net_x0: std_logic_vector(31 downto 0);

begin
  snap2in_adcsnap0_ctrl_user_data_out_net_x0 <= snap2in_adcsnap0_ctrl_user_data_out;
  in_reg <= reint1_output_port_net_x1;

  io_delay: entity work.delay_2b0feb00fb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => snap2in_adcsnap0_ctrl_user_data_out_net_x0,
      q => io_delay_q_net
    );

  reint1: entity work.reinterpret_c5d4d59b73
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_reg_y_net,
      output_port => reint1_output_port_net_x1
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

-- Generated from Simulink block "snap2in/adcsnap0/delay"

entity delay_entity_6127ce4283 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    delay: in std_logic_vector(31 downto 0); 
    din: in std_logic_vector(127 downto 0); 
    go: in std_logic; 
    init: in std_logic; 
    stopi: in std_logic; 
    we: in std_logic; 
    del_go: out std_logic; 
    del_init: out std_logic; 
    dout: out std_logic_vector(127 downto 0); 
    stop: out std_logic; 
    we_o: out std_logic
  );
end delay_entity_6127ce4283;

architecture structural of delay_entity_6127ce4283 is
  signal ce_1_sg_x16: std_logic;
  signal clk_1_sg_x16: std_logic;
  signal constant_op_net: std_logic;
  signal counter_op_net: std_logic_vector(31 downto 0);
  signal data_choice_y_net_x2: std_logic_vector(127 downto 0);
  signal delay10_q_net_x1: std_logic;
  signal delay16_q_net_x1: std_logic;
  signal delay2_q_net: std_logic;
  signal delay3_q_net_x2: std_logic;
  signal delay4_q_net: std_logic;
  signal delay5_q_net: std_logic;
  signal delay6_q_net: std_logic_vector(31 downto 0);
  signal delay7_q_net: std_logic_vector(31 downto 0);
  signal delay8_q_net: std_logic;
  signal delay9_q_net_x1: std_logic_vector(127 downto 0);
  signal edge_op_y_net_x3: std_logic;
  signal logical5_y_net: std_logic;
  signal never_op_net_x0: std_logic;
  signal register6_q_net_x1: std_logic;
  signal register_q_net_x1: std_logic;
  signal reint1_output_port_net_x0: std_logic_vector(31 downto 0);
  signal relational_op_net: std_logic;
  signal we_choice_y_net_x2: std_logic;

begin
  ce_1_sg_x16 <= ce_1;
  clk_1_sg_x16 <= clk_1;
  reint1_output_port_net_x0 <= delay;
  data_choice_y_net_x2 <= din;
  register6_q_net_x1 <= go;
  edge_op_y_net_x3 <= init;
  never_op_net_x0 <= stopi;
  we_choice_y_net_x2 <= we;
  del_go <= register_q_net_x1;
  del_init <= delay3_q_net_x2;
  dout <= delay9_q_net_x1;
  stop <= delay10_q_net_x1;
  we_o <= delay16_q_net_x1;

  constant_x0: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant_op_net
    );

  counter: entity work.xlcounter_free_snap2in
    generic map (
      core_name0 => "cntr_11_0_69db6e7c3b6d11cc",
      op_arith => xlUnsigned,
      op_width => 32
    )
    port map (
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
      clr => '0',
      en(0) => logical5_y_net,
      rst(0) => delay4_q_net,
      op => counter_op_net
    );

  delay10: entity work.delay_a14e3dd1bd
    port map (
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
      clr => '0',
      d(0) => never_op_net_x0,
      q(0) => delay10_q_net_x1
    );

  delay16: entity work.delay_a14e3dd1bd
    port map (
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
      clr => '0',
      d(0) => we_choice_y_net_x2,
      q(0) => delay16_q_net_x1
    );

  delay2: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
      clr => '0',
      d(0) => delay5_q_net,
      q(0) => delay2_q_net
    );

  delay3: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
      clr => '0',
      d(0) => delay2_q_net,
      q(0) => delay3_q_net_x2
    );

  delay4: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
      clr => '0',
      d(0) => edge_op_y_net_x3,
      q(0) => delay4_q_net
    );

  delay5: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
      clr => '0',
      d(0) => delay8_q_net,
      q(0) => delay5_q_net
    );

  delay6: entity work.delay_672d2b8d1e
    port map (
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
      clr => '0',
      d => counter_op_net,
      q => delay6_q_net
    );

  delay7: entity work.delay_672d2b8d1e
    port map (
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
      clr => '0',
      d => reint1_output_port_net_x0,
      q => delay7_q_net
    );

  delay8: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
      clr => '0',
      d(0) => delay4_q_net,
      q(0) => delay8_q_net
    );

  delay9: entity work.delay_6fcf35ba77
    port map (
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
      clr => '0',
      d => data_choice_y_net_x2,
      q => delay9_q_net_x1
    );

  logical5: entity work.logical_799f62af22
    port map (
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
      clr => '0',
      d0(0) => register6_q_net_x1,
      d1(0) => we_choice_y_net_x2,
      y(0) => logical5_y_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
      d(0) => constant_op_net,
      en(0) => relational_op_net,
      rst(0) => delay2_q_net,
      q(0) => register_q_net_x1
    );

  relational: entity work.relational_34fc311f5b
    port map (
      a => delay6_q_net,
      b => delay7_q_net,
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
      clr => '0',
      op(0) => relational_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "snap2in/adcsnap0/status"

entity status_entity_bd6e6e0c17 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    out_reg: in std_logic_vector(31 downto 0); 
    cast_gw_x0: out std_logic_vector(31 downto 0)
  );
end status_entity_bd6e6e0c17;

architecture structural of status_entity_bd6e6e0c17 is
  signal assert_reg_dout_net: std_logic_vector(31 downto 0);
  signal cast_gw_dout_net_x0: std_logic_vector(31 downto 0);
  signal ce_1_sg_x17: std_logic;
  signal clk_1_sg_x17: std_logic;
  signal concat_y_net_x1: std_logic_vector(31 downto 0);
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x17 <= ce_1;
  clk_1_sg_x17 <= clk_1;
  concat_y_net_x1 <= out_reg;
  cast_gw_x0 <= cast_gw_dout_net_x0;

  assert_reg: entity work.xlpassthrough
    generic map (
      din_width => 32,
      dout_width => 32
    )
    port map (
      din => concat_y_net_x1,
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
      ce => ce_1_sg_x17,
      clk => clk_1_sg_x17,
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

-- Generated from Simulink block "snap2in/adcsnap0/trig_offset"

entity trig_offset_entity_8f6532bab9 is
  port (
    snap2in_adcsnap0_trig_offset_user_data_out: in std_logic_vector(31 downto 0); 
    in_reg: out std_logic_vector(31 downto 0)
  );
end trig_offset_entity_8f6532bab9;

architecture structural of trig_offset_entity_8f6532bab9 is
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x1: std_logic_vector(31 downto 0);
  signal slice_reg_y_net: std_logic_vector(31 downto 0);
  signal snap2in_adcsnap0_trig_offset_user_data_out_net_x0: std_logic_vector(31 downto 0);

begin
  snap2in_adcsnap0_trig_offset_user_data_out_net_x0 <= snap2in_adcsnap0_trig_offset_user_data_out;
  in_reg <= reint1_output_port_net_x1;

  io_delay: entity work.delay_2b0feb00fb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => snap2in_adcsnap0_trig_offset_user_data_out_net_x0,
      q => io_delay_q_net
    );

  reint1: entity work.reinterpret_c5d4d59b73
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_reg_y_net,
      output_port => reint1_output_port_net_x1
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

-- Generated from Simulink block "snap2in/adcsnap0"

entity adcsnap0_entity_c94d11adb5 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(95 downto 0); 
    snap2in_adcsnap0_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    snap2in_adcsnap0_trig_offset_user_data_out: in std_logic_vector(31 downto 0); 
    we: in std_logic; 
    bram: out std_logic_vector(15 downto 0); 
    bram_x0: out std_logic_vector(127 downto 0); 
    bram_x1: out std_logic; 
    status: out std_logic_vector(31 downto 0)
  );
end adcsnap0_entity_c94d11adb5;

architecture structural of adcsnap0_entity_c94d11adb5 is
  signal add_del_q_net_x1: std_logic_vector(15 downto 0);
  signal cast_dout_net_x1: std_logic_vector(127 downto 0);
  signal cast_gw_dout_net_x1: std_logic_vector(31 downto 0);
  signal ce_1_sg_x18: std_logic;
  signal clk_1_sg_x18: std_logic;
  signal concat_y_net_x1: std_logic_vector(31 downto 0);
  signal constant2_op_net_x2: std_logic;
  signal convert_addr_dout_net_x1: std_logic_vector(15 downto 0);
  signal convert_din1_dout_net_x1: std_logic_vector(127 downto 0);
  signal convert_we_dout_net_x1: std_logic;
  signal dat_del_q_net_x1: std_logic_vector(127 downto 0);
  signal data_choice_y_net_x2: std_logic_vector(127 downto 0);
  signal delay10_q_net_x1: std_logic;
  signal delay16_q_net_x1: std_logic;
  signal delay3_q_net_x2: std_logic;
  signal delay6_q_net_x0: std_logic_vector(127 downto 0);
  signal delay9_q_net_x1: std_logic_vector(127 downto 0);
  signal edge_op_y_net_x3: std_logic;
  signal logical6_y_net_x0: std_logic;
  signal never_op_net_x0: std_logic;
  signal register1_q_net_x0: std_logic_vector(95 downto 0);
  signal register6_q_net_x1: std_logic;
  signal register_q_net_x1: std_logic;
  signal reint1_output_port_net_x1: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x2: std_logic_vector(31 downto 0);
  signal ri_output_port_net: std_logic_vector(95 downto 0);
  signal slice2_y_net_x0: std_logic_vector(15 downto 0);
  signal snap2in_adcsnap0_ctrl_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal snap2in_adcsnap0_trig_offset_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal we_choice_y_net_x2: std_logic;
  signal we_del_q_net_x0: std_logic;

begin
  ce_1_sg_x18 <= ce_1;
  clk_1_sg_x18 <= clk_1;
  register1_q_net_x0 <= din;
  snap2in_adcsnap0_ctrl_user_data_out_net_x1 <= snap2in_adcsnap0_ctrl_user_data_out;
  snap2in_adcsnap0_trig_offset_user_data_out_net_x1 <= snap2in_adcsnap0_trig_offset_user_data_out;
  constant2_op_net_x2 <= we;
  bram <= convert_addr_dout_net_x1;
  bram_x0 <= convert_din1_dout_net_x1;
  bram_x1 <= convert_we_dout_net_x1;
  status <= cast_gw_dout_net_x1;

  add_del: entity work.delay_4246ea65a9
    port map (
      ce => ce_1_sg_x18,
      clk => clk_1_sg_x18,
      clr => '0',
      d => slice2_y_net_x0,
      q => add_del_q_net_x1
    );

  add_gen_e00c7fa4f8: entity work.add_gen_entity_e00c7fa4f8
    port map (
      ce_1 => ce_1_sg_x18,
      clk_1 => clk_1_sg_x18,
      cont => delay10_q_net_x1,
      din => delay9_q_net_x1,
      go => register_q_net_x1,
      init => delay3_q_net_x2,
      we => delay16_q_net_x1,
      add => slice2_y_net_x0,
      dout => delay6_q_net_x0,
      status => concat_y_net_x1,
      we_o => logical6_y_net_x0
    );

  basic_ctrl_d63045b576: entity work.basic_ctrl_entity_d63045b576
    port map (
      ce_1 => ce_1_sg_x18,
      clk_1 => clk_1_sg_x18,
      ctrl => reint1_output_port_net_x1,
      din => cast_dout_net_x1,
      we => constant2_op_net_x2,
      dout => data_choice_y_net_x2,
      go => register6_q_net_x1,
      init => edge_op_y_net_x3,
      we_o => we_choice_y_net_x2
    );

  bram_bb644de149: entity work.bram_entity_bb644de149
    port map (
      addr => add_del_q_net_x1,
      ce_1 => ce_1_sg_x18,
      clk_1 => clk_1_sg_x18,
      data_in => dat_del_q_net_x1,
      we => we_del_q_net_x0,
      convert_addr_x0 => convert_addr_dout_net_x1,
      convert_din1_x0 => convert_din1_dout_net_x1,
      convert_we_x0 => convert_we_dout_net_x1
    );

  cast: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 96,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 128,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x18,
      clk => clk_1_sg_x18,
      clr => '0',
      din => ri_output_port_net,
      en => "1",
      dout => cast_dout_net_x1
    );

  ctrl_00dbab58d4: entity work.ctrl_entity_00dbab58d4
    port map (
      snap2in_adcsnap0_ctrl_user_data_out => snap2in_adcsnap0_ctrl_user_data_out_net_x1,
      in_reg => reint1_output_port_net_x1
    );

  dat_del: entity work.delay_ee0f706095
    port map (
      ce => ce_1_sg_x18,
      clk => clk_1_sg_x18,
      clr => '0',
      d => delay6_q_net_x0,
      q => dat_del_q_net_x1
    );

  delay_6127ce4283: entity work.delay_entity_6127ce4283
    port map (
      ce_1 => ce_1_sg_x18,
      clk_1 => clk_1_sg_x18,
      delay => reint1_output_port_net_x2,
      din => data_choice_y_net_x2,
      go => register6_q_net_x1,
      init => edge_op_y_net_x3,
      stopi => never_op_net_x0,
      we => we_choice_y_net_x2,
      del_go => register_q_net_x1,
      del_init => delay3_q_net_x2,
      dout => delay9_q_net_x1,
      stop => delay10_q_net_x1,
      we_o => delay16_q_net_x1
    );

  never: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => never_op_net_x0
    );

  ri: entity work.reinterpret_c07e1477bf
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => register1_q_net_x0,
      output_port => ri_output_port_net
    );

  status_bd6e6e0c17: entity work.status_entity_bd6e6e0c17
    port map (
      ce_1 => ce_1_sg_x18,
      clk_1 => clk_1_sg_x18,
      out_reg => concat_y_net_x1,
      cast_gw_x0 => cast_gw_dout_net_x1
    );

  trig_offset_8f6532bab9: entity work.trig_offset_entity_8f6532bab9
    port map (
      snap2in_adcsnap0_trig_offset_user_data_out => snap2in_adcsnap0_trig_offset_user_data_out_net_x1,
      in_reg => reint1_output_port_net_x2
    );

  we_del: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x18,
      clk => clk_1_sg_x18,
      clr => '0',
      d(0) => logical6_y_net_x0,
      q(0) => we_del_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "snap2in/bus_create0"

entity bus_create0_entity_5fef4a34e4 is
  port (
    in1: in std_logic_vector(11 downto 0); 
    in2: in std_logic_vector(11 downto 0); 
    in3: in std_logic_vector(11 downto 0); 
    in4: in std_logic_vector(11 downto 0); 
    in5: in std_logic_vector(11 downto 0); 
    in6: in std_logic_vector(11 downto 0); 
    in7: in std_logic_vector(11 downto 0); 
    in8: in std_logic_vector(11 downto 0); 
    bus_out: out std_logic_vector(95 downto 0)
  );
end bus_create0_entity_5fef4a34e4;

architecture structural of bus_create0_entity_5fef4a34e4 is
  signal concatenate_y_net_x0: std_logic_vector(95 downto 0);
  signal reinterpret1_output_port_net: std_logic_vector(11 downto 0);
  signal reinterpret2_output_port_net: std_logic_vector(11 downto 0);
  signal reinterpret3_output_port_net: std_logic_vector(11 downto 0);
  signal reinterpret4_output_port_net: std_logic_vector(11 downto 0);
  signal reinterpret5_output_port_net: std_logic_vector(11 downto 0);
  signal reinterpret6_output_port_net: std_logic_vector(11 downto 0);
  signal reinterpret7_output_port_net: std_logic_vector(11 downto 0);
  signal reinterpret8_output_port_net: std_logic_vector(11 downto 0);
  signal reinterpret_output_port_net_x16: std_logic_vector(11 downto 0);
  signal reinterpret_output_port_net_x17: std_logic_vector(11 downto 0);
  signal reinterpret_output_port_net_x18: std_logic_vector(11 downto 0);
  signal reinterpret_output_port_net_x19: std_logic_vector(11 downto 0);
  signal reinterpret_output_port_net_x20: std_logic_vector(11 downto 0);
  signal reinterpret_output_port_net_x21: std_logic_vector(11 downto 0);
  signal reinterpret_output_port_net_x22: std_logic_vector(11 downto 0);
  signal reinterpret_output_port_net_x23: std_logic_vector(11 downto 0);

begin
  reinterpret_output_port_net_x16 <= in1;
  reinterpret_output_port_net_x17 <= in2;
  reinterpret_output_port_net_x20 <= in3;
  reinterpret_output_port_net_x21 <= in4;
  reinterpret_output_port_net_x18 <= in5;
  reinterpret_output_port_net_x19 <= in6;
  reinterpret_output_port_net_x22 <= in7;
  reinterpret_output_port_net_x23 <= in8;
  bus_out <= concatenate_y_net_x0;

  concatenate: entity work.concat_2b477872fe
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterpret1_output_port_net,
      in1 => reinterpret2_output_port_net,
      in2 => reinterpret3_output_port_net,
      in3 => reinterpret4_output_port_net,
      in4 => reinterpret5_output_port_net,
      in5 => reinterpret6_output_port_net,
      in6 => reinterpret7_output_port_net,
      in7 => reinterpret8_output_port_net,
      y => concatenate_y_net_x0
    );

  reinterpret1: entity work.reinterpret_a106f99236
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => reinterpret_output_port_net_x16,
      output_port => reinterpret1_output_port_net
    );

  reinterpret2: entity work.reinterpret_a106f99236
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => reinterpret_output_port_net_x17,
      output_port => reinterpret2_output_port_net
    );

  reinterpret3: entity work.reinterpret_a106f99236
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => reinterpret_output_port_net_x20,
      output_port => reinterpret3_output_port_net
    );

  reinterpret4: entity work.reinterpret_a106f99236
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => reinterpret_output_port_net_x21,
      output_port => reinterpret4_output_port_net
    );

  reinterpret5: entity work.reinterpret_a106f99236
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => reinterpret_output_port_net_x18,
      output_port => reinterpret5_output_port_net
    );

  reinterpret6: entity work.reinterpret_a106f99236
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => reinterpret_output_port_net_x19,
      output_port => reinterpret6_output_port_net
    );

  reinterpret7: entity work.reinterpret_a106f99236
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => reinterpret_output_port_net_x22,
      output_port => reinterpret7_output_port_net
    );

  reinterpret8: entity work.reinterpret_a106f99236
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => reinterpret_output_port_net_x23,
      output_port => reinterpret8_output_port_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "snap2in/gpio"

entity gpio_entity_0780104db8 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    gpio_out: in std_logic; 
    convert_x0: out std_logic
  );
end gpio_entity_0780104db8;

architecture structural of gpio_entity_0780104db8 is
  signal ce_1_sg_x19: std_logic;
  signal clk_1_sg_x19: std_logic;
  signal convert_dout_net_x0: std_logic;
  signal slice_y_net_x0: std_logic;

begin
  ce_1_sg_x19 <= ce_1;
  clk_1_sg_x19 <= clk_1;
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
      ce => ce_1_sg_x19,
      clk => clk_1_sg_x19,
      clr => '0',
      din(0) => slice_y_net_x0,
      en => "1",
      dout(0) => convert_dout_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "snap2in/pipeline"

entity pipeline_entity_20a330c3ea is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    d: in std_logic_vector(95 downto 0); 
    q: out std_logic_vector(95 downto 0)
  );
end pipeline_entity_20a330c3ea;

architecture structural of pipeline_entity_20a330c3ea is
  signal ce_1_sg_x22: std_logic;
  signal clk_1_sg_x22: std_logic;
  signal concatenate_y_net_x1: std_logic_vector(95 downto 0);
  signal register0_q_net: std_logic_vector(95 downto 0);
  signal register1_q_net_x1: std_logic_vector(95 downto 0);

begin
  ce_1_sg_x22 <= ce_1;
  clk_1_sg_x22 <= clk_1;
  concatenate_y_net_x1 <= d;
  q <= register1_q_net_x1;

  register0: entity work.xlregister
    generic map (
      d_width => 96,
      init_value => b"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x22,
      clk => clk_1_sg_x22,
      d => concatenate_y_net_x1,
      en => "1",
      rst => "0",
      q => register0_q_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 96,
      init_value => b"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x22,
      clk => clk_1_sg_x22,
      d => register0_q_net,
      en => "1",
      rst => "0",
      q => register1_q_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "snap2in"

entity snap2in is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    snap2in_adc_mkid_4x1_user_data_i0: in std_logic_vector(11 downto 0); 
    snap2in_adc_mkid_4x1_user_data_i1: in std_logic_vector(11 downto 0); 
    snap2in_adc_mkid_4x1_user_data_i2: in std_logic_vector(11 downto 0); 
    snap2in_adc_mkid_4x1_user_data_i3: in std_logic_vector(11 downto 0); 
    snap2in_adc_mkid_4x1_user_data_q0: in std_logic_vector(11 downto 0); 
    snap2in_adc_mkid_4x1_user_data_q1: in std_logic_vector(11 downto 0); 
    snap2in_adc_mkid_4x1_user_data_q2: in std_logic_vector(11 downto 0); 
    snap2in_adc_mkid_4x1_user_data_q3: in std_logic_vector(11 downto 0); 
    snap2in_adc_mkid_4x1_user_sync: in std_logic; 
    snap2in_adcsnap0_bram_data_out: in std_logic_vector(127 downto 0); 
    snap2in_adcsnap0_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    snap2in_adcsnap0_trig_offset_user_data_out: in std_logic_vector(31 downto 0); 
    snap2in_adcsnap0_bram_addr: out std_logic_vector(15 downto 0); 
    snap2in_adcsnap0_bram_data_in: out std_logic_vector(127 downto 0); 
    snap2in_adcsnap0_bram_we: out std_logic; 
    snap2in_adcsnap0_status_user_data_in: out std_logic_vector(31 downto 0); 
    snap2in_gpio1_gateway: out std_logic; 
    snap2in_gpio3_gateway: out std_logic; 
    snap2in_gpio_gateway: out std_logic
  );
end snap2in;

architecture structural of snap2in is
  attribute core_generation_info: string;
  attribute core_generation_info of structural : architecture is "snap2in,sysgen_core,{clock_period=10.00000000,clocking=Clock_Enables,compilation=NGC_Netlist,sample_periods=1.00000000000,testbench=0,total_blocks=493,xilinx_adder_subtracter_block=2,xilinx_arithmetic_relational_operator_block=5,xilinx_assert_block=1,xilinx_binary_shift_operator_block=1,xilinx_bit_slice_extractor_block=45,xilinx_bus_concatenator_block=18,xilinx_bus_multiplexer_block=8,xilinx_constant_block_block=17,xilinx_counter_block=5,xilinx_delay_block=32,xilinx_disregard_subsystem_for_generation_block=1,xilinx_gateway_in_block=15,xilinx_gateway_out_block=8,xilinx_inverter_block=13,xilinx_logical_block_block=11,xilinx_register_block=14,xilinx_single_port_random_access_memory_block=1,xilinx_system_generator_block=1,xilinx_type_converter_block=11,xilinx_type_reinterpreter_block=60,}";

  signal ce_1_sg_x23: std_logic;
  signal clk_1_sg_x23: std_logic;
  signal concatenate_y_net_x1: std_logic_vector(95 downto 0);
  signal constant2_op_net_x2: std_logic;
  signal counter_led_op_net: std_logic_vector(26 downto 0);
  signal register1_q_net_x1: std_logic_vector(95 downto 0);
  signal reinterpret_output_port_net_x16: std_logic_vector(11 downto 0);
  signal reinterpret_output_port_net_x17: std_logic_vector(11 downto 0);
  signal reinterpret_output_port_net_x18: std_logic_vector(11 downto 0);
  signal reinterpret_output_port_net_x19: std_logic_vector(11 downto 0);
  signal reinterpret_output_port_net_x20: std_logic_vector(11 downto 0);
  signal reinterpret_output_port_net_x21: std_logic_vector(11 downto 0);
  signal reinterpret_output_port_net_x22: std_logic_vector(11 downto 0);
  signal reinterpret_output_port_net_x23: std_logic_vector(11 downto 0);
  signal slice_y_net_x2: std_logic;
  signal snap2in_adc_mkid_4x1_user_data_i0_net: std_logic_vector(11 downto 0);
  signal snap2in_adc_mkid_4x1_user_data_i1_net: std_logic_vector(11 downto 0);
  signal snap2in_adc_mkid_4x1_user_data_i2_net: std_logic_vector(11 downto 0);
  signal snap2in_adc_mkid_4x1_user_data_i3_net: std_logic_vector(11 downto 0);
  signal snap2in_adc_mkid_4x1_user_data_q0_net: std_logic_vector(11 downto 0);
  signal snap2in_adc_mkid_4x1_user_data_q1_net: std_logic_vector(11 downto 0);
  signal snap2in_adc_mkid_4x1_user_data_q2_net: std_logic_vector(11 downto 0);
  signal snap2in_adc_mkid_4x1_user_data_q3_net: std_logic_vector(11 downto 0);
  signal snap2in_adc_mkid_4x1_user_sync_net: std_logic;
  signal snap2in_adcsnap0_bram_addr_net: std_logic_vector(15 downto 0);
  signal snap2in_adcsnap0_bram_data_in_net: std_logic_vector(127 downto 0);
  signal snap2in_adcsnap0_bram_data_out_net: std_logic_vector(127 downto 0);
  signal snap2in_adcsnap0_bram_we_net: std_logic;
  signal snap2in_adcsnap0_ctrl_user_data_out_net: std_logic_vector(31 downto 0);
  signal snap2in_adcsnap0_status_user_data_in_net: std_logic_vector(31 downto 0);
  signal snap2in_adcsnap0_trig_offset_user_data_out_net: std_logic_vector(31 downto 0);
  signal snap2in_gpio1_gateway_net: std_logic;
  signal snap2in_gpio3_gateway_net: std_logic;
  signal snap2in_gpio_gateway_net: std_logic;

begin
  ce_1_sg_x23 <= ce_1;
  clk_1_sg_x23 <= clk_1;
  snap2in_adc_mkid_4x1_user_data_i0_net <= snap2in_adc_mkid_4x1_user_data_i0;
  snap2in_adc_mkid_4x1_user_data_i1_net <= snap2in_adc_mkid_4x1_user_data_i1;
  snap2in_adc_mkid_4x1_user_data_i2_net <= snap2in_adc_mkid_4x1_user_data_i2;
  snap2in_adc_mkid_4x1_user_data_i3_net <= snap2in_adc_mkid_4x1_user_data_i3;
  snap2in_adc_mkid_4x1_user_data_q0_net <= snap2in_adc_mkid_4x1_user_data_q0;
  snap2in_adc_mkid_4x1_user_data_q1_net <= snap2in_adc_mkid_4x1_user_data_q1;
  snap2in_adc_mkid_4x1_user_data_q2_net <= snap2in_adc_mkid_4x1_user_data_q2;
  snap2in_adc_mkid_4x1_user_data_q3_net <= snap2in_adc_mkid_4x1_user_data_q3;
  snap2in_adc_mkid_4x1_user_sync_net <= snap2in_adc_mkid_4x1_user_sync;
  snap2in_adcsnap0_bram_data_out_net <= snap2in_adcsnap0_bram_data_out;
  snap2in_adcsnap0_ctrl_user_data_out_net <= snap2in_adcsnap0_ctrl_user_data_out;
  snap2in_adcsnap0_trig_offset_user_data_out_net <= snap2in_adcsnap0_trig_offset_user_data_out;
  snap2in_adcsnap0_bram_addr <= snap2in_adcsnap0_bram_addr_net;
  snap2in_adcsnap0_bram_data_in <= snap2in_adcsnap0_bram_data_in_net;
  snap2in_adcsnap0_bram_we <= snap2in_adcsnap0_bram_we_net;
  snap2in_adcsnap0_status_user_data_in <= snap2in_adcsnap0_status_user_data_in_net;
  snap2in_gpio1_gateway <= snap2in_gpio1_gateway_net;
  snap2in_gpio3_gateway <= snap2in_gpio3_gateway_net;
  snap2in_gpio_gateway <= snap2in_gpio_gateway_net;

  adc_mkid_4x1_ec81f44fe6: entity work.adc_mkid_4x1_entity_ec81f44fe6
    port map (
      ce_1 => ce_1_sg_x23,
      clk_1 => clk_1_sg_x23,
      snap2in_adc_mkid_4x1_user_data_i0 => snap2in_adc_mkid_4x1_user_data_i0_net,
      snap2in_adc_mkid_4x1_user_data_i1 => snap2in_adc_mkid_4x1_user_data_i1_net,
      snap2in_adc_mkid_4x1_user_data_i2 => snap2in_adc_mkid_4x1_user_data_i2_net,
      snap2in_adc_mkid_4x1_user_data_i3 => snap2in_adc_mkid_4x1_user_data_i3_net,
      snap2in_adc_mkid_4x1_user_data_q0 => snap2in_adc_mkid_4x1_user_data_q0_net,
      snap2in_adc_mkid_4x1_user_data_q1 => snap2in_adc_mkid_4x1_user_data_q1_net,
      snap2in_adc_mkid_4x1_user_data_q2 => snap2in_adc_mkid_4x1_user_data_q2_net,
      snap2in_adc_mkid_4x1_user_data_q3 => snap2in_adc_mkid_4x1_user_data_q3_net,
      data_i0 => reinterpret_output_port_net_x16,
      data_i1 => reinterpret_output_port_net_x17,
      data_i2 => reinterpret_output_port_net_x20,
      data_i3 => reinterpret_output_port_net_x21,
      data_q0 => reinterpret_output_port_net_x18,
      data_q1 => reinterpret_output_port_net_x19,
      data_q2 => reinterpret_output_port_net_x22,
      data_q3 => reinterpret_output_port_net_x23
    );

  adcsnap0_c94d11adb5: entity work.adcsnap0_entity_c94d11adb5
    port map (
      ce_1 => ce_1_sg_x23,
      clk_1 => clk_1_sg_x23,
      din => register1_q_net_x1,
      snap2in_adcsnap0_ctrl_user_data_out => snap2in_adcsnap0_ctrl_user_data_out_net,
      snap2in_adcsnap0_trig_offset_user_data_out => snap2in_adcsnap0_trig_offset_user_data_out_net,
      we => constant2_op_net_x2,
      bram => snap2in_adcsnap0_bram_addr_net,
      bram_x0 => snap2in_adcsnap0_bram_data_in_net,
      bram_x1 => snap2in_adcsnap0_bram_we_net,
      status => snap2in_adcsnap0_status_user_data_in_net
    );

  bus_create0_5fef4a34e4: entity work.bus_create0_entity_5fef4a34e4
    port map (
      in1 => reinterpret_output_port_net_x16,
      in2 => reinterpret_output_port_net_x17,
      in3 => reinterpret_output_port_net_x20,
      in4 => reinterpret_output_port_net_x21,
      in5 => reinterpret_output_port_net_x18,
      in6 => reinterpret_output_port_net_x19,
      in7 => reinterpret_output_port_net_x22,
      in8 => reinterpret_output_port_net_x23,
      bus_out => concatenate_y_net_x1
    );

  constant2: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant2_op_net_x2
    );

  counter_led: entity work.xlcounter_free_snap2in
    generic map (
      core_name0 => "cntr_11_0_c428a25ea66a740d",
      op_arith => xlUnsigned,
      op_width => 27
    )
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      clr => '0',
      en => "1",
      rst => "0",
      op => counter_led_op_net
    );

  gpio1_d14a7081f8: entity work.gpio_entity_0780104db8
    port map (
      ce_1 => ce_1_sg_x23,
      clk_1 => clk_1_sg_x23,
      gpio_out => slice_y_net_x2,
      convert_x0 => snap2in_gpio1_gateway_net
    );

  gpio3_1180451dc1: entity work.gpio_entity_0780104db8
    port map (
      ce_1 => ce_1_sg_x23,
      clk_1 => clk_1_sg_x23,
      gpio_out => slice_y_net_x2,
      convert_x0 => snap2in_gpio3_gateway_net
    );

  gpio_0780104db8: entity work.gpio_entity_0780104db8
    port map (
      ce_1 => ce_1_sg_x23,
      clk_1 => clk_1_sg_x23,
      gpio_out => slice_y_net_x2,
      convert_x0 => snap2in_gpio_gateway_net
    );

  pipeline_20a330c3ea: entity work.pipeline_entity_20a330c3ea
    port map (
      ce_1 => ce_1_sg_x23,
      clk_1 => clk_1_sg_x23,
      d => concatenate_y_net_x1,
      q => register1_q_net_x1
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
      y(0) => slice_y_net_x2
    );

end structural;
