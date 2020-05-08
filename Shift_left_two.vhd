library ieee;
use ieee.std_logic_1164.all;

--declaring all the port, basically the input and output structure of the circuit
entity Shift_left_two is
port( a         : in std_logic_vector(31 downto 0);
      result    : out std_logic_vector(31 downto 0) 
    );
end Shift_left_two;

architecture arch of Shift_left_two is

--initializing the signals
signal in1, out1: std_logic_vector(31 downto 0);

--initializing all the cases
begin
  in1 <= a;
  result <= out1;
      --for Left Rotation case
      out1 <= to_stdlogicvector(to_bitvector(in1) sll 2);    
end arch;