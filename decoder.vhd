LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY lab2 IS 

PORT(
	A,B,C,D: IN std_logic;
	SEG: OUT std_logic_vector(6 downto 0)
     );
	  
END lab2; 



ARCHITECTURE top OF lab2 IS 


BEGIN

SEG(0) <=( (not D) AND (not C) AND (not B) AND A ) OR 
          ( (not D) AND C AND (not B) AND (not A) ) OR 
	  ( D AND C AND (not B) AND A )		    OR 
	  ( D AND (not C) AND B AND A );

SEG(1) <=( D AND C AND (not A) ) OR 
	  ( B AND A AND D )       OR
          ( B AND (not A) AND C ) OR 
	  ( (not D) AND C AND (not B) AND A );

SEG(2) <=( (not D) AND (not C) AND B AND (not A) ) OR
	  ( D AND C AND (not A) ) OR 
	  ( D AND C AND B );

SEG(3) <=( (not B) AND A AND (not C) ) OR 
	  ( B AND A AND C ) OR 
	  ( (not D) AND C AND (not B) AND (not A) ) OR
	  ( D AND (not C) AND B AND (not A) );

SEG(4) <=( (not D) AND A ) OR 
	  ( (not D) AND C AND (not B) ) OR 
	  ( (not B) AND A AND (not C) );

SEG(5) <=( (not D) AND (not C) AND A ) OR
	  ( (not D) AND (not C) AND B ) OR
	  ( B AND A AND (not D) )       OR
	  ( D AND C AND (not B) AND A );

SEG(6) <=( (NOT D) AND (NOT C) AND (NOT B) ) OR 
	  ( (not D) AND C AND B AND A ) OR
	  ( D AND C AND (not B) AND (not A) );


END top;	
