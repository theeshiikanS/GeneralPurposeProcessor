LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
ENTITY decod IS
PORT ( w : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
En : IN STD_LOGIC ;
y : OUT STD_LOGIC_VECTOR(15 DOWNTO 0) ) ;

END decod ;
ARCHITECTURE Behavior OF decod IS
SIGNAL Enw : STD_LOGIC_VECTOR(4 DOWNTO 0) ;
	BEGIN
	Enw <= En & w ;
WITH w SELECT
y <= 	"1000000000000000" WHEN "0000",
		"0100000000000000" WHEN "0001",
		"0010000000000000" WHEN "0010",
		"0001000000000000" WHEN "0011",
		"0000100000000000" WHEN "0100",
		"0000010000000000" WHEN "0101",
		"0000001000000000" WHEN "0110",
		"0000000100000000" WHEN "0111",
		"0000000010000000" WHEN "1000",
		"0000000001000000" WHEN "1001",
		"0000000000100000" WHEN "1010",
		"0000000000010000" WHEN "1011",
		"0000000000001000" WHEN "1100",
		"0000000000000100" WHEN "1101",
		"0000000000000010" WHEN "1110",
		"0000000000000001" WHEN "1111",
		"0000000000000000" WHEN OTHERS;
		

END Behavior;