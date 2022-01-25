library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity segmentdriver is
    port (
        clk : in std_logic;
        rst : in std_logic;
        
        minutes         : out std_logic_vector(3 downto 0) :="0000";
        seconds_ones    : out std_logic_vector(3 downto 0) :="0000";
        seconds_tens    : out std_logic_vector(3 downto 0) :="0000";

        seg_A   :   out std_logic;
        seg_B   :   out std_logic;
        seg_C   :   out std_logic;
        seg_D   :   out std_logic;
        seg_E   :   out std_logic;
        seg_F   :   out std_logic;
        seg_G   :   out std_logic;
		  
		  seg_soA   :   out std_logic;
        seg_soB   :   out std_logic;
        seg_soC   :   out std_logic;
        seg_soD   :   out std_logic;
        seg_soE   :   out std_logic;
        seg_soF   :   out std_logic;
        seg_soG   :   out std_logic;
		  
		  seg_stA   :   out std_logic;
        seg_stB   :   out std_logic;
        seg_stC   :   out std_logic;
        seg_stD   :   out std_logic;
        seg_stE   :   out std_logic;
        seg_stF   :   out std_logic;
        seg_stG   :   out std_logic;

        select_display_MINUTES         : out std_logic;
        select_display_SECONDS_ONES    : out std_logic;
        select_display_SECONDS_TENS    : out std_logic
    );
end segmentdriver;

architecture rtl of segmentdriver is
	
	signal temp_minutes : std_logic_vector(3 downto 0);
	signal temp_sones : std_logic_vector(3 downto 0);
	signal temp_stens : std_logic_vector(3 downto 0);
---- ZROBIC KOMPONENT

	component segmentdecoder
	port(		digit : in std_logic_vector(3 downto 0);
            segment_A : out std_logic;
            segment_B  : out std_logic;
            segment_C   : out std_logic;
            segment_D  : out std_logic;
            segment_E   : out std_logic;
				segment_F : out std_logic;
				segment_G  : out std_logic	
		);
	end component;
	
begin
	

	wojtyla : entity work.intervaltimer(rtl) port map(
        rst             	=> rst,
        clk             	=> clk,
        sec_digit_tens   	=> temp_stens,
        sec_digit_ones   	=> temp_sones,
		  min_digit_ones		=>  temp_minutes
    );

        -- component instatiation
		
        uutmins : segmentdecoder port map(
				digit => temp_minutes,
            segment_A   =>  seg_A,
            segment_B   =>  seg_B,
            segment_C   =>  seg_C,
            segment_D   =>  seg_D,
            segment_E   =>  seg_E,
				segment_F   =>  seg_F,
				segment_G   =>  seg_G
        );

        uutsones : segmentdecoder port map(
            digit => temp_sones,
            segment_A   =>  seg_soA,
            segment_B   =>  seg_soB,
            segment_C   =>  seg_soC,
            segment_D   =>  seg_soD,
            segment_E   =>  seg_soE,
				segment_F   =>  seg_soF,
				segment_G   =>  seg_soG
        );

        uutstens : segmentdecoder port map(
          digit => temp_stens,
          segment_A   =>  seg_stA,
          segment_B   =>  seg_stB,
          segment_C   =>  seg_stC,
          segment_D   =>  seg_stD,
          segment_E   =>  seg_stE,
			 segment_F   =>  seg_stF,
		    segment_G   =>  seg_stG
        );
        

    select_display_MINUTES <= '0';
    select_display_SECONDS_ONES <= '0';
    select_display_SECONDS_TENS  <= '0';
	
	minutes <= temp_minutes;
	seconds_ones <= temp_sones;
   seconds_tens <= temp_stens;
	
	
		
end architecture;