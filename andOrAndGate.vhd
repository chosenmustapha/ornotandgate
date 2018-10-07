LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY andOrAndGate is 


	PORT(
	
			in1 : IN  STD_LOGIC;
			in2 : IN  STD_LOGIC;
			in3 : IN  STD_LOGIC;
			  X : OUT STD_LOGIC );
			  
END andOrAndGate;


ARCHITECTURE BEHAVIOR OF andOrAndGate is 

	BEGIN
	
		X <= (in1 AND in2) OR (NOT in3); 
		
END BEHAVIOR; 
