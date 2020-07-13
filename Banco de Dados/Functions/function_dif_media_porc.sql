delimiter $
create function sfDifMedia(codproduto int, codcomercio int) returns decimal(9,2)
begin

	declare media decimal(9,2);
    declare v decimal (9,2);
	declare dif decimal(9,2);
    
	set media = (select AVG(vl_produto) from produto_comercio where cd_produto = codproduto);
    
    set v = (select vl_produto from produto_comercio where cd_produto = codproduto and cd_comercio = codcomercio);
	   
    set dif = v - media;
    
    return dif;
    
end $