DELIMITER $$
create procedure mostraLista(in lista INT)
BEGIN

declare v INT;
set v = (select qt_view from tb_lista where cd_lista = lista);
set v = v + 1;
UPDATE tb_lista set qt_view = v where cd_lista = lista;

select tb_consumidor.nm_consumidor AS consumidor, tb_lista.nm_lista AS NomeLista, tb_produto.nm_produto AS Produto, tb_produto.ds_produto AS Descricao, lista_produto.qt_produto as QTD
	from lista_produto 
    JOIN tb_produto
		on tb_produto.cd_produto = lista_produto.cd_produto
    JOIN tb_lista
		on lista_produto.cd_lista = tb_lista.cd_lista
    JOIN tb_consumidor
		on tb_consumidor.cd_consumidor = tb_lista.cd_consumidor		
	where lista_produto.cd_lista = lista;

END