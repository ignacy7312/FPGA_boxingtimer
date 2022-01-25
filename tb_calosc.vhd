--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:56:52 01/25/2022
-- Design Name:   
-- Module Name:   C:/1FPGA/boxing_timer_numberone/test_with_seconds_displays.vhd
-- Project Name:  boxing_timer_numberone
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: segmentdriver
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
 
ENTITY test_with_seconds_displays IS
END test_with_seconds_displays;
 
ARCHITECTURE behavior OF test_with_seconds_displays IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT segmentdriver
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         minutes : OUT  std_logic_vector(3 downto 0);
         seconds_ones : OUT  std_logic_vector(3 downto 0);
         seconds_tens : OUT  std_logic_vector(3 downto 0);
         seg_A : OUT  std_logic;
         seg_B : OUT  std_logic;
         seg_C : OUT  std_logic;
         seg_D : OUT  std_logic;
         seg_E : OUT  std_logic;
         seg_F : OUT  std_logic;
         seg_G : OUT  std_logic;
         seg_soA : OUT  std_logic;
         seg_soB : OUT  std_logic;
         seg_soC : OUT  std_logic;
         seg_soD : OUT  std_logic;
         seg_soE : OUT  std_logic;
         seg_soF : OUT  std_logic;
         seg_soG : OUT  std_logic;
         seg_stA : OUT  std_logic;
         seg_stB : OUT  std_logic;
         seg_stC : OUT  std_logic;
         seg_stD : OUT  std_logic;
         seg_stE : OUT  std_logic;
         seg_stF : OUT  std_logic;
         seg_stG : OUT  std_logic;
         select_display_MINUTES : OUT  std_logic;
         select_display_SECONDS_ONES : OUT  std_logic;
         select_display_SECONDS_TENS : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal minutes : std_logic_vector(3 downto 0);
   signal seconds_ones : std_logic_vector(3 downto 0);
   signal seconds_tens : std_logic_vector(3 downto 0);
   signal seg_A : std_logic;
   signal seg_B : std_logic;
   signal seg_C : std_logic;
   signal seg_D : std_logic;
   signal seg_E : std_logic;
   signal seg_F : std_logic;
   signal seg_G : std_logic;
   signal seg_soA : std_logic;
   signal seg_soB : std_logic;
   signal seg_soC : std_logic;
   signal seg_soD : std_logic;
   signal seg_soE : std_logic;
   signal seg_soF : std_logic;
   signal seg_soG : std_logic;
   signal seg_stA : std_logic;
   signal seg_stB : std_logic;
   signal seg_stC : std_logic;
   signal seg_stD : std_logic;
   signal seg_stE : std_logic;
   signal seg_stF : std_logic;
   signal seg_stG : std_logic;
   signal select_display_MINUTES : std_logic;
   signal select_display_SECONDS_ONES : std_logic;
   signal select_display_SECONDS_TENS : std_logic;

   -- Clock period definitions
   constant clk_period : time := 1 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: segmentdriver PORT MAP (
          clk => clk,
          rst => rst,
          minutes => minutes,
          seconds_ones => seconds_ones,
          seconds_tens => seconds_tens,
          seg_A => seg_A,
          seg_B => seg_B,
          seg_C => seg_C,
          seg_D => seg_D,
          seg_E => seg_E,
          seg_F => seg_F,
          seg_G => seg_G,
          seg_soA => seg_soA,
          seg_soB => seg_soB,
          seg_soC => seg_soC,
          seg_soD => seg_soD,
          seg_soE => seg_soE,
          seg_soF => seg_soF,
          seg_soG => seg_soG,
          seg_stA => seg_stA,
          seg_stB => seg_stB,
          seg_stC => seg_stC,
          seg_stD => seg_stD,
          seg_stE => seg_stE,
          seg_stF => seg_stF,
          seg_stG => seg_stG,
          select_display_MINUTES => select_display_MINUTES,
          select_display_SECONDS_ONES => select_display_SECONDS_ONES,
          select_display_SECONDS_TENS => select_display_SECONDS_TENS
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
      wait for 1 ns;	

      wait for clk_period*10;

      -- insert stimulus here 
rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		rst <= '0';
      wait for clk_period*1;
		
      wait;
   end process;

END;
