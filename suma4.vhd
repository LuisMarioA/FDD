LIBRARY ieee;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY suma4 IS
	PORT (A,B: IN std_logic_vector(3 downto 0);
		  S: out std_logic_vector(3 downto 0);
		  Cout: out std_logic);
END suma4;

architecture arqsuma of suma4 is
signal C:std_logic_vector(2 downto 0);
--ATTRIBUTE synthesis_off OF C:SIGNAL IS true;
begin
	S(0)<=A(0) xor B(0);
	C(0)<=A(0) and B(0);
	S(1)<=(A(1) xor B(1)) xor C(0);
	C(1)<=(A(1) and B(1)) or (C(0) and (A(1) xor B(1)));
	S(2)<=(A(2) xor B(2)) xor C(1);
	C(2)<=(A(2) and B(2)) or (C(1) and (A(2) xor B(2)));
	S(3)<=(A(3) xor B(3)) xor C(2);
	Cout<=(A(3) and B(3)) or (C(2) and (A(3) xor B(3)));
end arqsuma;
