-------------------------------------------------------------------------------
-- system_snapshot_roach2_xsg_core_config_wrapper.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity system_snapshot_roach2_xsg_core_config_wrapper is
  port (
    clk : in std_logic;
    snapshot_roach2_asiaa_adc5g_sync : in std_logic;
    snapshot_roach2_asiaa_adc5g_user_data_i0 : in std_logic_vector(7 downto 0);
    snapshot_roach2_asiaa_adc5g_user_data_i1 : in std_logic_vector(7 downto 0);
    snapshot_roach2_asiaa_adc5g_user_data_i2 : in std_logic_vector(7 downto 0);
    snapshot_roach2_asiaa_adc5g_user_data_i3 : in std_logic_vector(7 downto 0);
    snapshot_roach2_asiaa_adc5g_user_data_i4 : in std_logic_vector(7 downto 0);
    snapshot_roach2_asiaa_adc5g_user_data_i5 : in std_logic_vector(7 downto 0);
    snapshot_roach2_asiaa_adc5g_user_data_i6 : in std_logic_vector(7 downto 0);
    snapshot_roach2_asiaa_adc5g_user_data_i7 : in std_logic_vector(7 downto 0);
    snapshot_roach2_asiaa_adc5g_user_data_q0 : in std_logic_vector(7 downto 0);
    snapshot_roach2_asiaa_adc5g_user_data_q1 : in std_logic_vector(7 downto 0);
    snapshot_roach2_asiaa_adc5g_user_data_q2 : in std_logic_vector(7 downto 0);
    snapshot_roach2_asiaa_adc5g_user_data_q3 : in std_logic_vector(7 downto 0);
    snapshot_roach2_asiaa_adc5g_user_data_q4 : in std_logic_vector(7 downto 0);
    snapshot_roach2_asiaa_adc5g_user_data_q5 : in std_logic_vector(7 downto 0);
    snapshot_roach2_asiaa_adc5g_user_data_q6 : in std_logic_vector(7 downto 0);
    snapshot_roach2_asiaa_adc5g_user_data_q7 : in std_logic_vector(7 downto 0);
    snapshot_roach2_snapshot_bram_data_out : in std_logic_vector(127 downto 0);
    snapshot_roach2_snapshot_bram_addr : out std_logic_vector(9 downto 0);
    snapshot_roach2_snapshot_bram_data_in : out std_logic_vector(127 downto 0);
    snapshot_roach2_snapshot_bram_we : out std_logic;
    snapshot_roach2_snapshot_ctrl_user_data_out : in std_logic_vector(31 downto 0);
    snapshot_roach2_snapshot_status_user_data_in : out std_logic_vector(31 downto 0)
  );
end system_snapshot_roach2_xsg_core_config_wrapper;

architecture STRUCTURE of system_snapshot_roach2_xsg_core_config_wrapper is

  component snapshot_roach2 is
    port (
      clk : in std_logic;
      snapshot_roach2_asiaa_adc5g_sync : in std_logic;
      snapshot_roach2_asiaa_adc5g_user_data_i0 : in std_logic_vector(7 downto 0);
      snapshot_roach2_asiaa_adc5g_user_data_i1 : in std_logic_vector(7 downto 0);
      snapshot_roach2_asiaa_adc5g_user_data_i2 : in std_logic_vector(7 downto 0);
      snapshot_roach2_asiaa_adc5g_user_data_i3 : in std_logic_vector(7 downto 0);
      snapshot_roach2_asiaa_adc5g_user_data_i4 : in std_logic_vector(7 downto 0);
      snapshot_roach2_asiaa_adc5g_user_data_i5 : in std_logic_vector(7 downto 0);
      snapshot_roach2_asiaa_adc5g_user_data_i6 : in std_logic_vector(7 downto 0);
      snapshot_roach2_asiaa_adc5g_user_data_i7 : in std_logic_vector(7 downto 0);
      snapshot_roach2_asiaa_adc5g_user_data_q0 : in std_logic_vector(7 downto 0);
      snapshot_roach2_asiaa_adc5g_user_data_q1 : in std_logic_vector(7 downto 0);
      snapshot_roach2_asiaa_adc5g_user_data_q2 : in std_logic_vector(7 downto 0);
      snapshot_roach2_asiaa_adc5g_user_data_q3 : in std_logic_vector(7 downto 0);
      snapshot_roach2_asiaa_adc5g_user_data_q4 : in std_logic_vector(7 downto 0);
      snapshot_roach2_asiaa_adc5g_user_data_q5 : in std_logic_vector(7 downto 0);
      snapshot_roach2_asiaa_adc5g_user_data_q6 : in std_logic_vector(7 downto 0);
      snapshot_roach2_asiaa_adc5g_user_data_q7 : in std_logic_vector(7 downto 0);
      snapshot_roach2_snapshot_bram_data_out : in std_logic_vector(127 downto 0);
      snapshot_roach2_snapshot_bram_addr : out std_logic_vector(9 downto 0);
      snapshot_roach2_snapshot_bram_data_in : out std_logic_vector(127 downto 0);
      snapshot_roach2_snapshot_bram_we : out std_logic;
      snapshot_roach2_snapshot_ctrl_user_data_out : in std_logic_vector(31 downto 0);
      snapshot_roach2_snapshot_status_user_data_in : out std_logic_vector(31 downto 0)
    );
  end component;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of snapshot_roach2 : component is "user_black_box";

begin

  snapshot_roach2_XSG_core_config : snapshot_roach2
    port map (
      clk => clk,
      snapshot_roach2_asiaa_adc5g_sync => snapshot_roach2_asiaa_adc5g_sync,
      snapshot_roach2_asiaa_adc5g_user_data_i0 => snapshot_roach2_asiaa_adc5g_user_data_i0,
      snapshot_roach2_asiaa_adc5g_user_data_i1 => snapshot_roach2_asiaa_adc5g_user_data_i1,
      snapshot_roach2_asiaa_adc5g_user_data_i2 => snapshot_roach2_asiaa_adc5g_user_data_i2,
      snapshot_roach2_asiaa_adc5g_user_data_i3 => snapshot_roach2_asiaa_adc5g_user_data_i3,
      snapshot_roach2_asiaa_adc5g_user_data_i4 => snapshot_roach2_asiaa_adc5g_user_data_i4,
      snapshot_roach2_asiaa_adc5g_user_data_i5 => snapshot_roach2_asiaa_adc5g_user_data_i5,
      snapshot_roach2_asiaa_adc5g_user_data_i6 => snapshot_roach2_asiaa_adc5g_user_data_i6,
      snapshot_roach2_asiaa_adc5g_user_data_i7 => snapshot_roach2_asiaa_adc5g_user_data_i7,
      snapshot_roach2_asiaa_adc5g_user_data_q0 => snapshot_roach2_asiaa_adc5g_user_data_q0,
      snapshot_roach2_asiaa_adc5g_user_data_q1 => snapshot_roach2_asiaa_adc5g_user_data_q1,
      snapshot_roach2_asiaa_adc5g_user_data_q2 => snapshot_roach2_asiaa_adc5g_user_data_q2,
      snapshot_roach2_asiaa_adc5g_user_data_q3 => snapshot_roach2_asiaa_adc5g_user_data_q3,
      snapshot_roach2_asiaa_adc5g_user_data_q4 => snapshot_roach2_asiaa_adc5g_user_data_q4,
      snapshot_roach2_asiaa_adc5g_user_data_q5 => snapshot_roach2_asiaa_adc5g_user_data_q5,
      snapshot_roach2_asiaa_adc5g_user_data_q6 => snapshot_roach2_asiaa_adc5g_user_data_q6,
      snapshot_roach2_asiaa_adc5g_user_data_q7 => snapshot_roach2_asiaa_adc5g_user_data_q7,
      snapshot_roach2_snapshot_bram_data_out => snapshot_roach2_snapshot_bram_data_out,
      snapshot_roach2_snapshot_bram_addr => snapshot_roach2_snapshot_bram_addr,
      snapshot_roach2_snapshot_bram_data_in => snapshot_roach2_snapshot_bram_data_in,
      snapshot_roach2_snapshot_bram_we => snapshot_roach2_snapshot_bram_we,
      snapshot_roach2_snapshot_ctrl_user_data_out => snapshot_roach2_snapshot_ctrl_user_data_out,
      snapshot_roach2_snapshot_status_user_data_in => snapshot_roach2_snapshot_status_user_data_in
    );

end architecture STRUCTURE;

