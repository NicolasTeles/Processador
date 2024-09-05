----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:04:50 08/21/2024 
-- Design Name: 
-- Module Name:    somadorPc - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity somadorPc is
	port( PC : in std_logic_vector(31 downto 0);
			saida : out std_logic_vector(31 downto 0)
	);
end somadorPc;

architecture Behavioral of somadorPc is
	constant B : std_logic_vector(31 downto 0) := x"00000004";
	
	component somador32bits is
		port( A, B : in std_logic_vector(31 downto 0);
				Soma : out std_logic_vector(31 downto 0)
			
		);
	end component;

begin
	somadorPC : somador32bits port map(
		A => PC,
		B => B,	
		Soma => saida
	);

end Behavioral;

