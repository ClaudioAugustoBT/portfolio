DELIMITER $$
create procedure precoTotalListaComercio(in codlista INT, in codcomercio INT)
BEGIN


select tb_consumidor.nm_consumidor AS consumidor, tb_lista.nm_lista AS 'Nome Lista', tb_produto.nm_produto AS Produto, tb_produto.ds_produto AS Descricao, lista_produto.qt_produto as QTD, 
tb_comercio.nm_fantasia as Comercio, produto_comercio.vl_produto as 'Vlr. Unid', (produto_comercio.vl_produto * lista_produto.qt_produto) as 'Vlr. Total'
	from lista_produto 
    JOIN tb_produto
		on tb_produto.cd_produto = lista_produto.cd_produto
    JOIN tb_lista
		on lista_produto.cd_lista = tb_lista.cd_lista
    JOIN tb_consumidor
		on tb_consumidor.cd_consumidor = tb_lista.cd_consumidor
	JOIN produto_comercio
		on tb_produto.cd_produto = produto_comercio.cd_produto 
    JOIN tb_comercio
		on tb_comercio.cd_comercio = codcomercio
	
	where lista_produto.cd_lista = codlista AND produto_comercio.cd_comercio = codcomercio;
    

END