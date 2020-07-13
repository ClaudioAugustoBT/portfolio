show databases;-- exibe todas as base de dados
create database db_testeescola;
use db_testeescola;
create table aluno(
	cd_aluno int(6) not null,
    nm_aluno varchar(70),
    dt_nascimento date,
    constraint pk_aluno 
		primary key(cd_aluno)
);
show tables;
describe aluno;

alter table aluno 
	add cd_cpf char(11);
    
alter table aluno
	add cd_rg char(9);
    
alter table aluno change cd_rg cd_registro_geral char(9);

alter table aluno
	drop cd_registro_geral;
    
