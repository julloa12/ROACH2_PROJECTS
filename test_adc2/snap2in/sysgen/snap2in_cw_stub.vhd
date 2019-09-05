----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Design Name: 
-- Module Name: 
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity snap2in_cw_stub is
    port (
      ce: in std_logic := '1'; 
      clk: in std_logic; -- clock period = 10.0 ns (100.0 Mhz)
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
end snap2in_cw_stub;

architecture Behavioral of snap2in_cw_stub is

  component snap2in_cw
    port (
      ce: in std_logic := '1'; 
      clk: in std_logic; -- clock period = 10.0 ns (100.0 Mhz)
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
  end component;
begin

snap2in_cw_i : snap2in_cw
  port map (
    ce => ce,
    clk => clk,
    snap2in_adc_mkid_4x1_user_data_i0 => snap2in_adc_mkid_4x1_user_data_i0,
    snap2in_adc_mkid_4x1_user_data_i1 => snap2in_adc_mkid_4x1_user_data_i1,
    snap2in_adc_mkid_4x1_user_data_i2 => snap2in_adc_mkid_4x1_user_data_i2,
    snap2in_adc_mkid_4x1_user_data_i3 => snap2in_adc_mkid_4x1_user_data_i3,
    snap2in_adc_mkid_4x1_user_data_q0 => snap2in_adc_mkid_4x1_user_data_q0,
    snap2in_adc_mkid_4x1_user_data_q1 => snap2in_adc_mkid_4x1_user_data_q1,
    snap2in_adc_mkid_4x1_user_data_q2 => snap2in_adc_mkid_4x1_user_data_q2,
    snap2in_adc_mkid_4x1_user_data_q3 => snap2in_adc_mkid_4x1_user_data_q3,
    snap2in_adc_mkid_4x1_user_sync => snap2in_adc_mkid_4x1_user_sync,
    snap2in_adcsnap0_bram_data_out => snap2in_adcsnap0_bram_data_out,
    snap2in_adcsnap0_ctrl_user_data_out => snap2in_adcsnap0_ctrl_user_data_out,
    snap2in_adcsnap0_trig_offset_user_data_out => snap2in_adcsnap0_trig_offset_user_data_out,
    snap2in_adcsnap0_bram_addr => snap2in_adcsnap0_bram_addr,
    snap2in_adcsnap0_bram_data_in => snap2in_adcsnap0_bram_data_in,
    snap2in_adcsnap0_bram_we => snap2in_adcsnap0_bram_we,
    snap2in_adcsnap0_status_user_data_in => snap2in_adcsnap0_status_user_data_in,
    snap2in_gpio1_gateway => snap2in_gpio1_gateway,
    snap2in_gpio3_gateway => snap2in_gpio3_gateway,
    snap2in_gpio_gateway => snap2in_gpio_gateway);
end Behavioral;

