DELIMITER $$

create procedure spCRUD_tb_comercio_update_telefone(in cod_comercio INT, in NovoTelefone INT(11))
BEGIN

	update tb_comercio SET cd_telefone_comercio = NovoTelefone where cd_comercio = cod_comercio;
    select * from tb_comercio;

END