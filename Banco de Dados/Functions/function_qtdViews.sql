delimiter $
create function sfQtdView(cod_lista int) returns INT
begin
	declare qtd int;
    set qtd = (select qt_view from tb_lista where cd_lista = cod_lista);
    
    return qtd;
end $