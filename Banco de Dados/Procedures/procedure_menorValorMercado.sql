delimiter $$
create procedure menorValorMercado(in produto INT, out comercio INT)
BEGIN

select cd_comercio, min(vl_produto) from produto_comercio where cd_produto = produto;

END 