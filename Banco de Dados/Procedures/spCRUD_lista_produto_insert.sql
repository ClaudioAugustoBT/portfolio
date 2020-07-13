DELIMITER $$

create procedure spCRUD_lista_produto_insert(
in cod_lista INT,
in cod_produto INT,
in quantidade_produto INT
)
BEGIN

insert into lista_produto (cd_lista, cd_produto, qt_produto) VALUES (cod_lista, cod_produto, quantidade_produto);

select * from lista_produto;

END