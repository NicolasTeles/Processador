----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Nicolas Teles e Miguel Assis
-- 
-- Create Date:    16:38:29 07/23/2024 
-- Design Name: 
-- Module Name:    somador32bits - Behavioral 
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

entity somador32bits is
	port( A, B : in std_logic_vector(31 downto 0);
			Soma : out std_logic_vector(31 downto 0)
		
	);
end somador32bits;

architecture Behavioral of somador32bits is

	component somador is
		port( A : in std_logic;
				B : in std_logic;
				cIn : in std_logic;
				Soma : out std_logic;
				cOut : out std_logic
		);
	end component;
	signal vai1 : std_logic_vector(30 downto 0);
begin

	somador0 : somador port map(
		A => A(0),
		B => B(0),
		cIn => '0',
		Soma => Soma(0),
		cOut => vai1(0)
	);
	
	somadores : for i in 1 to 30 generate
		somadorG : somador port map(
			A => A(i),
			B => B(i),
			cIn => vai1(i-1),
			Soma => Soma(i),
			cOut => vai1(i)
		);
	end generate;
	
	somador31 : somador port map(
		A => A(31),
		B => B(31),
		cIn => vai1(30),
		Soma => Soma(31)
	);


end Behavioral;

