library ieee;
use ieee.std_logic_1164.all;

entity sign_extender is
port
(
		input: in std_logic_vector(15 downto 0);	
		output: out std_logic_vector(31 downto 0)
);
end sign_extender;

architecture arch of sign_extender is
begin
	output(0)<= input(0);
	output(1)<= input(1);
	output(2)<= input(2);
	output(3)<= input(3);
	output(4)<= input(4);
	output(5)<= input(5);
	output(6)<= input(6);
	output(7)<= input(7);
	output(8)<= input(8);
	output(9)<= input(9);
	output(10)<= input(10);
	output(11)<= input(11);
	output(12)<= input(12);
	output(13)<= input(13);
	output(14)<= input(14);
	output(15)<= input(15);
	output(16)<= input(15);
	output(17)<= input(15);
	output(18)<= input(15);
	output(19)<= input(15);
	output(20)<= input(15);
	output(21)<= input(15);
	output(22)<= input(15);
	output(23)<= input(15);
	output(24)<= input(15);
	output(25)<= input(15);
	output(26)<= input(15);
	output(27)<= input(15);
	output(28)<= input(15);
	output(29)<= input(15);
	output(30)<= input(15);
	output(31)<= input(15);	
end arch;