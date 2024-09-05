----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:51:54 08/27/2024 
-- Design Name: 
-- Module Name:    UC_ULA - Behavioral 
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

entity UC_ULA is
	port( aluOp : in std_logic_vector(1 downto 0);
			funct : in std_logic_vector(5 downto 0);
			AInverte : out std_logic; 
			BInverte : out std_logic;
			operacao : out std_logic_vector(1 downto 0);
			primeiroVem1 : out std_logic
	);
end UC_ULA;

architecture Behavioral of UC_ULA is

begin
	processo_UC_ULA : process(aluOp, funct) begin
			if(aluOp) = "10" then 
				if(funct) = "100000" then
					AInverte <= '0'; 
					BInverte <= '0';
					operacao <= "10";
					primeiroVem1 <= '0';
				elsif(funct) = "100100" then
					AInverte <= '0'; 
					BInverte <= '0';
					operacao <= "00";
				elsif(funct) = "100111" then
					AInverte <= '1'; 
					BInverte <= '1';
					operacao <= "00";
				elsif(funct) = "100101" then
					AInverte <= '0'; 
					BInverte <= '0';
					operacao <= "01";
				elsif(funct) = "101010" then
					AInverte <= '0'; 
					BInverte <= '1';
					operacao <= "11";
					primeiroVem1 <= '1';
				elsif(funct) = "100010" then
					AInverte <= '0'; 
					BInverte <= '1';
					operacao <= "10";
					primeiroVem1 <= '1';
					
				end if;
			elsif (aluOp) = "00" then 
				AInverte <= '0'; 
				BInverte <= '0';
				operacao <= "10";
				primeiroVem1 <= '0';
			elsif (aluOp) = "01" then 
				AInverte <= '0'; 
				BInverte <= '1';
				primeiroVem1 <= '1';
				
			end if;
	end process processo_UC_ULA;

end Behavioral;

