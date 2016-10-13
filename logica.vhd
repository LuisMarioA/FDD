LIBRARY ieee;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY logica IS
	PORT (A,B,C,D,E:IN STD_LOGIC;
		  F1,F2,F3,F4,F5,F6:OUT STD_LOGIC);
END logica;
ARCHITECTURE booleana OF logica IS
BEGIN
	F1<=A and B and C and D and E;
	F2<=A or B or C or D or E;
	F3<=A xor B xor C xor D xor E;
	F4<=NOT F1;
	F5<=NOT F2;
	F6<=NOT F3;
END booleana;