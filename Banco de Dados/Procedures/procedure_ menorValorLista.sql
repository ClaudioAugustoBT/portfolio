DELIMITER $$
create procedure menorValorLista(in codlista INT)
BEGIN
declare linhas INT;
declare linha_atual int;
declare melhor_valor decimal(9,2);
declare vl_temp decimal(9,2);
declare melhor_comercio int;
set linha_atual = 1;
set linhas = (select count(*) from tb_comercio);
set melhor_valor = 0;

 WHILE linha_atual < linhas DO
	set vl_temp = (select sum(total) from (select tb_consumidor.nm_consumidor, tb_lista.nm_lista, tb_produto.nm_produto, tb_produto.ds_produto, lista_produto.qt_produto, 
tb_comercio.nm_fantasia, produto_comercio.vl_produto, (produto_comercio.vl_produto * lista_produto.qt_produto) as total
	from lista_produto 
    JOIN tb_produto
		on tb_produto.cd_produto = lista_produto.cd_produto
    JOIN tb_lista
		on lista_produto.cd_lista = tb_lista.cd_lista
    JOIN tb_consumidor
		on tb_consumidor.cd_consumidor = tb_lista.cd_consumidor
	JOIN produto_comercio
		on tb_produto.cd_produto = produto_comercio.cd_produto 
    LEFT JOIN tb_comercio
		on tb_comercio.cd_comercio = codcomercio
	where lista_produto.cd_lista = codlista AND produto_comercio.cd_comercio = linha_atual
    ) as temptab);
    
    if (vl_temp < melhor_valor) then
		set melhor_valor = vl_temp;
        set melhor_comercio = linha_atual;
	end if;

	set linha_atual = linha_atual + 1;
END WHILE;

   select melhor_valor, melhor_comercio;

END