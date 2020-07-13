DELIMITER $$

create procedure spCRUD_produto_comercio_delete(
in cod_comercio INT,
in cod_produto INT
)
BEGIN

DELETE FROM produto_comercio where cd_comercio = cod_comercio and cd_produto = cod_produto ;

select * from produto_comercio;

END