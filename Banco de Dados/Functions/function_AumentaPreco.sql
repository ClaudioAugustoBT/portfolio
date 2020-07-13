delimiter $
create function sfAumento(preco decimal(9,2), porcentagem decimal(9,2)) returns decimal(9,2)
begin
	declare precoNovo decimal(9,2);
    
    set precoNovo = preco * (1 + (procentagem/100));
    
    return precoNovo;
end $