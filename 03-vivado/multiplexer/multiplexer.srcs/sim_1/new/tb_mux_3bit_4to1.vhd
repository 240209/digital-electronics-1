----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/23/2023 02:16:08 PM
-- Design Name: 
-- Module Name: tb_mux_3bit_4to1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_mux_3bit_4to1 is
--  Port ( );
end tb_mux_3bit_4to1;

architecture Behavioral of tb_mux_3bit_4to1 is

    -- Local signals
    signal sig_a        : std_logic_vector (2 downto 0);
    signal sig_b        : std_logic_vector (2 downto 0);
    signal sig_c        : std_logic_vector (2 downto 0);
    signal sig_d        : std_logic_vector (2 downto 0);
    signal sig_sel      : std_logic_vector (1 downto 0);
    signal sig_out      : std_logic_vector (2 downto 0);

begin

  -- Connecting testbench signals with comparator_4bit
  -- entity (Unit Under Test)
  uut_mux_3bit_4to1 : entity work.mux_3bit_4to1
    port map (
      d_i           => sig_d,
      c_i           => sig_c,
      b_i           => sig_b,
      a_i           => sig_a,
      sel_i         => sig_sel,
      f_o           => sig_out
    );

    sig_a <= "110";
    sig_b <= "111";
    sig_c <= "101";
    sig_d <= "100";
  --------------------------------------------------------
  -- Data generation process
  --------------------------------------------------------
  p_stimulus : process is
  begin

    -- Report a note at the beginning of stimulus process
    report "Stimulus process started";

    -- First test case ...
    sig_sel <= "00";
    
    wait for 100 ns;
    -- ... and its expected outputs
    assert (
            (sig_out = "110")
        )
      -- If false, then report an error
      -- If true, then do not report anything
      report "Input selection sel='00' FAILED"
      severity error;

    -- Second test case ...
    sig_sel <= "01";
    
    wait for 100 ns;
    -- ... and its expected outputs
    assert (
            (sig_out = "111")
        )
      -- If false, then report an error
      -- If true, then do not report anything
      report "Input selection sel='01' FAILED"
      severity error;

    -- Third test case ...
    sig_sel <= "10";
    
    wait for 100 ns;
    -- ... and its expected outputs
    assert (
            (sig_out = "101")
        )
      -- If false, then report an error
      -- If true, then do not report anything
      report "Input selection sel='10' FAILED"
      severity error;

    -- Fourth test case ...
    sig_sel <= "11";
    
    wait for 100 ns;
    -- ... and its expected outputs
    assert (
            (sig_out = "100")
        )
      -- If false, then report an error
      -- If true, then do not report anything
      report "Input selection sel='11' FAILED"
      severity error;

    -- Report a note at the end of stimulus process
    report "Stimulus process finished";

    wait; -- Data generation process is suspended forever

  end process p_stimulus;

end Behavioral;
