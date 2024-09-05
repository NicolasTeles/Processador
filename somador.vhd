----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Nicolas Teles e Miguel de Assis
-- 
-- Create Date:    16:30:29 07/09/2024 
-- Design Name: 
-- Module Name:    somador - Behavioral 
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

entity somador is
	port( A : in std_logic;
			B : in std_logic;
			cIn : in std_logic;
			Soma : out std_logic;
			cOut : out std_logic
	);
end somador;

architecture Behavioral of somador is

begin
	Soma <= (A xor B) xor cIn;
	cOut <= (A and B) or (B and cIn) or (A and cIn);

end Behavioral;

