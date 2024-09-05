LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
  
ENTITY async_2bit_counter_test_bench IS
END async_2bit_counter_test_bench;
 
ARCHITECTURE behavior OF async_2bit_counter_test_bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT async_2bit_counter
    PORT(
			
         reset1 : IN  std_logic;
         output : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal reset1 : std_logic := '0';

 	--Outputs
   signal output : std_logic_vector(1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: async_2bit_counter PORT MAP (
          reset1 => reset1,
          output => output
        );

   -- Clock process definitions
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
