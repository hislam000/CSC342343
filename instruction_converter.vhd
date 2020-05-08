library ieee;
use ieee.std_logic_1164.all;

entity instruction_converter is
port
(
		input: in std_logic_vector(31 downto 0);
		imm : out std_logic_vector(15 downto 0);
		opcode: out std_logic_vector(5 downto 0);
		rs,rt,rd : out std_logic_vector(4 downto 0);
		clk : in std_logic
);
end instruction_converter;

architecture arch of instruction_converter is
begin
 clocked: process
 
 begin
	WAIT UNTIL(clk'EVENT AND clk = '1');
	imm <= input(15 downto 0);
	rs <= input(25 downto 21);
	rt <= input(20 downto 16);
	rd <= input(15 downto 11);
	opcode <= input(31 downto 26); 
 end process;
end arch;