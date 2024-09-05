--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:14:47 08/14/2024
-- Design Name:   
-- Module Name:   /home/nicolasrmendoncat/nicolasrmendoncat/ISLD/Registradores/Registradores_tb.vhd
-- Project Name:  Registradores
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Registradores
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
use work.tipo;
 
ENTITY Registradores_tb IS
END Registradores_tb;
 
ARCHITECTURE behavior OF Registradores_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Registradores
    PORT(
         DadoEscrita : IN  std_logic_vector(0 to 31);
         RegWrite : IN  std_logic;
         clk : IN  std_logic;
         DecodSaidas : IN  std_logic_vector(31 downto 0);
         DadosSaida : OUT  tipo.vetor_de_palavras(0 to 31)
        );
    END COMPONENT;
    

   --Inputs
   signal DadoEscrita : std_logic_vector(0 to 31) := (others => '0');
   signal RegWrite : std_logic := '0';
   signal clk : std_logic := '0';
   signal DecodSaidas : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal DadosSaida : tipo.vetor_de_palavras(0 to 31);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Registradores PORT MAP (
          DadoEscrita => DadoEscrita,
          RegWrite => RegWrite,
          clk => clk,
          DecodSaidas => DecodSaidas,
          DadosSaida => DadosSaida
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 
		
		DecodSaidas <= std_logic_vector(to_signed(0, 32));
		RegWrite <= '1';
		DadoEscrita <= std_logic_vector(to_signed(6523, 32));
		
		wait for 100 ns;
		
		RegWrite <= '0';
		DecodSaidas <= std_logic_vector(to_unsigned(32, 32));
		
		wait for 100 ns;
		
		RegWrite <= '1';
		
      wait for clk_period*10;
		
      wait;
   end process;

END;
