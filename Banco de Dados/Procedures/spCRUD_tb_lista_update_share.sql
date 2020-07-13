DELIMITER $$

create procedure spCRUD_update_tb_lista_share(in cod_lista INt, in compartilhar CHAR(1) )
BEGIN
declare msg VARCHAR(100);

if(compartilhar <> 'y' and compartilhar <> 'n') then
	set msg = "Somente use os caracteres 'y' (Para compartilhar) e 'n' (Para NÃO compartilhar)";
    select msg;
else
	update tb_lista SET ic_compartilhamento = compartilhar where cd_lista = cod_lista;
    select * from tb_lista;
end if;

END