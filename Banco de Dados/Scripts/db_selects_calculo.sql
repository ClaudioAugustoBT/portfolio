use db_cpr06286;

select acos(0.5); 
select asin(0.5); 
select atan(0.5); 
select degrees(asin(0.5));
select mod(5,2);
select pi() + 0.0000000000000; -- Pi e numero de casas
select round(1.9);
select round(1.3);-- arredonda
select ceil(1.5); -- arredonda pra cima
select ascii('a');-- retorna cod ascii
select bin(123);
select hex(2552552550);
select 8*(9-4)/((568+65)*3);

select * from tb_produto;

select nm_produto, vl_produto as 'Preço Atual',vl_produto * 1.1 as 'Novo Preço'
	from tb_produto;
    
select nm_produto, vl_produto as 'Preço Atual',vl_produto * 1.1 as 'Novo Preço'
	from tb_produto
		where sg_unidade = 'm';
        
select nm_produto, vl_produto as 'Preço Atual',vl_produto * 1.1 as 'Novo Preço'
	from tb_produto
		where sg_unidade in ('m','g');
        
select * from tb_comissao;

select * from tb_revendedor;

select nm_revendedor, sg_categoria, concat('R$ ', vl_salario) as 'Salario Atual', 
concat('R$ ', round(vl_salario*1.075+600.00, 2))  as 'Novo Salario'
	from tb_revendedor
		where sg_categoria = 'B';
        
select datediff(curdate(), '1989-07-11') / 365;

select dt_pedido, datediff(curdate(), dt_pedido) / 30
	from tb_pedido;
    
select dt_pedido, day(dt_pedido), month(dt_pedido), year(dt_pedido)
	from tb_pedido;
    
select dt_pedido, dayname(dt_pedido), monthname(dt_pedido), year(dt_pedido)
	from tb_pedido;
    
select dt_pedido, dayofweek(dt_pedido)
	from tb_pedido;

select dt_pedido, dt_pedido + interval '2' month + interval '6' day
	from tb_pedido;
    
select dt_pedido, extract(month from dt_pedido)
	from tb_pedido;
    







