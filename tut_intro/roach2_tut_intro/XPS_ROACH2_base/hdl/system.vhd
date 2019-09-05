-------------------------------------------------------------------------------
-- system.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity system is
  port (
    sys_clk_n : in std_logic;
    sys_clk_p : in std_logic;
    aux_clk_n : in std_logic;
    aux_clk_p : in std_logic;
    epb_clk_in : in std_logic;
    epb_data : inout std_logic_vector(0 to 31);
    epb_addr : in std_logic_vector(5 to 29);
    epb_cs_n : in std_logic;
    epb_be_n : in std_logic_vector(0 to 3);
    epb_r_w_n : in std_logic;
    epb_oe_n : in std_logic;
    epb_doe_n : out std_logic;
    epb_rdy : out std_logic;
    ppc_irq_n : out std_logic;
    roach2_tut_intro_gpio_ext : out std_logic_vector(0 to 0);
    roach2_tut_intro_gpio1_ext : out std_logic_vector(0 to 0);
    roach2_tut_intro_gpio2_ext : out std_logic_vector(0 to 0);
    roach2_tut_intro_gpio3_ext : out std_logic_vector(0 to 0)
  );
end system;

architecture STRUCTURE of system is

  component system_infrastructure_inst_wrapper is
    port (
      sys_clk_n : in std_logic;
      sys_clk_p : in std_logic;
      aux_clk_n : in std_logic;
      aux_clk_p : in std_logic;
      epb_clk_in : in std_logic;
      sys_clk : out std_logic;
      sys_clk90 : out std_logic;
      sys_clk180 : out std_logic;
      sys_clk270 : out std_logic;
      sys_clk_lock : out std_logic;
      sys_clk2x : out std_logic;
      sys_clk2x90 : out std_logic;
      sys_clk2x180 : out std_logic;
      sys_clk2x270 : out std_logic;
      aux_clk : out std_logic;
      aux_clk90 : out std_logic;
      aux_clk180 : out std_logic;
      aux_clk270 : out std_logic;
      aux_clk2x : out std_logic;
      aux_clk2x90 : out std_logic;
      aux_clk2x180 : out std_logic;
      aux_clk2x270 : out std_logic;
      epb_clk : out std_logic;
      idelay_rst : in std_logic;
      idelay_rdy : out std_logic;
      op_power_on_rst : out std_logic;
      clk_200 : out std_logic;
      clk_100 : out std_logic
    );
  end component;

  component system_reset_block_inst_wrapper is
    port (
      clk : in std_logic;
      ip_async_reset_i : in std_logic;
      ip_reset_i : in std_logic;
      op_reset_o : out std_logic
    );
  end component;

  component system_opb0_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : out std_logic;
      SYS_Rst : in std_logic;
      Debug_SYS_Rst : in std_logic;
      WDT_Rst : in std_logic;
      M_ABus : in std_logic_vector(0 to 31);
      M_BE : in std_logic_vector(0 to 3);
      M_beXfer : in std_logic_vector(0 to 0);
      M_busLock : in std_logic_vector(0 to 0);
      M_DBus : in std_logic_vector(0 to 31);
      M_DBusEn : in std_logic_vector(0 to 0);
      M_DBusEn32_63 : in std_logic_vector(0 to 0);
      M_dwXfer : in std_logic_vector(0 to 0);
      M_fwXfer : in std_logic_vector(0 to 0);
      M_hwXfer : in std_logic_vector(0 to 0);
      M_request : in std_logic_vector(0 to 0);
      M_RNW : in std_logic_vector(0 to 0);
      M_select : in std_logic_vector(0 to 0);
      M_seqAddr : in std_logic_vector(0 to 0);
      Sl_beAck : in std_logic_vector(0 to 5);
      Sl_DBus : in std_logic_vector(0 to 191);
      Sl_DBusEn : in std_logic_vector(0 to 5);
      Sl_DBusEn32_63 : in std_logic_vector(0 to 5);
      Sl_errAck : in std_logic_vector(0 to 5);
      Sl_dwAck : in std_logic_vector(0 to 5);
      Sl_fwAck : in std_logic_vector(0 to 5);
      Sl_hwAck : in std_logic_vector(0 to 5);
      Sl_retry : in std_logic_vector(0 to 5);
      Sl_toutSup : in std_logic_vector(0 to 5);
      Sl_xferAck : in std_logic_vector(0 to 5);
      OPB_MRequest : out std_logic_vector(0 to 0);
      OPB_ABus : out std_logic_vector(0 to 31);
      OPB_BE : out std_logic_vector(0 to 3);
      OPB_beXfer : out std_logic;
      OPB_beAck : out std_logic;
      OPB_busLock : out std_logic;
      OPB_rdDBus : out std_logic_vector(0 to 31);
      OPB_wrDBus : out std_logic_vector(0 to 31);
      OPB_DBus : out std_logic_vector(0 to 31);
      OPB_errAck : out std_logic;
      OPB_dwAck : out std_logic;
      OPB_dwXfer : out std_logic;
      OPB_fwAck : out std_logic;
      OPB_fwXfer : out std_logic;
      OPB_hwAck : out std_logic;
      OPB_hwXfer : out std_logic;
      OPB_MGrant : out std_logic_vector(0 to 0);
      OPB_pendReq : out std_logic_vector(0 to 0);
      OPB_retry : out std_logic;
      OPB_RNW : out std_logic;
      OPB_select : out std_logic;
      OPB_seqAddr : out std_logic;
      OPB_timeout : out std_logic;
      OPB_toutSup : out std_logic;
      OPB_xferAck : out std_logic
    );
  end component;

  component system_epb_opb_bridge_inst_wrapper is
    port (
      epb_clk : in std_logic;
      epb_doe_n : out std_logic;
      epb_data_oe_n : out std_logic;
      epb_cs_n : in std_logic;
      epb_oe_n : in std_logic;
      epb_r_w_n : in std_logic;
      epb_be_n : in std_logic_vector(3 downto 0);
      epb_addr : in std_logic_vector(5 to 29);
      epb_data_i : in std_logic_vector(0 to 31);
      epb_data_o : out std_logic_vector(0 to 31);
      epb_rdy : out std_logic;
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      M_request : out std_logic;
      M_busLock : out std_logic;
      M_select : out std_logic;
      M_RNW : out std_logic;
      M_BE : out std_logic_vector(0 to 3);
      M_seqAddr : out std_logic;
      M_DBus : out std_logic_vector(0 to 31);
      M_ABus : out std_logic_vector(0 to 31);
      OPB_MGrant : in std_logic;
      OPB_xferAck : in std_logic;
      OPB_errAck : in std_logic;
      OPB_retry : in std_logic;
      OPB_timeout : in std_logic;
      OPB_DBus : in std_logic_vector(0 to 31)
    );
  end component;

  component system_epb_infrastructure_inst_wrapper is
    port (
      epb_data_buf : inout std_logic_vector(31 downto 0);
      epb_data_oe_n_i : in std_logic;
      epb_data_out_i : in std_logic_vector(31 downto 0);
      epb_data_in_o : out std_logic_vector(31 downto 0)
    );
  end component;

  component system_sys_block_inst_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      soft_reset : out std_logic;
      irq_n : out std_logic;
      app_irq : in std_logic_vector(15 downto 0);
      fab_clk : in std_logic
    );
  end component;

  component system_roach2_tut_intro_xsg_core_config_wrapper is
    port (
      clk : in std_logic;
      roach2_tut_intro_a_user_data_out : in std_logic_vector(31 downto 0);
      roach2_tut_intro_b_user_data_out : in std_logic_vector(31 downto 0);
      roach2_tut_intro_counter_ctrl_user_data_out : in std_logic_vector(31 downto 0);
      roach2_tut_intro_counter_value_user_data_in : out std_logic_vector(31 downto 0);
      roach2_tut_intro_gpio_gateway : out std_logic;
      roach2_tut_intro_gpio1_gateway : out std_logic;
      roach2_tut_intro_gpio2_gateway : out std_logic;
      roach2_tut_intro_gpio3_gateway : out std_logic;
      roach2_tut_intro_sum_a_b_user_data_in : out std_logic_vector(31 downto 0)
    );
  end component;

  component system_roach2_tut_intro_a_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_roach2_tut_intro_b_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_roach2_tut_intro_counter_ctrl_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_roach2_tut_intro_counter_value_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_roach2_tut_intro_gpio_wrapper is
    port (
      gateway : in std_logic_vector(0 to 0);
      io_pad : out std_logic_vector(0 to 0);
      clk : in std_logic;
      clk90 : in std_logic
    );
  end component;

  component system_roach2_tut_intro_gpio1_wrapper is
    port (
      gateway : in std_logic_vector(0 to 0);
      io_pad : out std_logic_vector(0 to 0);
      clk : in std_logic;
      clk90 : in std_logic
    );
  end component;

  component system_roach2_tut_intro_gpio2_wrapper is
    port (
      gateway : in std_logic_vector(0 to 0);
      io_pad : out std_logic_vector(0 to 0);
      clk : in std_logic;
      clk90 : in std_logic
    );
  end component;

  component system_roach2_tut_intro_gpio3_wrapper is
    port (
      gateway : in std_logic_vector(0 to 0);
      io_pad : out std_logic_vector(0 to 0);
      clk : in std_logic;
      clk90 : in std_logic
    );
  end component;

  component system_roach2_tut_intro_sum_a_b_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  -- Internal signals

  signal epb_clk : std_logic;
  signal epb_data_i : std_logic_vector(0 to 31);
  signal epb_data_o : std_logic_vector(31 downto 0);
  signal epb_data_oe_n : std_logic;
  signal net_gnd0 : std_logic;
  signal net_gnd1 : std_logic_vector(0 to 0);
  signal net_gnd6 : std_logic_vector(0 to 5);
  signal net_vcc1 : std_logic_vector(0 to 0);
  signal net_vcc6 : std_logic_vector(0 to 5);
  signal opb0_M_ABus : std_logic_vector(0 to 31);
  signal opb0_M_BE : std_logic_vector(0 to 3);
  signal opb0_M_DBus : std_logic_vector(0 to 31);
  signal opb0_M_RNW : std_logic_vector(0 to 0);
  signal opb0_M_busLock : std_logic_vector(0 to 0);
  signal opb0_M_request : std_logic_vector(0 to 0);
  signal opb0_M_select : std_logic_vector(0 to 0);
  signal opb0_M_seqAddr : std_logic_vector(0 to 0);
  signal opb0_OPB_ABus : std_logic_vector(0 to 31);
  signal opb0_OPB_BE : std_logic_vector(0 to 3);
  signal opb0_OPB_DBus : std_logic_vector(0 to 31);
  signal opb0_OPB_MGrant : std_logic_vector(0 to 0);
  signal opb0_OPB_RNW : std_logic;
  signal opb0_OPB_Rst : std_logic;
  signal opb0_OPB_errAck : std_logic;
  signal opb0_OPB_retry : std_logic;
  signal opb0_OPB_select : std_logic;
  signal opb0_OPB_seqAddr : std_logic;
  signal opb0_OPB_timeout : std_logic;
  signal opb0_OPB_xferAck : std_logic;
  signal opb0_Sl_DBus : std_logic_vector(0 to 191);
  signal opb0_Sl_errAck : std_logic_vector(0 to 5);
  signal opb0_Sl_retry : std_logic_vector(0 to 5);
  signal opb0_Sl_toutSup : std_logic_vector(0 to 5);
  signal opb0_Sl_xferAck : std_logic_vector(0 to 5);
  signal pgassign1 : std_logic_vector(15 downto 0);
  signal power_on_rst : std_logic;
  signal roach2_tut_intro_a_user_data_out : std_logic_vector(31 downto 0);
  signal roach2_tut_intro_b_user_data_out : std_logic_vector(31 downto 0);
  signal roach2_tut_intro_counter_ctrl_user_data_out : std_logic_vector(31 downto 0);
  signal roach2_tut_intro_counter_value_user_data_in : std_logic_vector(31 downto 0);
  signal roach2_tut_intro_gpio1_gateway : std_logic_vector(0 to 0);
  signal roach2_tut_intro_gpio2_gateway : std_logic_vector(0 to 0);
  signal roach2_tut_intro_gpio3_gateway : std_logic_vector(0 to 0);
  signal roach2_tut_intro_gpio_gateway : std_logic_vector(0 to 0);
  signal roach2_tut_intro_sum_a_b_user_data_in : std_logic_vector(31 downto 0);
  signal sys_clk : std_logic;
  signal sys_clk90 : std_logic;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of system_infrastructure_inst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_reset_block_inst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_opb0_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_epb_opb_bridge_inst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_epb_infrastructure_inst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_sys_block_inst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_intro_xsg_core_config_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_intro_a_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_intro_b_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_intro_counter_ctrl_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_intro_counter_value_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_intro_gpio_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_intro_gpio1_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_intro_gpio2_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_intro_gpio3_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_intro_sum_a_b_wrapper : component is "user_black_box";

begin

  -- Internal assignments

  pgassign1(15 downto 0) <= X"0000";
  net_gnd0 <= '0';
  net_gnd1(0 to 0) <= B"0";
  net_gnd6(0 to 5) <= B"000000";
  net_vcc1(0 to 0) <= B"1";
  net_vcc6(0 to 5) <= B"111111";

  infrastructure_inst : system_infrastructure_inst_wrapper
    port map (
      sys_clk_n => sys_clk_n,
      sys_clk_p => sys_clk_p,
      aux_clk_n => aux_clk_n,
      aux_clk_p => aux_clk_p,
      epb_clk_in => epb_clk_in,
      sys_clk => sys_clk,
      sys_clk90 => sys_clk90,
      sys_clk180 => open,
      sys_clk270 => open,
      sys_clk_lock => open,
      sys_clk2x => open,
      sys_clk2x90 => open,
      sys_clk2x180 => open,
      sys_clk2x270 => open,
      aux_clk => open,
      aux_clk90 => open,
      aux_clk180 => open,
      aux_clk270 => open,
      aux_clk2x => open,
      aux_clk2x90 => open,
      aux_clk2x180 => open,
      aux_clk2x270 => open,
      epb_clk => epb_clk,
      idelay_rst => power_on_rst,
      idelay_rdy => open,
      op_power_on_rst => power_on_rst,
      clk_200 => open,
      clk_100 => open
    );

  reset_block_inst : system_reset_block_inst_wrapper
    port map (
      clk => sys_clk,
      ip_async_reset_i => power_on_rst,
      ip_reset_i => power_on_rst,
      op_reset_o => open
    );

  opb0 : system_opb0_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      SYS_Rst => power_on_rst,
      Debug_SYS_Rst => net_gnd0,
      WDT_Rst => net_gnd0,
      M_ABus => opb0_M_ABus,
      M_BE => opb0_M_BE,
      M_beXfer => net_gnd1(0 to 0),
      M_busLock => opb0_M_busLock(0 to 0),
      M_DBus => opb0_M_DBus,
      M_DBusEn => net_gnd1(0 to 0),
      M_DBusEn32_63 => net_vcc1(0 to 0),
      M_dwXfer => net_gnd1(0 to 0),
      M_fwXfer => net_gnd1(0 to 0),
      M_hwXfer => net_gnd1(0 to 0),
      M_request => opb0_M_request(0 to 0),
      M_RNW => opb0_M_RNW(0 to 0),
      M_select => opb0_M_select(0 to 0),
      M_seqAddr => opb0_M_seqAddr(0 to 0),
      Sl_beAck => net_gnd6,
      Sl_DBus => opb0_Sl_DBus,
      Sl_DBusEn => net_vcc6,
      Sl_DBusEn32_63 => net_vcc6,
      Sl_errAck => opb0_Sl_errAck,
      Sl_dwAck => net_gnd6,
      Sl_fwAck => net_gnd6,
      Sl_hwAck => net_gnd6,
      Sl_retry => opb0_Sl_retry,
      Sl_toutSup => opb0_Sl_toutSup,
      Sl_xferAck => opb0_Sl_xferAck,
      OPB_MRequest => open,
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_beXfer => open,
      OPB_beAck => open,
      OPB_busLock => open,
      OPB_rdDBus => open,
      OPB_wrDBus => open,
      OPB_DBus => opb0_OPB_DBus,
      OPB_errAck => opb0_OPB_errAck,
      OPB_dwAck => open,
      OPB_dwXfer => open,
      OPB_fwAck => open,
      OPB_fwXfer => open,
      OPB_hwAck => open,
      OPB_hwXfer => open,
      OPB_MGrant => opb0_OPB_MGrant(0 to 0),
      OPB_pendReq => open,
      OPB_retry => opb0_OPB_retry,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      OPB_timeout => opb0_OPB_timeout,
      OPB_toutSup => open,
      OPB_xferAck => opb0_OPB_xferAck
    );

  epb_opb_bridge_inst : system_epb_opb_bridge_inst_wrapper
    port map (
      epb_clk => epb_clk,
      epb_doe_n => epb_doe_n,
      epb_data_oe_n => epb_data_oe_n,
      epb_cs_n => epb_cs_n,
      epb_oe_n => epb_oe_n,
      epb_r_w_n => epb_r_w_n,
      epb_be_n => epb_be_n(0 to 3),
      epb_addr => epb_addr,
      epb_data_i => epb_data_i,
      epb_data_o => epb_data_o(31 downto 0),
      epb_rdy => epb_rdy,
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      M_request => opb0_M_request(0),
      M_busLock => opb0_M_busLock(0),
      M_select => opb0_M_select(0),
      M_RNW => opb0_M_RNW(0),
      M_BE => opb0_M_BE,
      M_seqAddr => opb0_M_seqAddr(0),
      M_DBus => opb0_M_DBus,
      M_ABus => opb0_M_ABus,
      OPB_MGrant => opb0_OPB_MGrant(0),
      OPB_xferAck => opb0_OPB_xferAck,
      OPB_errAck => opb0_OPB_errAck,
      OPB_retry => opb0_OPB_retry,
      OPB_timeout => opb0_OPB_timeout,
      OPB_DBus => opb0_OPB_DBus
    );

  epb_infrastructure_inst : system_epb_infrastructure_inst_wrapper
    port map (
      epb_data_buf => epb_data(0 to 31),
      epb_data_oe_n_i => epb_data_oe_n,
      epb_data_out_i => epb_data_o,
      epb_data_in_o => epb_data_i(0 to 31)
    );

  sys_block_inst : system_sys_block_inst_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(0 to 31),
      Sl_errAck => opb0_Sl_errAck(0),
      Sl_retry => opb0_Sl_retry(0),
      Sl_toutSup => opb0_Sl_toutSup(0),
      Sl_xferAck => opb0_Sl_xferAck(0),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      soft_reset => open,
      irq_n => ppc_irq_n,
      app_irq => pgassign1,
      fab_clk => sys_clk
    );

  roach2_tut_intro_XSG_core_config : system_roach2_tut_intro_xsg_core_config_wrapper
    port map (
      clk => sys_clk,
      roach2_tut_intro_a_user_data_out => roach2_tut_intro_a_user_data_out,
      roach2_tut_intro_b_user_data_out => roach2_tut_intro_b_user_data_out,
      roach2_tut_intro_counter_ctrl_user_data_out => roach2_tut_intro_counter_ctrl_user_data_out,
      roach2_tut_intro_counter_value_user_data_in => roach2_tut_intro_counter_value_user_data_in,
      roach2_tut_intro_gpio_gateway => roach2_tut_intro_gpio_gateway(0),
      roach2_tut_intro_gpio1_gateway => roach2_tut_intro_gpio1_gateway(0),
      roach2_tut_intro_gpio2_gateway => roach2_tut_intro_gpio2_gateway(0),
      roach2_tut_intro_gpio3_gateway => roach2_tut_intro_gpio3_gateway(0),
      roach2_tut_intro_sum_a_b_user_data_in => roach2_tut_intro_sum_a_b_user_data_in
    );

  roach2_tut_intro_a : system_roach2_tut_intro_a_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(32 to 63),
      Sl_errAck => opb0_Sl_errAck(1),
      Sl_retry => opb0_Sl_retry(1),
      Sl_toutSup => opb0_Sl_toutSup(1),
      Sl_xferAck => opb0_Sl_xferAck(1),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => roach2_tut_intro_a_user_data_out,
      user_clk => sys_clk
    );

  roach2_tut_intro_b : system_roach2_tut_intro_b_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(64 to 95),
      Sl_errAck => opb0_Sl_errAck(2),
      Sl_retry => opb0_Sl_retry(2),
      Sl_toutSup => opb0_Sl_toutSup(2),
      Sl_xferAck => opb0_Sl_xferAck(2),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => roach2_tut_intro_b_user_data_out,
      user_clk => sys_clk
    );

  roach2_tut_intro_counter_ctrl : system_roach2_tut_intro_counter_ctrl_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(96 to 127),
      Sl_errAck => opb0_Sl_errAck(3),
      Sl_retry => opb0_Sl_retry(3),
      Sl_toutSup => opb0_Sl_toutSup(3),
      Sl_xferAck => opb0_Sl_xferAck(3),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => roach2_tut_intro_counter_ctrl_user_data_out,
      user_clk => sys_clk
    );

  roach2_tut_intro_counter_value : system_roach2_tut_intro_counter_value_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(128 to 159),
      Sl_errAck => opb0_Sl_errAck(4),
      Sl_retry => opb0_Sl_retry(4),
      Sl_toutSup => opb0_Sl_toutSup(4),
      Sl_xferAck => opb0_Sl_xferAck(4),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_in => roach2_tut_intro_counter_value_user_data_in,
      user_clk => sys_clk
    );

  roach2_tut_intro_gpio : system_roach2_tut_intro_gpio_wrapper
    port map (
      gateway => roach2_tut_intro_gpio_gateway(0 to 0),
      io_pad => roach2_tut_intro_gpio_ext(0 to 0),
      clk => sys_clk,
      clk90 => sys_clk90
    );

  roach2_tut_intro_gpio1 : system_roach2_tut_intro_gpio1_wrapper
    port map (
      gateway => roach2_tut_intro_gpio1_gateway(0 to 0),
      io_pad => roach2_tut_intro_gpio1_ext(0 to 0),
      clk => sys_clk,
      clk90 => sys_clk90
    );

  roach2_tut_intro_gpio2 : system_roach2_tut_intro_gpio2_wrapper
    port map (
      gateway => roach2_tut_intro_gpio2_gateway(0 to 0),
      io_pad => roach2_tut_intro_gpio2_ext(0 to 0),
      clk => sys_clk,
      clk90 => sys_clk90
    );

  roach2_tut_intro_gpio3 : system_roach2_tut_intro_gpio3_wrapper
    port map (
      gateway => roach2_tut_intro_gpio3_gateway(0 to 0),
      io_pad => roach2_tut_intro_gpio3_ext(0 to 0),
      clk => sys_clk,
      clk90 => sys_clk90
    );

  roach2_tut_intro_sum_a_b : system_roach2_tut_intro_sum_a_b_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(160 to 191),
      Sl_errAck => opb0_Sl_errAck(5),
      Sl_retry => opb0_Sl_retry(5),
      Sl_toutSup => opb0_Sl_toutSup(5),
      Sl_xferAck => opb0_Sl_xferAck(5),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_in => roach2_tut_intro_sum_a_b_user_data_in,
      user_clk => sys_clk
    );

end architecture STRUCTURE;

