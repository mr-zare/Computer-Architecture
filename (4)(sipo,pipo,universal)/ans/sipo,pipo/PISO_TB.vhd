LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY PISO_TB IS
END PISO_TB;
 
ARCHITECTURE behavior OF PISO_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT piso
    PORT(
         load : IN  std_logic;
         reset : IN  std_logic;
         din : IN  std_logic_vector(3 downto 0);
         clk : IN  std_logic;
         dout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal load : std_logic := '0';
   signal reset : std_logic := '0';
   signal din : std_logic_vector(3 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal dout : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: piso PORT MAP (
          load => load,
          reset => reset,
          din => din,
          clk => clk,
          dout => dout
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		din<= "0101";
		load<= '1';
      
		
      wait for 10 ns;	
		load <= '0';
		--din<= '0';
		--wait for 10 ns;
		--din<= '1';

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
