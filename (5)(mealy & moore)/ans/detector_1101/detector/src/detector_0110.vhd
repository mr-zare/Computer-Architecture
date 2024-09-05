library ieee;
use ieee.std_logic_1164.all;
entity mealy_detector is
port (input, reset, clk : in std_logic; 
		output : out std_logic);
end entity mealy_detector;
architecture Behavioral of mealy_detector is
	type state is (rst, s0, s1, s2);
	signal present_state : state := rst;
begin
process (clk, reset) 	--reset can be asynchronous with clk
begin
	if reset = '1' then
		present_state <= rst;
	elsif (clk = '1' and clk'event) then
		case present_state is
			when rst =>
				if input = '1' then
					present_state <= rst;
				else 
					present_state <= s0; 
				end if;
			when s0 =>
				if input = '1' then 
					present_state <= s1;
				else 
					present_state <= s0; 
				end if;
			when s1 =>
				if input = '1' then
					present_state <= s2;
				else  
					present_state <= s0;--present_state <= rst;
				end if;
			when s2 =>
			if input = '1' then
				present_state <= rst;
			else 
				present_state <= s0;
			end if;
			when others => 
				present_state <= rst;
		end case;
	end if;
end process;
	output <= '1' when (present_state = s2 and input = '0') else '0';
end Behavioral;
