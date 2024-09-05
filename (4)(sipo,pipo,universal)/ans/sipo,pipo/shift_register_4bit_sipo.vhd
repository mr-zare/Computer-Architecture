library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shift_register_4bit is
	generic (n: integer :=4);
	port(
		input :in std_logic := '0';
		clk , clr :in std_logic;
		output : out std_logic_vector( n-1 downto 0)
		);
end shift_register_4bit;

architecture Behavioral of shift_register_4bit is
component dff is
port(
	d , reset , clk:in std_logic;
	q ,q_prime:out std_logic
	);
end component;
begin
	process (clk)
	variable t_out : std_logic_vector(n-1 downto 0);
	begin
		if(clr = '1')then
			output <= "0000";
		elsif (clk = '1' )then--TODO			
			t_out := t_out(n-2 downto 0) & input;
		end if;
		output <= t_out;
	end process;
			


end Behavioral;

