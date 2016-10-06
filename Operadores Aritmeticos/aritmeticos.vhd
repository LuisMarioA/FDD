LIBRARY ieee;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY aritmeticos IS
	PORT (a,b,Cin,Pin:IN STD_LOGIC;
		  MSsuma,MScarry,SCsuma,SCCout,MRresta,MRprestamo,RCresta,RCpout:OUT STD_LOGIC);

ATTRIBUTE PIN_NUMBERS OF aritmeticos: ENTITY IS
"a:1 b:2 Cin:3 Pin:4 MSsuma:14 MScarry:15 SCsuma:16 SCCout:17 MRresta:18 MRprestamo:19 RCresta:20 RCpout:21";
END aritmeticos;
ARCHITECTURE booleana OF aritmeticos IS
BEGIN
	MSsuma<=(a xor b);
	MScarry<=(a and b);

	SCsuma<=((a xor b) xor Cin);
	SCCout<=(((a xor b) and Cin) or (a and b));

	MRresta<=(a xor b);
	MRprestamo<=((not a) and b);

	RCresta<=((b xor Pin) xor a);
	RCpout<=(((not a) and Pin) or (not a and b) or (b and Pin));

END booleana;
