delimiter $
create function sfMedia(codproduto int) returns decimal(9,2)
begin
	declare v decimal(9,2);
	set v = (select AVG(vl_produto) from produto_comercio where cd_produto = codproduto);
	return v;

end $