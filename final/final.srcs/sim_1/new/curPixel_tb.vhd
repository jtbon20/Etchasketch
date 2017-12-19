----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Taggart Bonham and Will Chisholm 
-- 
-- Create Date: 05/27/2017 03:38:57 PM
-- Design Name: 
-- Module Name: curpixel_tb - Behavioral
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

entity curPixel_tb is
--  Port ( );
end curPixel_tb;



architecture Behavioral of curPixel_tb is

component curpixel is
Port ( clk: in STD_LOGIC;
           UP : in STD_LOGIC; --tells which direction to move the current location of the pixel
           DOWN : in STD_LOGIC;
           LEFT : in STD_LOGIC;
           RIGHT : in STD_LOGIC;
           curLoc : out STD_LOGIC_VECTOR(16 downto 0)); --new current location of pixel
end component;


signal UP : std_logic := '0';
signal DOWN: std_logic := '0';
signal LEFT : std_logic := '0';
signal RIGHT : std_logic := '0';
signal mclk: std_logic := '0';
 signal curLoc : STD_LOGIC_VECTOR(16 downto 0); --new current location of pixel



begin

uut :  curpixel
port map (clk => mclk,
            UP => up,
            DOWN => DOWN,
            LEFT => LEFT,
            RIGHT => RIGHT,
         curLoc => curloc);
            
            
clk_proc : process
            BEGIN
            
              mclk <= '0';
              wait for 5 ns;   
            
              mclk <= '1';
              wait for 5 ns;
            
            END PROCESS clk_proc;
            
            
            
stim_proc : process
            
            
            begin
            
            wait for 80 ns;
            UP <= '1';
            wait for 10 ns;
            UP <= '0';
            wait for 80 ns;
--            DOWN <= '1';
--            wait for 10 ns;
--            DOWN <= '0';
--            wait for 80 ns;
            LEFT <= '1';
            Up <= '1';
            wait for 10 ns;
            LEFT <= '0';
            wait for 80 ns;
            
            end process;

end Behavioral;
