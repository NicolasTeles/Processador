--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:35:51 09/03/2024
-- Design Name:   
-- Module Name:   /home/nicolasrmendoncat/nicolasrmendoncat/ISLD/Processador/BancoReg_tb.vhd
-- Project Name:  Processador
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: BancoReg
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
 
ENTITY BancoReg_tb IS
END BancoReg_tb;
 
ARCHITECTURE behavior OF BancoReg_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BancoReg
    PORT(
         e : IN  std_logic_vector(4 downto 0);
         DadoEscrita : IN  std_logic_vector(0 to 31);
         RegWrite : IN  std_logic;
         clk : IN  std_logic;
         saida1 : OUT  std_logic_vector(31 downto 0);
         saida2 : OUT  std_logic_vector(31 downto 0);
         selecao1 : IN  std_logic_vector(4 downto 0);
         selecao2 : IN  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal e : std_logic_vector(4 downto 0) := (others => '0');
   signal DadoEscrita : std_logic_vector(0 to 31) := (others => '0');
   signal RegWrite : std_logic := '0';
   signal clk : std_logic := '0';
   signal selecao1 : std_logic_vector(4 downto 0) := (others => '0');
   signal selecao2 : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal saida1 : std_logic_vector(31 downto 0);
   signal saida2 : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BancoReg PORT MAP (
          e => e,
          DadoEscrita => DadoEscrita,
          RegWrite => RegWrite,
          clk => clk,
          saida1 => saida1,
          saida2 => saida2,
          selecao1 => selecao1,
          selecao2 => selecao2
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
		DadoEscrita <= std_logic_vector(to_signed(1345, 32));
		e <= "00000";
		RegWrite <= '1';
		wait for clk_period*10;
		RegWrite <= '0';
		wait for clk_period*10;
		DadoEscrita <= std_logic_vector(to_signed(567, 32));
		e <= "00010";
		selecao1 <= "00000";
		selecao2 <= "00010";
		RegWrite <= '1';
      -- insert stimulus here 

      wait;
   end process;

END;
