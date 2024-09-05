----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:21:54 08/22/2024 
-- Design Name: 
-- Module Name:    mux2_32 - Behavioral 
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

entity mux2_32down is
	port (e0  : in std_logic_vector(31 downto 0);
	      e1  : in std_logic_vector(31 downto 0);
			sel : in std_logic;
			saida : out std_logic_vector(31 downto 0)
	);
	
end mux2_32down;

architecture Behavioral of mux2_32down is

	component mux2 is
		port (e0  : in std_logic;
	      e1  : in std_logic;
			sel : in std_logic;
			saida : out std_logic 
		);
	end component;

begin
	mux2_32down : for i in 0 to 31 generate
		mux : mux2 port map(
			e0  => e0(i),
	      e1  => e1(i),
			sel => sel,
			saida => saida(i)
		);
	
	end generate;

end Behavioral;