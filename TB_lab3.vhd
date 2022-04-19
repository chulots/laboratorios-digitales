library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TB_lab3 is
--  Port ( );
end TB_lab3;

architecture Behavioral of TB_lab3 is
component laboratorio_3 is 
Port (X: in std_logic; 
      Y: in std_logic; 
      Z: in std_logic;
      A: out std_logic);
end component;
--entradas
signal X_s: std_logic;
signal Y_s: std_logic;
signal Z_s: std_logic;
--salida
signal A_s: std_logic;

begin
--diseno bajo prueba
DUT: laboratorio_3 port map (X=>X_s,
                        Y=>Y_s,
                        Z=>Z_s,
                        A=>A_s);
--generar todas las entradas asignando valores por la tabla de verdad
process
begin

X_s<='0';
Y_s<='0';
Z_s<='0';
wait for 100 ns;
X_s<='0';
Y_s<='0';
Z_s<='1';
wait for 100 ns;
X_s<='0';
Y_s<='1';
Z_s<='0';
wait for 100 ns;
X_s<='0';
Y_s<='1';
Z_s<='1';
wait for 100 ns;
X_s<='1';
Y_s<='0';
Z_s<='0';
wait for 100 ns;
X_s<='1';
Y_s<='0';
Z_s<='1';
wait for 100 ns;
X_s<='1';
Y_s<='1';
Z_s<='0';
wait for 100 ns;

X_s<='1';
Y_s<='1';
Z_s<='1';
wait for 100 ns;
end process;

end Behavioral;
