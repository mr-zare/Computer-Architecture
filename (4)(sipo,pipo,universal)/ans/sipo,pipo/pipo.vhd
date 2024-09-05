library ieee;
use ieee.std_logic_1164.all;

entity PIPO_shift_register is
    generic(n : positive := 4);
    port(
        clk : in std_logic;
        D : in std_logic_vector(n-1 downto 0); -- D == input 
        Q : out std_logic_vector(n-1 downto 0) -- Q == output
 );
end PIPO_shift_register;

architecture Behavioral of PIPO_shift_register is

begin

    process (clk)
        variable temp_out : std_logic_vector(n-1 downto 0);
    begin

        if (clk'event and clk='1') then
            temp_out := D; -- new inputs replaced with an old one.
        end if;
        Q <= temp_out;
    end process;

end Behavioral;