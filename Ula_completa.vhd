----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:40:35 08/12/2024 
-- Design Name: 
-- Module Name:    Ula_completa - Behavioral 
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

entity Ula_completa is
		port(a, b: in std_logic_vector(31 downto 0);
				Op : in std_logic_vector(1 downto 0);
				aNegate, bNegate : in std_logic;
				Result : out std_logic_vector(31 downto 0);
				zero : out std_logic
		);
end Ula_completa;

architecture Behavioral of Ula_completa is
	component ULA32bits is
		port( a, b: in std_logic_vector(31 downto 0);
				Op : in std_logic_vector(1 downto 0);
				aNegate, bNegate : in std_logic;
				Result : out std_logic_vector(31 downto 0)
		);
	end component;

	component OR_32 is
		port( E: in std_logic_vector(31 downto 0);
				SAIDA: out std_logic
		);

	end component;

	signal sinal : std_logic_vector(31 downto 0);
	signal sinalZero : std_logic;
	
begin

	Ula : ULA32bits port map(
	a =>	a,
	b => b,
	Op => Op,
	aNegate => aNegate,
	bNegate => bNegate,
	Result => sinal
	);
	
	Result <= sinal;
	
	OR32 : OR_32 port map(
	E => sinal,
	SAIDA => sinalZero 
	); 
	zero <= not sinalZero;

end Behavioral;

