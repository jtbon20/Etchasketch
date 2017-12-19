----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/28/2017 04:02:39 PM
-- Design Name: 
-- Module Name: Mux2x1 - Behavioral
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

entity Mux2x1 is --simples 2x1 Mux
  Port ( A : in STD_LOGIC_VECTOR (16 downto 0);
         B : in STD_LOGIC_VECTOR (16 downto 0);
         sel : in STD_LOGIC;
         y: out STD_LOGIC_VECTOR (16 downto 0));
end Mux2x1;

architecture Behavioral of Mux2x1 is


begin

with sel select y<= --Mux logic
     A when '0',
    B when '1';


end Behavioral;
