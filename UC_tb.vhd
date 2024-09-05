--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:52:45 09/03/2024
-- Design Name:   
-- Module Name:   /home/nicolasrmendoncat/nicolasrmendoncat/ISLD/Processador/UC_tb.vhd
-- Project Name:  Processador
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: UC
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
 
ENTITY UC_tb IS
END UC_tb;
 
ARCHITECTURE behavior OF UC_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UC
    PORT(
         opCode : IN  std_logic_vector(5 downto 0);
         aluOp : OUT  std_logic_vector(1 downto 0);
         regWrite : OUT  std_logic;
         regDst : OUT  std_logic;
         aluScr : OUT  std_logic;
         branch : OUT  std_logic;
         memWrite : OUT  std_logic;
         memToReg : OUT  std_logic;
         jump : OUT  std_logic;
         memRead : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal opCode : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal aluOp : std_logic_vector(1 downto 0);
   signal regWrite : std_logic;
   signal regDst : std_logic;
   signal aluScr : std_logic;
   signal branch : std_logic;
   signal memWrite : std_logic;
   signal memToReg : std_logic;
   signal jump : std_logic;
   signal memRead : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UC PORT MAP (
          opCode => opCode,
          aluOp => aluOp,
          regWrite => regWrite,
          regDst => regDst,
          aluScr => aluScr,
          branch => branch,
          memWrite => memWrite,
          memToReg => memToReg,
          jump => jump,
          memRead => memRead
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
		
		opCode <= "000000";
		
		wait for 100 ns;
		
		opCode <= "001000";
		
		wait for 100 ns;
		
		opCode <= "000100";

      -- insert stimulus here 

      wait;
   end process;

END;
