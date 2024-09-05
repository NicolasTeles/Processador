----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:30:31 08/21/2024 
-- Design Name: 
-- Module Name:    ProgramCounter - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ProgramCounter is
	port( Entrada : in std_logic_vector(31 downto 0);
			enable, clk, reset: in std_logic;
			saida: out std_logic_vector(31 downto 0)
	
	);
end ProgramCounter;

architecture Behavioral of ProgramCounter is

	component flipflopD_subida is
		port(	D, enable, clk : in std_logic;
				preset, clear : in std_logic;
				Q, Qb : out std_logic
		);
	end component;

begin

	flipFlopsInicio: for i in 0 to 11 generate
		ffd_generate1 : flipflopD_subida port map(
			D => Entrada(i),
			enable => enable,
			preset => '0',
			clear => reset,
			Q => saida(i),
			clk => clk
		);
	end generate;
		
	flipFlops1: for i in 12 to 13 generate
		flipflops1 : flipflopD_subida port map(
			D => Entrada(i),
			enable => enable,
			preset => reset,
			clear => '0',
			Q => saida(i),
			clk => clk
	);
	end generate;
	
	flipFlopsfinal: for i in 14 to 31 generate
		ffd_generate2 : flipflopD_subida port map(
			D => Entrada(i),
			enable => enable,
			preset => '0',
			clear => reset,
			Q => saida(i),
			clk => clk
		);
	end generate;

end Behavioral;

