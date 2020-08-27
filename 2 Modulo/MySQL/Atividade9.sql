/*Atividade 3

Crie um banco de dados para um serviço de farmácia de uma empresa, o nome do banco deverá ter o seguinte nome db_farmacia_do_bem, onde o sistema trabalhará com as informações dos produtos desta empresa. 

O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.

siga  exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço desta farmacia.

Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço deste farmacia(não esqueça de criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela Produto com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 50 reais.

Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.

Faça um select  utilizando LIKE buscando os Produtos com a letra B.

Faça um um select com Inner join entre  tabela categoria e produto.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são cosméticos).
*/

-- Criando o Banco 

CREATE DATABASE db_farmacia_do_bem;

-- Selecionando o Banco

USE db_farmacia_do_bem;

/* Crie uma tabela de categorias utilizando a habilidade de abstração e determine 
 atributos relevantes do tb_categoria para se trabalhar com o serviço desta farmacia.*/

CREATE TABLE TB_CATEGORIA(
	ID_CATEGORIA BIGINT AUTO_INCREMENT,
    NOME_CATEGORIA VARCHAR(50) NOT NULL,
	PRIMARY KEY (ID_CATEGORIA)
);

/* Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine  atributos
 relevantes dos tb_produto para se trabalhar com o serviço deste farmacia(não esqueça de criar a 
 foreign key de tb_categoria nesta tabela). */ 
 
 CREATE TABLE TB_PRODUTO(
	ID_PRODUTO BIGINT AUTO_INCREMENT,
    NOME_PRODUTO VARCHAR(40) NOT NULL,
    VALOR DECIMAL(5,2),
    ID_CATEGORIA BIGINT NOT NULL,
    PRIMARY KEY(ID_PRODUTO),
    FOREIGN KEY(ID_CATEGORIA) REFERENCES TB_CATEGORIA(ID_CATEGORIA)
 );
 
-- Popule esta tabela Categoria com até 5 dados.

INSERT INTO TB_CATEGORIA(NOME_CATEGORIA) VALUES ("Produtos de Limpeza");
INSERT INTO TB_CATEGORIA(NOME_CATEGORIA) VALUES ("Rémedio Diabetes");
INSERT INTO TB_CATEGORIA(NOME_CATEGORIA) VALUES ("Rémedio para Gripe");
INSERT INTO TB_CATEGORIA(NOME_CATEGORIA) VALUES ("Anticonssepcionais");
INSERT INTO TB_CATEGORIA(NOME_CATEGORIA) VALUES ("Rémedio para Asmas");


-- Popule esta tabela Produto com até 8 dados.
 
INSERT INTO TB_PRODUTO(NOME_PRODUTO,VALOR,ID_CATEGORIA) VALUES ("Cimegripe",20,3);
INSERT INTO TB_PRODUTO(NOME_PRODUTO,VALOR,ID_CATEGORIA) VALUES ("Dipirona",7,3);
INSERT INTO TB_PRODUTO(NOME_PRODUTO,VALOR,ID_CATEGORIA) VALUES ("Doril",10,3);
INSERT INTO TB_PRODUTO(NOME_PRODUTO,VALOR,ID_CATEGORIA) VALUES ("Ar",30,5);
INSERT INTO TB_PRODUTO(NOME_PRODUTO,VALOR,ID_CATEGORIA) VALUES ("Insulina",0,2);
INSERT INTO TB_PRODUTO(NOME_PRODUTO,VALOR,ID_CATEGORIA) VALUES ("Sabão",12.99,1);
INSERT INTO TB_PRODUTO(NOME_PRODUTO,VALOR,ID_CATEGORIA) VALUES ("Nociclin",14,4);
INSERT INTO TB_PRODUTO(NOME_PRODUTO,VALOR,ID_CATEGORIA) VALUES ("Xarope",34.25,3);
INSERT INTO TB_PRODUTO(NOME_PRODUTO,VALOR,ID_CATEGORIA) VALUES ("Nesaldina",64,3);

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.

SELECT * FROM TB_PRODUTO WHERE VALOR >= 50;

-- Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.

SELECT * FROM TB_PRODUTO WHERE VALOR BETWEEN 3 AND 60  ORDER BY VALOR;

-- Faça um select  utilizando LIKE buscando os Produtos com a letra B.

SELECT * FROM TB_PRODUTO WHERE NOME_PRODUTO LIKE "%B%";

-- Faça um um select com Inner join entre  tabela categoria e produto.

SELECT TB_PRODUTO.ID_PRODUTO , TB_PRODUTO.NOME_PRODUTO , TB_PRODUTO.VALOR , TB_CATEGORIA.NOME_CATEGORIA
 FROM TB_PRODUTO 
INNER JOIN TB_CATEGORIA ON TB_PRODUTO.ID_CATEGORIA = TB_CATEGORIA.ID_CATEGORIA ORDER BY VALOR; 

/* Faça um select onde traga todos os Produtos de uma categoria específica 
(exemplo todos os produtos que são cosméticos).*/

SELECT TB_PRODUTO.ID_PRODUTO,TB_PRODUTO.NOME_PRODUTO , TB_PRODUTO.VALOR, TB_CATEGORIA.NOME_CATEGORIA FROM
 TB_PRODUTO INNER JOIN TB_CATEGORIA ON TB_PRODUTO.ID_CATEGORIA = TB_CATEGORIA.ID_CATEGORIA WHERE
 TB_CATEGORIA.NOME_CATEGORIA = "Rémedio para Gripe";



