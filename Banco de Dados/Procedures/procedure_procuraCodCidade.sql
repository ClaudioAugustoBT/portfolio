delimiter $$
create procedure procuraCodCidade(in cidade VARCHAR(50),in estado CHAR(2))
BEGIN
declare cduf INT;
declare saida INT;
declare cid VARCHAR(50);
set cid = UCASE(cidade);
set cduf = (select cd_uf from tb_uf where sg_uf = UCASE(estado));
set saida = (select cd_cidade from tb_cidade where nm_cidade like cid and cd_uf = cduf);
select saida;
END 