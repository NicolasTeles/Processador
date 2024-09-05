----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:47:47 08/07/2024 
-- Design Name: 
-- Module Name:    ULA32bits - Behavioral 
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

entity ULA32bits is
	port( a, b: in std_logic_vector(31 downto 0);
			Op : in std_logic_vector(1 downto 0);
			aNegate, bNegate : in std_logic;
			Result : out std_logic_vector(31 downto 0);
			resultado_final : out std_logic
	);
end ULA32bits;

architecture Behavioral of ULA32bits is

	component ULA1bit is
		port( a, b, Less: in std_logic;
				Op : in std_logic_vector(1 downto 0);
				aInvert, bInvert, carryIn: in std_logic;
				Resultado, Set, carryOut : out std_logic
		);
	end component;
	
	component OR_32 is
		port( E: in std_logic_vector(31 downto 0);
				SAIDA: out std_logic
		);
	end component;
	
	signal carry : std_logic_vector(30 downto 0);
	signal Set31 : std_logic;
	signal conexao : std_logic_vector(31 downto 0);
	signal final : std_logic;
	
begin

	ULA0 : ULA1bit port map(
		a => a(0),
		b => b(0),
		Less => Set31,
		aInvert => aNegate,
		bInvert => bNegate,
		Resultado => conexao(0),
		carryIn => bNegate,
		CarryOut => carry(0),
		Op => Op
	);
	
	ULAs : for i in 1 to 30 generate
		ULAG : ULA1bit port map(
			a => a(i),
			b => b(i),
			Less => '0',
			aInvert => aNegate,
			bInvert => bNegate,
			Resultado => conexao(i),
			carryIn => carry(i-1),
			CarryOut => carry(i),
			Op => Op
		);
	end generate;
	
	ULA31 : ULA1bit port map(
		a => a(31),
		b => b(31),
		Less => '0',
		aInvert => aNegate,
		bInvert => bNegate,
		Resultado => conexao(31),
		carryIn => carry(30),
		Set => Set31,
		Op => Op
	);
	
	result <= conexao;
	
	Conexo : OR_32 port map(
		e => conexao,
		saida => final
	);
	
	resultado_final <= not final;

end Behavioral;

