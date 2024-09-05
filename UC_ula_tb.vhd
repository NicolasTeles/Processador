--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:47:11 09/03/2024
-- Design Name:   
-- Module Name:   /home/nicolasrmendoncat/nicolasrmendoncat/ISLD/Processador/UC_ula_tb.vhd
-- Project Name:  Processador
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: UC_ULA
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
 
ENTITY UC_ula_tb IS
END UC_ula_tb;
 
ARCHITECTURE behavior OF UC_ula_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UC_ULA
    PORT(
         aluOp : IN  std_logic_vector(1 downto 0);
         funct : IN  std_logic_vector(5 downto 0);
         AInverte : OUT  std_logic;
         BInverte : OUT  std_logic;
         operacao : OUT  std_logic_vector(0 to 1);
         primeiroVem1 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal aluOp : std_logic_vector(1 downto 0) := (others => '0');
   signal funct : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal AInverte : std_logic;
   signal BInverte : std_logic;
   signal operacao : std_logic_vector(0 to 1);
   signal primeiroVem1 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UC_ULA PORT MAP (
          aluOp => aluOp,
          funct => funct,
          AInverte => AInverte,
          BInverte => BInverte,
          operacao => operacao,
          primeiroVem1 => primeiroVem1
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		aluOp <= "10";
		funct <= "100000";
		
		wait for 100 ns;
		
		aluOp <= "10";
		funct <= "100010";


      -- insert stimulus here 

      wait;
   end process;

END;
