----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:29:58 08/13/2024 
-- Design Name: 
-- Module Name:    Registradores - Behavioral 
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
use work.tipo;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Registradores is
	port( DadoEscrita : in std_logic_vector(31 downto 0);
			RegWrite, clk : in std_logic;
			DecodSaidas : in std_logic_vector(31 downto 0);
			DadosSaida : out tipo.vetor_de_palavras(0 to 31)
	);
end Registradores;

architecture Behavioral of Registradores is

	component Registrador is
		port( Enable, clk, clear: in std_logic;
				DadoE : in std_logic_vector(31 downto 0);
				DadoL : out std_logic_vector(31 downto 0)
		);
	end component;
	
	signal enable_write : std_logic_vector(31 downto 0);
	
begin
	
	enable_write(0) <= RegWrite and DecodSaidas(0);
	
	Reg0 : Registrador port map(
		Enable => enable_write(0),
		DadoE => DadoEscrita,
		DadoL => DadosSaida(0),
		clear => '1',
		clk => clk
	);

	Registradores : for i in 1 to 31 generate
		enable_write(i) <= RegWrite and DecodSaidas(i);
		
		Reg : Registrador port map(
			Enable =>enable_write(i),
			DadoE => DadoEscrita,
			DadoL => DadosSaida(i),
			clear => '0',
			clk => clk
		);
	end generate;
	

end Behavioral;

