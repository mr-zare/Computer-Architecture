LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY async_2bit_counter_tb IS
END async_2bit_counter_tb;
 
ARCHITECTURE behavior OF async_2bit_counter_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT async_2bit_counter
    PORT(
         reset1 : inout  std_logic;
         clk1 : IN  std_logic;
         output : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal reset1 : std_logic := '0';
   signal clk1 : std_logic := '0';

 	--Outputs
   signal output : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant clk1_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: async_2bit_counter PORT MAP (
          reset1 => reset1,
          clk1 => clk1,
          output => output
        );

   -- Clock process definitions
   clk1_process :process
   begin
		clk1 <= '0';
		wait for clk1_period/2;
		clk1 <= '1';
		wait for clk1_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
      wait for clk1_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
