----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Taggart Bonham and Will Chisholm
-- 
-- Create Date: 05/27/2017 01:11:01 PM
-- Design Name: 
-- Module Name: ColorDecoder - Behavioral
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

entity ColorDecoder is
    Port ( r : in STD_LOGIC; --takes in three switch values and ouputs a combination of those colors
           g : in STD_LOGIC;
           b : in STD_LOGIC;
           COLOR : out STD_LOGIC_VECTOR(7 downto 0));
end ColorDecoder;

architecture Behavioral of ColorDecoder is
signal Red, Green : STD_LOGIC_VECTOR(2 downto 0):= (others =>'1'); --3 bits for red and green
signal Blue : STD_LOGIC_VECTOR(1 downto 0):= (others =>'1'); --2 bits for blue
begin

--turns colors on and off based on inputs
Red <= "111" when r = '1' else
        "000" when r = '0';

Green <= "111" when g = '1' else
        "000" when g = '0';
        
 Blue <= "11" when b = '1' else
                "00" when b = '0';   
                
--wires output from three intermediate wires
COLOR <= Red & Green & Blue; 
end Behavioral;
