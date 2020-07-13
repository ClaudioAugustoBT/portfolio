delimiter $$
create procedure abaixaPreco(in cdc INT, in cdp INT, in porcento decimal(9,2))
BEGIN

declare preco decimal(9,2);
declare pc decimal(9,2);
set pc = (porcento/100);
set preco = (select vl_produto from produto_comercio where cd_comercio = cdc and cd_produto = cdp);

update produto_comercio set vl_produto = preco - (preco*pc) where cd_comercio = cdc and cd_produto = cdp;

END $$