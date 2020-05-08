library ieee;
use ieee.std_logic_1164.all;

--------------------------------------

entity opcode is
port(	
   Opcode:  in std_logic_vector(5 downto 0);
   Wren:	   out std_logic;
	RegDst:  out std_logic;
	ALUOp :  out std_logic_vector(2 downto 0);
	Add_Sub: out std_logic;
	Branch:  out std_logic;
	ALUSrc:  out std_logic
);
end opcode;  

---------------------------------------

architecture Opcode_arch of opcode is
begin

RegDst <= (Opcode(3) and Opcode(1))   or  (Opcode(3) and Opcode(0));
ALUOp(2) <= (not(Opcode(1)) and not(Opcode(0)))  or  (not(Opcode(2))) ;
ALUOp(1) <= (not(Opcode(2)) and not(Opcode(0)))  or  (Opcode(1) and not(Opcode(0)))  or  (not(Opcode(1)) and Opcode(0));
ALUOp(0) <= Opcode(3)   or  (not(Opcode(2)) and not(Opcode(1)))   or  Opcode(0);
Add_Sub <= (Opcode(1) and Opcode(0))  or  (not(Opcode(1)) and not(Opcode(0)))  or  (Opcode(3) and Opcode(0));
Branch <= Opcode(3) and not(Opcode(1)) and not(Opcode(0));
ALUSrc <= (Opcode(3) and Opcode(1))   or  (Opcode(3) and Opcode(0));
Wren <= Opcode(1)   or  Opcode(0)  or  not(Opcode(3)) ; 

end Opcode_arch;

---------------------------------------
