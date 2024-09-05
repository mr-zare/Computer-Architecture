LIBRARY ieee;
USE ieee.std_logic_1164.ALL; 
ENTITY async_4bit_down_counter_tb IS
END async_4bit_down_counter_tb;
 
ARCHITECTURE behavior OF async_4bit_down_counter_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT async_4bit_down_counter
    PORT(
         clk1 : IN  std_logic;
         reset1 : INOUT  std_logic;
         output : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk1 : std_logic := '0';

	--BiDirs
   signal reset1 : std_logic;

 	--Outputs
   signal output : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk1_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: async_4bit_down_counter PORT MAP (
          clk1 => clk1,
          reset1 => reset1,
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
