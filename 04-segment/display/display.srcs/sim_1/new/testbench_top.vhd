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
    Port ( LED4 : out STD_LOGIC;
           LED5 : out STD_LOGIC;
           LED6 : out STD_LOGIC;
           LED7 : out STD_LOGIC;
           SW : in STD_LOGIC_VECTOR (3 downto 0));
end testbench_top;

architecture Behavioral of testbench_top is

begin


end Behavioral;
