DELIMITER $$

create procedure spCRUD_lista_produto_update_quantidade(
in cod_lista INT,
in cod_produto INT,
in quantidade_produto INT
)
BEGIN

update lista_produto set qt_produto = quantidade_produto where cd_produto = cod_produto and cd_lista = cod_lista ;

select * from lista_produto;

END