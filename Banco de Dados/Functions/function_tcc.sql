delimiter $
create function sfTeste2(n float, m float) returns float
begin
	declare teste float;
	set teste = power(n, 1 / m);
	return teste;
end $