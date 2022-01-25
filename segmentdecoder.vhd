library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity segmentdecoder is
    port (
        digit 		  :   in std_logic_vector(3 downto 0);
        segment_A   :   out std_logic := '1';
        segment_B   :   out std_logic := '1'; 
        segment_C   :   out std_logic := '1';
        segment_D   :   out std_logic := '1';
        segment_E   :   out std_logic := '1';
        segment_F   :   out std_logic := '1';
        segment_G   :   out std_logic := '1'
    );
end segmentdecoder;

architecture rtl of segmentdecoder is

begin

    process(digit)

        variable decode_data : std_logic_vector(6 downto 0);

        begin 
        case digit is 
            when "0000" => decode_data := "1111110"; -- 0 
            when "0001" => decode_data := "0110000"; -- 1
            when "0010" => decode_data := "1101101"; -- 2
            when "0011" => decode_data := "1111001"; -- 3
            when "0100" => decode_data := "0110011"; -- 4
            when "0101" => decode_data := "1011011"; -- 5
            when "0110" => decode_data := "1011111"; -- 6
            when "0111" => decode_data := "1110000"; -- 7
            when "1000" => decode_data := "1111111"; -- 8
            when "1001" => decode_data := "1111011"; -- 9
            --------------uncomment if needed ------------------------
            --when "1010" => decode_data := "1111110"; -- A
            --when "1011" => decode_data := "1111110"; -- B
            --when "1100" => decode_data := "1111110"; -- C
            --when "1101" => decode_data := "1111110"; -- D
            --when "1110" => decode_data := "1111110"; -- E            
            --when "1111" => decode_data := "1111110"; -- F
            ----------------------------------------------------------
            when others => decode_data := "0111110"; -- error H
        end case;

        segment_A <= not decode_data(6); -- not operator because it's active low
        segment_B <= not decode_data(5);
        segment_C <= not decode_data(4);
        segment_D <= not decode_data(3);
        segment_E <= not decode_data(2);
        segment_F <= not decode_data(1);
        segment_G <= not decode_data(0);
    
    end process;

end architecture;