CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_rechum(
    id bigint auto_increment,
	nome_funcionario varchar(255) not null,
    endereco varchar(255) not null,
    telefone int,
	cargo varchar(255) not null,
	salario decimal not null,
    PRIMARY KEY (id)
);

insert tb_rechum(nome_funcionario, endereco, telefone, cargo, salario)
value("inassah gabriel", "rua dos limões",1195648752,"Dev Jr",5000.00);
insert tb_rechum (nome_funcionario, endereco, telefone, cargo, salario)
value ("Joana Dulce", "Rua dos Santos",1197512334,"Dev Jr.",5000.00);
insert tb_rechum (nome_funcionario, endereco, telefone, cargo, salario)
value ("Luquinha da ZL", "Av Mario Coelho",1194769817,"Estoquista",2000.00);
insert tb_rechum (nome_funcionario, endereco, telefone, cargo, salario)
value ("Hibrainssio", "Rua Gema",1192216478,"Aprendiz",670.00);
insert tb_rechum (nome_funcionario, endereco, telefone, cargo, salario)
value ("Leandra Xin", "Rua das Macieiras",1191346790,"Aprendiz de RH.",1900.00);


SELECT * FROM tb_rechum;

SELECT nome_funcionario, salario FROM tb_rechum WHERE salario < 2000;

SELECT nome_funcionario, salario FROM tb_rechum WHERE salario > 2000;

REPLACE INTO tb_rechum (nome_funcionario, endereco, telefone, cargo, salario)
values ("GWarrior", "Av do Imigrantes",1795453128, "Analista de dados",7500.00);