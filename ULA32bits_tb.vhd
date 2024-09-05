--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:44:30 08/07/2024
-- Design Name:   
-- Module Name:   /home/nicolasrmendoncat/nicolasrmendoncat/ISLD/ULA/ULA32bits_tb.vhd
-- Project Name:  ULA
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ULA32bits
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
 
ENTITY ULA32bits_tb IS
END ULA32bits_tb;
 
ARCHITECTURE behavior OF ULA32bits_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ULA32bits
    PORT(
         a : IN  std_logic_vector(31 downto 0);
         b : IN  std_logic_vector(31 downto 0);
         Op : IN  std_logic_vector(1 downto 0);
         aNegate : IN  std_logic;
         bNegate : IN  std_logic;
         Result : OUT  std_logic_vector(31 downto 0)
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
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ULA32bits PORT MAP (
          a => a,
          b => b,
          Op => Op,
          aNegate => aNegate,
          bNegate => bNegate,
          Result => Result
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		Op <= "10";
		A <= std_logic_vector(to_signed(-3, 32));
		B <= std_logic_vector(to_signed(7, 32));
		wait for 100 ns;
		
		A <= std_logic_vector(to_signed(26, 32));
		B <= std_logic_vector(to_signed(-10, 32));
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
