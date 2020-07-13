DELIMITER $$

create procedure spCRUD_tb_comercio_insert(
in email VARCHAR(30), 
in senha VARCHAR (12), 
in NomeComerciante Varchar(100),
in NomeFantasiaComercio Varchar(100),
in RazaoSocial Varchar(100),
in CNPJ VARCHAR(14),
in CEP INT(8),
in Logradouro VARCHAR(100),
in Telefone INT(11),
in Cidade VARCHAR(40)
)
BEGIN
-- Auto Increment do cd_comercio
declare v INT;
set v = (select cd_comercio from tb_comercio order by cd_comercio desc limit 1);
set v = v + 1;

INSERT INTO tb_comercio(cd_comercio, ds_email_comercio, ds_senha_comercio, nm_comerciante, nm_fantasia, nm_razao_social, cd_cnpj, cd_cep, ds_logradouro, 
cd_telefone_comercio, ds_cidade) 
VALUES (v , email, senha, NomeComerciante, NomeFantasiaComercio, RazaoSocial, CNPJ, CEP, Logradouro, Telefone, Cidade);


select * from tb_comercio;

END