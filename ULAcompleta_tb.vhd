--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:43:56 09/03/2024
-- Design Name:   
-- Module Name:   /home/nicolasrmendoncat/nicolasrmendoncat/ISLD/Processador/ULAcompleta_tb.vhd
-- Project Name:  Processador
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Ula_completa
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
 
ENTITY ULAcompleta_tb IS
END ULAcompleta_tb;
 
ARCHITECTURE behavior OF ULAcompleta_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Ula_completa
    PORT(
         a : IN  std_logic_vector(31 downto 0);
         b : IN  std_logic_vector(31 downto 0);
         Op : IN  std_logic_vector(1 downto 0);
         aNegate : IN  std_logic;
         bNegate : IN  std_logic;
         Result : OUT  std_logic_vector(31 downto 0);
         zero : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(31 downto 0) := (others => '0');
   signal b : std_logic_vector(31 downto 0) := (others => '0');
   signal Op : std_logic_vector(1 downto 0) := (others => '0');
   signal aNegate : std_logic := '0';
   signal bNegate : std_logic := '0';

 	--Outputs
   signal Result : std_logic_vector(31 downto 0);
   signal zero : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Ula_completa PORT MAP (
          a => a,
          b => b,
          Op => Op,
          aNegate => aNegate,
          bNegate => bNegate,
          Result => Result,
          zero => zero
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		aNegate <= '0';
		Op <= "10";
		A <= std_logic_vector(to_signed(-4, 32));
		B <= std_logic_vector(to_signed(0, 32));
		wait for 100 ns;
		
		A <= std_logic_vector(to_signed(-8, 32));
		B <= std_logic_vector(to_signed(0, 32));
		wait for 100 ns;
		
		bNegate <= '1';
		A <= std_logic_vector(to_signed(125, 32));
		B <= std_logic_vector(to_signed(3000, 32));
		wait for 100 ns;
		
		A <= std_logic_vector(to_signed(-34677, 32));
		B <= std_logic_vector(to_signed(-6841, 32));
		wait for 100 ns;
		

      -- insert stimulus here 

      wait;
   end process;

END;
