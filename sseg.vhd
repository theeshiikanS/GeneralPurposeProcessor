LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
ENTITY sseg IS
	PORT ( bcd : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
		NEGATIVE : IN STD_LOGIC ;
		leds,signled : OUT STD_LOGIC_VECTOR(1 TO 7) ) ;
END sseg ;

ARCHITECTURE Behavior OF sseg IS
BEGIN
	PROCESS(bcd, NEGATIVE)
		BEGIN
		
			IF NEGATIVE = '0' THEN
				signled <=   "0000000" ;
			ELSIF NEGATIVE = '1' THEN
				signled <=   "0000001" ;
			END IF;
		
			CASE bcd IS 		  		  --abcdefg
				WHEN "0000" => leds <=   "1111110" ; --0
				WHEN "0001" => leds <=   "0110000" ; --1
				WHEN "0010" => leds <=   "1101101" ; --2
				WHEN "0011" => leds <=   "1111001" ; --3
				WHEN "0100" => leds <=   "0110011" ; --4
				WHEN "0101" => leds <=   "1011011" ; --5
				WHEN "0110" => leds <=   "1011111" ; --6
				WHEN "0111" => leds <=   "1110000" ; --7
				WHEN "1000" => leds <=   "1111111" ; --8
				WHEN "1001" => leds <=   "1110011" ; --9
				
				WHEN "1010" => leds <=   "1110111" ;
				WHEN "1011" => leds <=   "0011111" ;
				WHEN "1100" => leds <=   "1001110" ;
				WHEN "1101" => leds <=   "0111101" ;
				WHEN "1110" => leds <=   "1001111" ;
				WHEN "1111" => leds <=   "1000111" ;
				
				WHEN OTHERS => leds <=   "0000001" ;
		END CASE ;
	END PROCESS ;
END Behavior ;