----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:22:21 08/27/2024 
-- Design Name: 
-- Module Name:    UC - Behavioral 
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

entity UC is
	port( opCode : in std_logic_vector(5 downto 0);
			aluOp : out std_logic_vector(1 downto 0);
			regWrite : out std_logic;
			regDst : out std_logic;
			aluScr : out std_logic;
			branch : out std_logic;
			memWrite : out std_logic;
			memToReg : out std_logic;
			jump : out std_logic;
			memRead : out std_logic
	);
end UC;

architecture Behavioral of UC is
	

begin
	processo_UC : process(opCode) begin
			if(opCode) = "000000" then 
				aluOp <= "10";
				regWrite <= '1';
				regDst <= '1';
				aluScr <= '0';
				branch <= '0';
				memWrite <= '0';
				memToReg <= '0';
				jump <= '0';
				memRead <= '0';
			elsif (opCode) = "001000" then 
				aluOp <= "00";
				regWrite <= '1';
				regDst <= '0';
				aluScr <= '1';
				branch <= '0';
				memWrite <= '0';
				memToReg <= '0';
				jump <= '0';
				memRead <= '0';
			elsif (opCode) = "100011" then 
				aluOp <= "00";
				regWrite <= '1';
				regDst <= '0';
				aluScr <= '1';
				branch <= '0';
				memWrite <= '0';
				memToReg <= '1';
				jump <= '0';
				memRead <= '1';
			elsif (opCode) = "101011" then 
				aluOp <= "00";
				regWrite <= '0';
				aluScr <= '1';
				branch <= '0';
				memWrite <= '1';
				jump <= '0';
				memRead <= '0';
			elsif (opCode) = "000100" then 
				aluOp <= "01";
				regWrite <= '0';
				aluScr <= '0';
				branch <= '1';
				memWrite <= '0';
				jump <= '0';
				memRead <= '0';
			elsif (opCode) = "000010" then 
				regWrite <= '0';
				branch <= '0';
				memWrite <= '0';
				jump <= '1';
				memRead <= '0';
				
			end if;
	end process processo_UC;

end Behavioral;

