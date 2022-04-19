----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.03.2022 10:47:30
-- Design Name: 
-- Module Name: tb_lab4 - Behavioral
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

entity tb_lab4 is
--  Port ( );
end tb_lab4;

architecture Behavioral of tb_lab4 is
component Laboratorio4 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           Z : out STD_LOGIC);
end component Laboratorio4;


signal A: std_logic;
signal B: std_logic;
signal C: std_logic;
signal D: std_logic;
signal Z: std_logic;
begin 
uut:Laboratorio4 port map (A=>A,B=>B,C=>C,D=>D,Z=>Z);
stimulus_process: process
begin
A<='0';
B<='0';
C<='0';
D<='0';
wait for 50ns;
A<='0';
B<='0';
C<='0';
D<='1';
wait for 50ns;
A<='0';
B<='0';
C<='1';
D<='0';
wait for 50ns;
A<='0';
B<='0';
C<='1';
D<='1';
wait for 50ns;
A<='0';
B<='1';
C<='0';
D<='0';
wait for 50ns;
A<='0';
B<='1';
C<='0';
D<='1';
wait for 50ns;
A<='0';
B<='1';
C<='1';
D<='0';
wait for 50ns;
A<='0';
B<='1';
C<='1';
D<='1';
wait for 50ns;
A<='1';
B<='0';
C<='0';
D<='0';
wait for 50ns;
A<='1';
B<='0';
C<='0';
D<='1';
wait for 50ns;
A<='1';
B<='0';
C<='1';
D<='0';
wait for 50ns;
A<='1';
B<='0';
C<='1';
D<='1';
wait for 50ns;
A<='1';
B<='1';
C<='0';
D<='0';
wait for 50ns;
A<='1';
B<='1';
C<='0';
D<='1';
wait for 50ns;
A<='1';
B<='1';
C<='1';
D<='0';
wait for 50ns;
A<='1';
B<='1';
C<='1';
D<='1';
wait for 50ns;


end process;

end Behavioral;
