----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.03.2022 10:39:28
-- Design Name: 
-- Module Name: Laboratorio4 - Behavioral
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

entity Laboratorio4 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           Z : out STD_LOGIC);
end Laboratorio4;

architecture Behavioral of Laboratorio4 is
signal s1_out:std_logic;
signal s2_out:std_logic;
signal s3_out:std_logic;
signal s4_out:std_logic;
begin
-------------Mapeo
s1_out<= A and not D;
s2_out<= A and C;
s3_out<= not B and C and not D;
s4_out<= not A and B and not C;
Z<=s1_out or s2_out or s3_out or s4_out;


end Behavioral;
