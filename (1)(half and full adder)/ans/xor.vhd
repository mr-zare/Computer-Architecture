-------------------------------------------------------------------------------
--
-- Title       : \xor\
-- Design      : HA
-- Author      : Asus
-- Company     : mrs
--
-------------------------------------------------------------------------------
--
-- File        : f:\active_hdl_hw\ha\HA\src\xor.vhd
-- Generated   : Wed Oct 19 11:36:33 2022
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
--{entity {\xor\} architecture {\xor\}}



 library IEEE;
 use IEEE.std_logic_1164.all;
 entity en_xor is
   port (
     a1 , b1 :in std_logic ;
     o1 : out std_logic
   ) ;
 end en_xor;
 architecture arch_xor of en_xor is
 
 begin
     o1 <= a1 xor b1;
 end arch_xor; -- arch_xor
