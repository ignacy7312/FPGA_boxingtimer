------ 0 to 12 million binary counter (timer) with a second timer, that counts seconds(0 to 60) and a third timer, that counts minutes (0 to 3)
---!! IMPORTANT---changing the type from unsigend to std_logic_vector (around line 66)

--tested only on small values (as below), don't know if works on actual minutes


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity intervaltimer is
    port (
        clk : in std_logic;
        rst : in std_logic;
        sec_digit_tens : out std_logic_vector(3 downto 0);
        sec_digit_ones : out std_logic_vector(3 downto 0);
        min_digit_ones : out std_logic_vector(3 downto 0)
    );
end intervaltimer;

architecture rtl of intervaltimer is

    constant counter_max 							: integer 					:= 15; --- changed for tb - should be  12 000 000 (depending on the clock cycle)
    constant seconds_max 							: integer 					:= 12; --- changed for tb - should be 60 		
	constant minutes_max 							: integer 					:= 3;									
	
	
    signal minutes_counter 							: unsigned(7 downto 0)  := (others => '0');
	signal seconds_counter 							: unsigned(7 downto 0)  := (others => '0');
    signal counter 									: unsigned(24 downto 0) := (others => '0'); 

	
    signal signal_sec_counter : std_logic_vector(7 downto 0) := (others => '0'); 
	signal signal_min_counter : std_logic_vector(7 downto 0) := (others => '0'); 

begin
			
    one_sec_counter : process(clk, rst)
    
	begin 
        
		if rst = '1' or minutes_counter = minutes_max then 		-- if minutes = 3 then reset
            counter 		<=  (others => '0');
            seconds_counter <=  (others => '0');
			minutes_counter <=  (others => '0');
		  
        else 
				if rising_edge(clk) then 
					if counter = counter_max then		-- when one second passes
						
								if seconds_counter = seconds_max then   				
									seconds_counter <= (others => '0');					
									minutes_counter <= minutes_counter + 1;				
									counter 		<= (others => '0');					
								else -- if seconds < seconds_max
									seconds_counter <= seconds_counter + 1;	 --incrementation of seconds
									counter 		<= (others => '0');				
								end if;
					else   -- if counter < counter_max -- during one second
						counter <= counter + 1;
							
					end if;
            	end if;
        end if;
    
	end process;
	
    signal_sec_counter <= std_logic_vector(seconds_counter); 
	signal_min_counter <= std_logic_vector(minutes_counter);

    sec_to_bcd : entity work.bcdconverter(rtl) port map(   ---translating binary to bcd for seconds
        clk				    => clk,
		binary            => signal_sec_counter,
        bcd1 				=> sec_digit_tens,
        bcd0 				=> sec_digit_ones
    );

    min_to_bcd : entity work.bcdconverter(rtl) port map( ---translating binary to bcd for minutes, idk if really necessary, I'll leave it for possible later use 
        clk				  => clk,
		binary            => signal_min_counter,    
        bcd0 			  => min_digit_ones 
    );


end architecture;
