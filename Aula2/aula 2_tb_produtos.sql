CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos(
    id bigint auto_increment,
	nome varchar(255) not null,
	quantidade int,
    preco decimal(6,2) not null, -- 999.99 -> 1000	
	-- preco decimal(6,2)not null, -- 999.99
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, quantidade, preco)
values("tomate", 100,8.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("maçã",20, 5.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("laranja",50, 10.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("banana",200, 12.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("uva",1200, 30.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("pêra",500, 2.99);
INSERT INTO tb_produtos(nome, quantidade, preco, categoria_id)
values("Pitaya", 10, 15.00, 1);
INSERT INTO tb_produtos(nome, quantidade, preco, categoria_id)
values("Agrião", 15, 3.00, 2);
INSERT INTO tb_produtos(nome, quantidade, preco, categoria_id)
values("Cenoura", 18, 3.50, 3);
INSERT INTO tb_produtos(nome, quantidade, preco, categoria_id)
values("Rabanete", 200, 2.87, 3);


ALTER TABLE tb_produtos ADD categoria_id bigint;

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias 
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id);

-- adicionando a categoria na tb produtos
UPDATE tb_produtos SET categoria_id = 1 WHERE id = 1;
UPDATE tb_produtos SET categoria_id = 1 WHERE id = 2;
UPDATE tb_produtos SET categoria_id = 1 WHERE id = 3;

SELECT * FROM tb_produtos;

-- esvazia a tabela
truncate tb_produtos;
