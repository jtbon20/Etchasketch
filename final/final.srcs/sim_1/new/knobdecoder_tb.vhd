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

entity knobdecoder_tb is
--  Port ( );
end knobdecoder_tb;



architecture Behavioral of knobdecoder_tb is

component knobdecoder is
    Port ( a : in STD_LOGIC;  --knob signal a
           b : in STD_LOGIC;  --knob signal b
           cw : out STD_LOGIC;  --1 if knob is turning clockwise, 0 else
           ccw : out STD_LOGIC;  --1 if knob is turning counter-clockwise, 0 else
           clk : in STD_LOGIC);
end component;


signal A, B, cW, CCW : std_logic := '0';
signal mclk: std_logic := '0';




begin

uut : knobdecoder
port map (clk => mclk,
            a => a,
            b => b,
            cw => cw,
            ccw => ccw);
            
            
clk_proc : process
            BEGIN
            
              mclk <= '0';
              wait for 5 ns;   
            
              mclk <= '1';
              wait for 5 ns;
            
            END PROCESS clk_proc;
            
            
            
stim_proc : process
 begin
  
  
 --simulation of clockwise knob turning          
 wait for 80 ns;
 a <= '1';
 wait for 10 ns;
 b <= '1';
wait for 10 ns;
 a <= '0';
wait for 10 ns;
 b <= '0';
 
 --ccw turning
 wait for 40 ns;
 b <= '1';
wait for 10 ns;
a <= '1';
 wait for 10 ns;
 b <= '0';
wait for 10 ns;
 a <= '0';
wait for 40 ns;  
 end process;

end Behavioral;
