DELIMITER $$

create procedure spCRUD_update_tb_lista_views(in cod_lista INt )
BEGIN
	declare v INT;
	set v = (select qt_view from tb_lista where cd_lista = cod_lista);
	set v = v + 1;
	update tb_lista SET qt_view = v where cd_lista = cod_lista;
    select * from tb_lista;

END