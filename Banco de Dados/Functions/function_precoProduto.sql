delimiter $
create function sfPrecoProduto(codproduto int, codcomercio int) returns decimal(9,2)
begin
	declare v decimal(9,2);
	set v = (select vl_produto from produto_comercio where cd_produto = codproduto and cd_comercio = codcomercio);
    return v;
end $