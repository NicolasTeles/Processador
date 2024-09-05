----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:01:02 08/06/2024 
-- Design Name: 
-- Module Name:    ULA1bit - Behavioral 
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

entity ULA1bit is
	port( a, b, Less: in std_logic;
			Op : in std_logic_vector(1 downto 0);
			aInvert, bInvert, carryIn: in std_logic;
			Resultado, Set, carryOut : out std_logic
	);
end ULA1bit;

architecture Behavioral of ULA1bit is
	component mux2_vector is
		port(	e : in std_logic_vector(0 to 1);
				sel : in std_logic;
				saida : out std_logic
		);
	end component;
	
	component somador is
		port( A : in std_logic;
				B : in std_logic;
				cIn : in std_logic;
				Soma : out std_logic;
				cOut : out std_logic
		);
	end component;
	
	component mux4_vector is
		port(	e : in std_logic_vector(0 to 3);
				sel : in std_logic_vector(1 downto 0);
				saida : out std_logic
		);
	end component;
	
	signal valor_a : std_logic;
	signal valor_b : std_logic;
	
	signal AeB : std_logic;
	signal AouB : std_logic;
	signal soma : std_logic;

begin

	MuxAinvert: mux2_vector port map(
		e(0) => a,
		e(1) => not a,
		sel => aInvert,
		saida => valor_a
	);
	
	MuxBinvert: mux2_vector port map(
		e(0) => b,
		e(1) => not b,
		sel => bInvert,
		saida => valor_b
	);
	
	AeB <= valor_a and valor_b;
	AouB <= valor_a or valor_b;
	
	somadorULA : somador port map(
		A => valor_a,
		B => valor_b,
		cIn => carryIn,
		Soma => soma,
		cOut => carryOut
	);
	
	muxFinal : mux4_vector port map(
		e(0) => AeB,
		e(1) => AouB,
		e(2) => soma,
		e(3) => Less,
		sel => Op,
		saida => Resultado
	);
	
	Set <= soma;

end Behavioral;

