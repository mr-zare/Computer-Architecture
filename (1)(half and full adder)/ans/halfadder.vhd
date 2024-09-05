-------------------------------------------------------------------------------
--
-- Title       : full_addee
-- Design      : HA
-- Author      : Asus
-- Company     : mrs
--
-------------------------------------------------------------------------------
--
-- File        : f:\active_hdl_hw\ha\HA\src\full_addee.vhd
-- Generated   : Wed Oct 19 11:45:14 2022
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {full_addee} architecture {full_addee}}




library IEEE;
use IEEE.std_logic_1164.all;
entity ha is
  port (
    a , b :in std_logic;
    s , c: out std_logic   
  ) ;
end ha;
architecture arch_ha of ha is
component en_and IS 
	port (
     a1 , b1 :in std_logic ;
     o1 : out std_logic
   ) ;	  
   end component;
   -- signal c std_logic; 
   component en_xor is
   port (
     a1 , b1 :in std_logic ;
     o1 : out std_logic
   ) ;					 
   end component;
   component en_or is
   port (
     a1 , b1 :in std_logic ;
     o1 : out std_logic
   ) ;
 end component;
begin 
	and_ins : en_and port map (a1 =>a , b1=> b , o1=> c);
	xor_ins : en_xor port map (a1 =>a , b1=> b , o1=> s);
	--a<= '1';
	--b<= '0';
    --c <= a and b;
    --o <= a xor b;

end arch_ha ; -- arch_ha