DELIMITER $$

create procedure spCRUD_tb_comercio_delete(in cod_comercio INT )
BEGIN

DELETE FROM tb_comercio where cd_comercio = cod_comercio;

select * from tb_comercio;

END