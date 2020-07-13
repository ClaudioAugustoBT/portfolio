DELIMITER $$
create procedure spCRUD_delete_tb_lista(in cod_lista INT)
BEGIN

DELETE FROM `tb_lista` WHERE cd_lista = cod_lista;
select * from tb_lista;
END