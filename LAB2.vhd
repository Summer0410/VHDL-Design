
LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY TEST_LAB2 IS
END TEST_LAB2;


ARCHITECTURE TEST OF TEST_LAB2 IS
--DECLARE COMPONENT TO BE TESTED
	COMPONENT lab2 is
	
	   PORT(A,B,C,D: IN std_logic;
	        SEG: OUT std_logic_vector(6 downto 0) );
			  
	END COMPONENT;
	
	SIGNAL S0, S1, S2, S3: std_logic ;
 	SIGNAL SEG : std_logic_vector(6 downto 0); 
      --SHOULD IT BE SIGNAL S0,S1,S2:BIT; SEG(17 DOWNTO 0):BIT_VECTOR;  ? NOT SURE WHICH ONE IS CORRECT
	
	
BEGIN
	T1: LAB2 PORT MAP (S0, S1, S2, S3,SEG);	
	S0<= '1' AFTER 5NS;
	S1<= '0' AFTER 15NS;
	S2<= '1' AFTER 25NS;
	S3<= '1' AFTER 50NS;
	
	
	S1<= '0' AFTER 80NS;
	S3<= '1' AFTER 100NS;
	S0<= '1' AFTER 125NS;
        S2<= '1' AFTER 155NS;
END;
	