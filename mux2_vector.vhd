----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Nicolas Teles e Miguel Viveiros
-- 
-- Create Date:    16:09:50 07/16/2024 
-- Design Name: 
-- Module Name:    mux2_vector - Behavioral 
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

entity mux2_vector is
	port(	e : in std_logic_vector(0 to 1);
			sel : in std_logic;
			saida : out std_logic
	);
end mux2_vector;

architecture Behavioral of mux2_vector is

begin
	saida <= (not sel and e(0)) or (sel and e(1));

end Behavioral;

