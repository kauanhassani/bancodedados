CREATE DATABASE db_generation_game_online;

use db_generation_game_online;

# tabela de classes

create table tb_classes(
id bigint auto_increment, 
nome varchar(255)not null,
vida int,
primary key(id)
);
 
insert into tb_classes (nome,vida)
values ("Noob", 5),
("Pro",10),
("Ultra Pro", 20),
("Hacker",25),
("Mega Hacker",30);

select * from tb_classes;

# tabela personagens

create table tb_personagens (
    id bigint auto_increment,
    primary key (id),
    nome_personagem varchar(255) not null,
    descricao_personagem varchar(255) not null,    
    poder_ataque int,
    poder_defesa int,
    classes_id bigint not null,
    foreign key (classes_id) references tb_classes(id)
);

insert into tb_personagens(nome_personagem, descricao_personagem, poder_ataque, poder_defesa, classes_id)
values("Robin","É o líder mas não tem habilidade", 750,300, 1),
("Mutano", "Consegue se transformar em vários animais diferentes",1570,790,2),
("Ravena", "Se tranforma no bicho mais poderoso da terra",2830,2000,4),
("Estelar","Solta lazer pelos olhos",1690,800,3),
("Cyborg","Sabe tudo sobre computadores, já que ele é um",1700,760,3),
("Batman","Tem uma capa de morcego",1000,1700,2),
("Trigon","Pai maligno da Ravena",4800,2000,5),
("Abelha", "Tem os poderes de uma abelha", 1750,800,3);

select * from tb_personagens;

# junção das tabelas
select nome_personagem, descricao_personagem from tb_personagens
inner join tb_classes on tb_classes.id = tb_personagens.classes_id;

# mostra os personagens que tem poder de ataque maior que 2000
select nome_personagem, poder_ataque from tb_personagens where poder_ataque > 2000;

# mostra os personagens que tem poder de defesa entre 1000 e 2000
select nome_personagem, poder_defesa from tb_personagens where poder_defesa between 1000 and 2000;

# mostra os personagens que tem a letra "C" no nome
select * from tb_personagens where nome_personagem like "%c%";


