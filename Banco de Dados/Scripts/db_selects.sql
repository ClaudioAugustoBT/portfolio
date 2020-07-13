use db_cpr06286;
show tables;

select * from tb_cliente;
select * from tb_revendedor;
select * from tb_cidade;
select * from tb_uf;
select * from tb_produto;
select * from tb_unidade;
select * from tb_pedido;
select * from item_pedido;
select * from tb_comissao;

-- clausula where
-- operadores de comparação
/*
= -> igual
> -> maior
< -> menor
>= -> Maior e igual
<= -> Menor e igual
<> ou !=(Somente em algumas ferramentas) -> Diferente
*/

select nm_cliente, nm_endereco, cd_cep
	from tb_cliente
		where cd_cliente = 201;
        
select nm_cliente, nm_endereco, cd_cep
	from tb_cliente
		where nm_cliente = 'jose';

select nm_produto, vl_produto
	from tb_produto
		where vl_produto > 2;

select * from tb_cliente where cd_cep is null;

-- operadores logico --> and - && // or - || // not

select nm_cliente, cd_cpf, cd_cep
	from tb_cliente
		where cd_cep >= '3000000'
			and cd_cep <= '3999999'
				or cd_cliente =201;
                
select nm_produto, sg_unidade, vl_produto
	from tb_produto
		where vl_produto <= 1 
			and vl_produto >= 0.5
				or sg_unidade = 'm';
                
select nm_produto, sg_unidade, vl_produto
	from tb_produto
		where 
        (vl_produto <= 1 
			and vl_produto >= 0.5)
				and sg_unidade = 'm';

select * from tb_cliente where not cd_cep is null;
-- ou 
select * from tb_cliente where cd_cep is not null;

select concat(nm_cliente, '-->', cd_cpf) as Atencao
	from tb_cliente;
    
select concat(nm_cidade, ' - ', sg_uf) as Mora
	from tb_cidade;