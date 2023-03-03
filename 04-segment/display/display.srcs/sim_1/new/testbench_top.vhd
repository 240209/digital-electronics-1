----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2023 02:31:45 PM
-- Design Name: 
-- Module Name: testbench_top - Behavioral
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

entity testbench_top is
end testbench_top;

------------------------------------------------------------
-- Architecture body for testbench
------------------------------------------------------------

architecture testbench of testbench_top is

  -- Testbench local signals
  signal sig_led4 : std_logic;
  signal sig_led5 : std_logic;
  signal sig_led6 : std_logic;
  signal sig_led7 : std_logic;
  signal sig_sw   : std_logic_vector(3 downto 0);
  signal sig_btnc : std_logic;

begin

  -- Connecting testbench signals with decoder entity
  -- (Unit Under Test)
  uut_testbench_top : entity work.top
    port map (
      LED(4) => sig_led4,
      LED(5) => sig_led5,
      LED(6) => sig_led6,
      LED(7) => sig_led7,
      BTNC => sig_btnc,
      SW   => sig_sw
    );

  --------------------------------------------------------
  -- Data generation process
  --------------------------------------------------------
  p_stimulus : process is
  begin

    report "Stimulus process started";

    report "Stimulus process finished";
    wait;

  end process p_stimulus;

end architecture testbench;
