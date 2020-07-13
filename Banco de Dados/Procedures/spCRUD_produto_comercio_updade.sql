DELIMITER $$

create procedure spCRUD_produto_comercio_updade_valor_produto(
in cod_comercio INT,
in cod_produto INT,
in novo_valor_produto DECIMAL(9,2)
)
BEGIN

update produto_comercio set vl_produto = novo_valor_produto where cd_comercio = cod_comercio and cd_produto = cod_produto ;

select * from produto_comercio;

END