----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:50:17 08/13/2024 
-- Design Name: 
-- Module Name:    Registrador - Behavioral 
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

entity Registrador is
	port( Enable, clk, clear: in std_logic;
			DadoE : in std_logic_vector(0 to 31);
			DadoL : out std_logic_vector(0 to 31)
	);
end Registrador;

architecture Behavioral of Registrador is

	component flipflopD_descida is
		port(	D, enable, clk : in std_logic;
				preset, clear : in std_logic;
				Q, Qb : out std_logic
		);
	end component;

begin

	flipflops: for i in 0 to 31 generate
		ffD : flipflopD_descida port map(
			D => DadoE(i),
			enable => Enable,
			clk => clk,
			preset => '0',
			clear => clear,
			Q => DadoL(i)
		);
	
	end generate;

end Behavioral;

