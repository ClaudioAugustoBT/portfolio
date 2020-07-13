DELIMITER $$

create procedure spCRUD_produto_comercio_insert(
in cod_comercio INT,
in cod_produto INT,
in valor_produto DECIMAL(9,2)
)
BEGIN

insert into produto_comercio (cd_comercio, cd_produto, vl_produto) VALUES (cod_comercio, cod_produto, valor_produto);

select * from produto_comercio;

END