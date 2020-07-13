DELIMITER $$

create procedure spCRUD_tb_lista_insert(in NomeLista VARCHAR(50), in Cod_Consumidor INT)
BEGIN
-- Auto Increment do cd_lista
declare v INT;
set v = (select cd_lista from tb_lista order by cd_lista desc limit 1);
set v = v + 1;

INSERT INTO tb_lista(cd_lista, nm_lista,cd_consumidor, ic_compartilhamento, qt_view) VALUES ( v , NomeLista, Cod_Consumidor, 'n' , 0);
 select * from tb_lista;
END
