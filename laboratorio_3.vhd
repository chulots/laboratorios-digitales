library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity laboratorio_3 is
Port (X: in std_logic;
      Y: in std_logic;
      Z: in std_logic;
      A: out std_logic );
end laboratorio_3;

architecture Behavioral of laboratorio_3 is
signal  xy_out: std_logic;
signal  xz_out: std_logic;
signal  yz_out: std_logic;
signal z_out: std_logic;

begin

xy_out<= not x and  y;
xz_out<=not x and z;
yz_out<= y and z;
z_out<= x and not y and not z;
A<=xy_out or xz_out or yz_out or z_out;

end Behavioral;
