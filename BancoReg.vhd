----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:31:31 08/20/2024 
-- Design Name: 
-- Module Name:    BancoReg - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BancoReg is
	port( e : in std_logic_vector(4 downto 0);
			DadoEscrita : in std_logic_vector(31 downto 0);
			RegWrite, clk : in std_logic;
			saida1 : out std_logic_vector(31 downto 0);
			saida2 : out std_logic_vector(31 downto 0);
			selecao1 : in std_logic_vector(4 downto 0);
			selecao2 : in std_logic_vector(4 downto 0)
	);
end BancoReg;

architecture Behavioral of BancoReg is
	component DEC is
		port( e : in std_logic_vector(4 downto 0);
				saida : out std_logic_vector(31 downto 0)
		);
	end component;

	component Registradores is
		port( DadoEscrita : in std_logic_vector(31 downto 0);
				RegWrite, clk : in std_logic;
				DecodSaidas : in std_logic_vector(31 downto 0);
				DadosSaida : out tipo.vetor_de_palavras(0 to 31)
		);
	end component;
	
	component mux_32_x_32 is
		port( entrada : in tipo.vetor_de_palavras(0 to 31);
				selecao : in std_logic_vector(4 downto 0);
				saida : out std_logic_vector(31 downto 0) 
		);
	end component;
	
	signal dec_reg : std_logic_vector(31 downto 0);
	signal reg_mux : tipo.vetor_de_palavras(0 to 31);
begin
	Decod : DEC port map(
		e => e,
		saida => dec_reg
	);
	
	Reg : Registradores port map(
		DadoEscrita => DadoEscrita,
		DecodSaidas => dec_reg,
		RegWrite => RegWrite,
		clk => clk,
		DadosSaida => reg_mux
	);
	
	Mux1 : mux_32_x_32 port map(
		entrada => reg_mux,
		selecao => selecao1,
		saida => saida1
	);
	
	Mux2 : mux_32_x_32 port map(
		entrada => reg_mux,
		selecao => selecao2,
		saida => saida2
	);
	
end Behavioral;

