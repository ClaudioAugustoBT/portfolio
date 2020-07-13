delimiter $
create function sfautoIncrement(tabela varchar(50)) returns INT
begin
	declare v int;
	set v = (select cd_lista from tabela order by cd_lista desc limit 1);
	set v = v + 1;
	return v;
	
end $