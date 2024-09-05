		library ieee;
use ieee.std_logic_1164.all;
entity full_addee is
	port(
cin , aa, bb : in std_logic ;
cout , ss : out std_logic
);

end full_addee;



architecture full_addee of full_addee is
component en_or is
   port (
     a1 , b1 :in std_logic ;
     o1 : out std_logic
   ) ;
end component ;

component ha is
  port (
    a , b :in std_logic;
    s , c: out std_logic   
  ) ; 
end component;


	signal ha1_s :std_logic;
	signal ha1_cout : std_logic;
	signal ha2_s :std_logic;
	signal ha2_cout : std_logic;
begin							
	ha_ins1 : ha port map (a => aa , b => bb , s=> ha1_s , c => ha1_cout); 
	ha_ins2 : ha port map (a => cin , b => ha1_s ,c => ha2_cout , s=> ss); 
	or_ins : en_or port map (a1 => ha2_cout , b1 => ha1_cout , o1 => cout);
	
	

	 -- enter your statements here --

end full_addee;