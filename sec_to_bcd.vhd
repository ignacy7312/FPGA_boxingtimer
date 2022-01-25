library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity bcdconverter is
    port (
        clk     :  in std_logic;
        binary  :  in std_logic_vector(7 downto 0);
        bcd0    :  out std_logic_vector(3 downto 0);
        bcd1    :  out std_logic_vector(3 downto 0)
    );
end bcdconverter;

architecture rtl of bcdconverter  is

    signal bin          : std_logic_vector(7 downto 0);
    signal ones         : std_logic_vector(3 downto 0);
    signal tens         : std_logic_vector(3 downto 0);
    signal state        : std_logic_vector(1 downto 0); -- three sates - 1,2,3

begin

    converter : process(clk)
    begin 
        if rising_edge(clk) then
            state <= state + '1';

            case state is 
                when "00" => --1st state
                    bin <= binary;
                    ones <= "0000";
                    tens <= "0000";
                
                when "01" => --2nd state
                    if bin >= "00001010" then -- if num > 10
                        bin     <= bin - "00001010"; -- num = num - 10 
                        tens    <= tens + '1';      -- tens counter incrementation
                        state   <= "01";            --while num > 10 state stays the same
                    else                            --if num - 10 < 10 
                        ones <= bin(3 downto 0);   
                    end if;
                
                when "10" => --3rd state
                    bcd0 <= ones;       
                    bcd1 <= tens;
                
                when others =>
                    state <= "00";
            end case;
        end if;
    end process;


end architecture;