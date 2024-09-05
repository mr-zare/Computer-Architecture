library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
		
entity piso is 
Port ( load : in STD_LOGIC; 
reset : in STD_LOGIC; 
din : in STD_LOGIC_VECTOR(3 downto 0); 
clk : in STD_LOGIC; 
dout : out STD_LOGIC);
end piso; 
architecture Behavioral of piso is 
begin 
process (clk,reset,load,din) is 
variable temp : std_logic_vector (din'range); 
begin 
if (reset='1') then 
temp := (others=>'0'); 
elsif (load='1') then 
temp := din ; 
elsif (clk'event and clk='1') then 
dout <= temp(3); 
temp := temp(2 downto 0) & '0'; 
end if; 
end process; 
end Behavioral;