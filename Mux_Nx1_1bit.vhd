library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


Entity Mux_Nx1_1bit is
generic (
			log2N: positive := 2	);
port(
	inpt: in std_logic_vector(2**log2N-1 downto 0);
	sel : in std_logic_vector(log2N-1 downto 0);
	outp: out std_logic
);
end;

architecture behavior of Mux_Nx1_1bit is
begin
outp<= inpt(to_integer(signed(sel)));
end
