----------------------------------------------------------------------------------
-- Company: UFSJ
-- Engineer: Marina e Daniel
-- 
-- Create Date:    15:46:46 08/13/2024 
-- Design Name: 
-- Module Name:    DEC - Behavioral 
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

entity DEC is
	port( e : in std_logic_vector(4 downto 0);
		saida : out std_logic_vector(31 downto 0)
	);
end DEC;

architecture Behavioral of DEC is
	
begin
	processo_decod : process(e) begin
		generate_comp : for i in 0 to 31 loop
			if(to_integer(unsigned(e))) = i then 
				saida(i) <= '1';
			else 
				saida(i) <= '0';
				
			end if;
		end loop;
	end process processo_decod;
	
end Behavioral;

