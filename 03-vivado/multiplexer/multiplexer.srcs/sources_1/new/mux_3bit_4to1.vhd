----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/23/2023 02:10:27 PM
-- Design Name: 
-- Module Name: mux_3bit_4to1 - Behavioral
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

entity mux_3bit_4to1 is
    Port ( a_i : in STD_LOGIC_VECTOR (2 downto 0); --! Input data A[7:0]
           b_i : in STD_LOGIC_VECTOR (2 downto 0); --! Input data B[7:0]
           c_i : in STD_LOGIC_VECTOR (2 downto 0); --! Input data C[7:0]
           d_i : in STD_LOGIC_VECTOR (2 downto 0); --! Input data D[7:0]
           sel_i : in STD_LOGIC_VECTOR (1 downto 0); --! output selector SEL[1:0]
           f_o : out STD_LOGIC_VECTOR (2 downto 0)); --! switched output F[7:0]
end mux_3bit_4to1;

architecture Behavioral of mux_3bit_4to1 is

begin

    f_o <= a_i when sel_i = "00" else
           b_i when sel_i = "01" else
           c_i when sel_i = "10" else
           d_i;

end Behavioral;