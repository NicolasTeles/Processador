----------------------------------------------------------------------------------
-- Company: UFSJ
-- Engineer: Milene
-- 
-- Create Date:    15:25:39 04/29/2022 
-- Module Name:    mux2 - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2 is
	port (e0  : in std_logic;
	      e1  : in std_logic;
			sel : in std_logic;
			saida : out std_logic );
end mux2;

architecture Behavioral of mux2 is

begin
	saida <= (e0 and not sel) or (e1 and sel);

end Behavioral;