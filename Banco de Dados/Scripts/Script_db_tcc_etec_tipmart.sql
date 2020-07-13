-- TCC TIPMART

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_tipmart
-- -----------------------------------------------------
CREATE DATABASE IF NOT EXISTS `db_tipmart` DEFAULT CHARACTER SET utf8 ;
USE `db_tipmart` ;

-- -----------------------------------------------------
-- Table `tb_CIDADE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS tb_uf(
	cd_uf INT NOT NULL,
    nm_uf VARCHAR(50) NOT NULL,
    sg_uf char(2) NOT NULL,
    constraint pk_uf
		primary key (cd_uf)
);
-- -----------------------------------------------------
-- Table `tb_CIDADE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS tb_cidade(
	cd_cidade INT NOT NULL,
    nm_cidade VARCHAR(50) NOT NULL,
    cd_uf INT NOT NULL,
    constraint pk_cidade
		primary key (cd_cidade),
	constraint fk_cidade_uf
		foreign key (cd_uf)
			references tb_uf(cd_uf)
);
-- -----------------------------------------------------
-- Table `tb_consumidor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS tb_consumidor (
	`cd_consumidor` INT NOT NULL,
	`nm_usuario_consumidor` VARCHAR(20) NOT NULL,
	`cd_senha_consumidor` VARCHAR(12) NOT NULL,
	`nm_consumidor` VARCHAR(100) NOT NULL,
	`cd_cpf` VARCHAR(11) NOT NULL,
	CONSTRAINT pk_consumidor
		PRIMARY KEY (`cd_consumidor`)
   );
-- -----------------------------------------------------
-- Table `tb_COMERCIO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS tb_comercio(
	`cd_comercio` INT NOT NULL,
	`nm_usuario_comercio` VARCHAR(20) NOT NULL,
	`cd_senha_comercio` VARCHAR(12) NOT NULL,
	`nm_comerciante` VARCHAR(100) NOT NULL,
    `nm_fantasia` VARCHAR(100) NOT NULL,
    `nm_razao_social` VARCHAR(100) NOT NULL,
	`cd_cnpj` VARCHAR(14) NOT NULL,
    `cd_cep` INT(8) NOT NULL,
    `ds_logradouro` VARCHAR(100) NOT NULL,
    `cd_cidade`INT NOT NULL,
	CONSTRAINT pk_comercio
		PRIMARY KEY (`cd_comercio`),
	constraint fk_comerciante_cidade
		foreign key (cd_cidade) 
			references tb_cidade(cd_cidade) 
);
-- -----------------------------------------------------
-- Table `tb_marca`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS tb_marca(
	cd_marca INT NOT NULL,
    nm_marca VARCHAR(50) NOT NULL,
    ds_marca VARCHAR(150),
    constraint pk_marca
		primary key (cd_marca)
);
-- -----------------------------------------------------
-- Table `tb_unidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS tb_unidade(
	cd_unidade INT NOT NULL,
    sg_unidade CHAR(5),
    nm_unidade VARCHAR(20),
    constraint pk_unidade
		primary key (cd_unidade)
);
-- -----------------------------------------------------
-- Table `tb_palavrachave`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS tb_palavrachave(
	cd_palavrachave INT NOT NULL,
    nm_palavracahve1 VARCHAR(45),
    nm_palavracahve2 VARCHAR(45),
    constraint pk_palavrachave
		primary key (cd_palavrachave)
);
-- -----------------------------------------------------
-- Table `tb_categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS tb_categoria(
	cd_categoria INT NOT NULL,		
    nm_categoria VARCHAR(50),
    ds_categoria VARCHAR(300),
	constraint pk_categoria
		primary key (cd_categoria)
);
-- -----------------------------------------------------
-- Table `tb_produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS tb_produto(
	cd_produto INT NOT NULL,
    nm_produto VARCHAR(100),
    ds_produto VARCHAR(300),
    cd_ean13 long,
    cd_ncm INT,
    cd_unidade INT NOT NULL,
    cd_marca INT NOT NULL,
    cd_categoria INT NOT NULL,
    cd_palavrachave INT NOT NULL,
    constraint pk_produto
		primary key (cd_produto),
	constraint fk_produto_marca
		foreign key (cd_marca)
			references tb_marca(cd_marca),
	constraint fk_produto_categoria
		foreign key (cd_categoria)
			references tb_categoria(cd_categoria),
	constraint fk_produto_unidade
		foreign key (cd_unidade)
			references tb_unidade(cd_unidade),
	constraint fk_produto_palavrachave
		foreign key (cd_palavrachave)
			references tb_palavrachave(cd_palavrachave)
);
-- -----------------------------------------------------
-- Table `tb_lista`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS tb_lista(
	cd_lista INT NOT NULL,
    nm_lista VARCHAR (20),
    cd_consumidor INT,
    ic_compartilhamento CHAR(1),
    constraint pk_lista
		primary key (cd_lista),
	constraint fk_lista_consumidor
		foreign key (cd_consumidor)
			references tb_consumidor(cd_consumidor)
);
-- -----------------------------------------------------
-- Table `lista_produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS lista_produto(
	cd_produto INT NOT NULL,
    cd_lista INT NOT NULL,
    qt_produto INT,
    constraint fk_lista_produto_lista
		foreign key (cd_lista) 
			references tb_lista(cd_lista),
	constraint fk_lista_produto_produto
		foreign key (cd_produto)
			references tb_produto(cd_produto)
);
-- -----------------------------------------------------
-- Table `tb_produto_mercado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS produto_comercio(
	cd_produto_mercado INT NOT NULL,
    cd_comercio INT NOT NULL,
    cd_produto INT NOT NULL,
    vl_produto DECIMAL(9,2),
    constraint fk_produto_comercio_comercio
		foreign key (cd_comercio)
			references tb_comercio(cd_comercio),
	constraint fk_produto_comercio_produto
		foreign key (cd_produto)
			references tb_produto(cd_produto)
);