----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:12:36 08/06/2024 
-- Design Name: 
-- Module Name:    OR_32 - Behavioral 
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

entity OR_32 is
	port( E: in std_logic_vector(31 downto 0);
			SAIDA: out std_logic
	);

end OR_32;

architecture Behavioral of OR_32 is
	component OR_2 is
		port( E0, E1 : in std_logic;
				SAIDA : out std_logic
		);
	end component;

	signal s1 : std_logic_vector(0 to 15);
	signal s2 : std_logic_vector(0 to 7);
	signal s3 : std_logic_vector(0 to 3);
	signal s4 : std_logic_vector(0 to 1);

begin
	OUfir : for i in 0 to 15 generate 
		OU_f32 : OR_2 port map(
			e0 => e(2*i),
			e1 => e(2*i + 1),	
			SAIDA => s1(i)
		);
	end generate;
	
	OUsec : for i in 0 to 7 generate 
		OU_s32 : OR_2 port map(
			e0 => s1(2*i),
			e1 => s1(2*i + 1),	
			SAIDA => s2(i)
		);
	end generate;
	
	OUthi : for i in 0 to 3 generate 
		OU_t32 : OR_2 port map(
			e0 => s2(2*i),
			e1 => s2(2*i + 1),	
			SAIDA => s3(i)
		);
	end generate;
	
	OUfou : for i in 0 to 1 generate 
		OU_fo32 : OR_2 port map(
			e0 => s3(2*i),
			e1 => s3(2*i + 1),	
			SAIDA => s4(i) 
		);
	end generate;
	
	OU_fif32 : OR_2 port map(
		e0 => s4(0),
		e1 => s4(1),	
		SAIDA => SAIDA
	); 
	

end Behavioral;

