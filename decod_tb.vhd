--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:31:06 09/03/2024
-- Design Name:   
-- Module Name:   /home/nicolasrmendoncat/nicolasrmendoncat/ISLD/Processador/decod_tb.vhd
-- Project Name:  Processador
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DEC
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
--USE ieee.numeric_std.ALL;
 
ENTITY decod_tb IS
END decod_tb;
 
ARCHITECTURE behavior OF decod_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DEC
    PORT(
         e : IN  std_logic_vector(4 downto 0);
         saida : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal e : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal saida : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DEC PORT MAP (
          e => e,
          saida => saida
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		e <= "00001";
		
		wait for 100 ns;	
		e <= "00010";
		
		wait for 100 ns;	
		e <= "00011";
		
		wait for 100 ns;	
		e <= "11000";
      -- insert stimulus here 

      wait;
   end process;

END;
