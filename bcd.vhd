LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY bcd IS
	PORT (A:IN STD_LOGIC_VECTOR(3 downto 0);
		Z:OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
	ATTRIBUTE PIN_NUMBERS OF bcd: ENTITY IS
	"A(0):1 A(1):2 A(2):3 A(3):4 "
	& "Z(0):14 Z(1):15 Z(2):16 Z(3):17 Z(4):18 Z(5):19 Z(6):20";
END bcd;

ARCHITECTURE booleana OF bcd IS
BEGIN
PROCESS(A)BEGIN
	case A is
	when "0000"=>Z<="1111110";
	when "0001"=>Z<="0110000";
	when "0010"=>Z<="1101101";
	when "0011"=>Z<="1111001";
	when "0100"=>Z<="0110011";
	when "0101"=>Z<="1011011";
	when "0110"=>Z<="1011111";
	when "0111"=>Z<="1110001";
	when "1000"=>Z<="1111111";
	when "1001"=>Z<="1111011";
	when "1010"=>Z<="1110111";
	when "1011"=>Z<="0011111";
	when "1100"=>Z<="1001110";
	when "1101"=>Z<="0111101";
	when "1110"=>Z<="1001111";
	when "1111"=>Z<="1000111";
	when others=>Z<="0000000";
	end case;
end process;
END booleana;
