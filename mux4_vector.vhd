----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Nicolas Teles e Miguel Viveiros
-- 
-- Create Date:    16:12:42 07/16/2024 
-- Design Name: 
-- Module Name:    mux4_vector - Behavioral 
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

entity mux4_vector is
	port(	e : in std_logic_vector(0 to 3);
			sel : in std_logic_vector(1 downto 0);
			saida : out std_logic
	);
end mux4_vector;

architecture Behavioral of mux4_vector is

	component mux2_vector is
		port(	e : in std_logic_vector(0 to 1);
				sel : in std_logic;
				saida : out std_logic
		);
	end component;
	signal sinais : std_logic_vector(0 to 1);

begin
	muxA : mux2_vector port map(
		e => e(0 to 1),
		sel => sel(0),
		saida => sinais(0)
	);
	
	muxB : mux2_vector port map(
		e => e(2 to 3),
		sel => sel(0),
		saida => sinais(1)
	);
	
	muxC : mux2_vector port map(
		e => sinais,
		sel => sel(1),
		saida => saida
	);
	
end Behavioral;

