DELIMITER $$

create procedure spCRUD_lista_produto_delete(
in cod_lista INT,
in cod_produto INT
)
BEGIN

DELETE FROM  lista_produto where cd_produto = cod_produto and cd_lista = cod_lista ;

select * from lista_produto;

END