library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


Entity Soma/Sub is
generic (
			N: positive := 32	);
port(
	inpt0, inpt1: in std_logic_vector(N-1 downto 0);
	op: in std_logic; --op: 0=+, 1=-
	outp: out std_logic std_logic_vector(N-1 downto 0)
	cout: out std_logic
	);
end;

architecture behavior of Som/sub is
signal temp: std_logic_vector(N downto 0);
begin
temp <= std_logic_vector(signed('0'&inpt0)+signed('0'&inpt1)) when op = '0' else
		std_logic_vector(signed('0'&inpt0)-signed('0'&inpt1))
outp<= temp(N-1 downto 0);
cout <= temp(N);
end;
