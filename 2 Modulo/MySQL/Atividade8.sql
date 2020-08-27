/*
Atividade 2

Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco deverá ter o seguinte nome db_pizzaria_legal, onde o sistema trabalhará com as informações dos produtos desta empresa. 

O sistema trabalhará com 2 tabelas tb_pizza e tb_categoria.

siga  exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine atributos relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.

Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria(não esqueça de criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela pizza com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 45 reais.

Faça um select trazendo  os Produtos com valor entre 29 e 60 reais.

Faça um select  utilizando LIKE buscando os Produtos que comecem com C.

Faça um um select com Inner join entre  tabela categoria e pizza.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são pizza doce).

*/

-- Criando o Banco de Dados

CREATE DATABASE db_pizzaria_legal ;

-- Selecionando o Banco

USE DB_PIZZARIA_LEGAL;

/* Crie uma tabela de categorias utilizando a habilidade de abstração e determine  atributos 
relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.
 */

CREATE TABLE TB_CATEGORIA (
	ID_CATEGORIA BIGINT AUTO_INCREMENT,
    NOME_CATEGORIA VARCHAR(20) NOT NULL,
    PRIMARY KEY(ID_CATEGORIA)
);

/*Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 3 atributos 
relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria(não esqueça de criar
 a foreign key de tb_categoria nesta tabela). */

CREATE TABLE TB_PIZZA (
	ID_PIZZA BIGINT AUTO_INCREMENT,
    SABOR VARCHAR(10) NOT NULL,
    DESCRICAO VARCHAR(150) NOT NULL,
    ID_CATEGORIA BIGINT NOT NULL,
    VALOR DOUBLE (4,2) NOT NULL,
    PRIMARY KEY(ID_PIZZA),
    FOREIGN KEY(ID_CATEGORIA) REFERENCES TB_CATEGORIA(ID_CATEGORIA)
);

-- Popule esta tabela Categoria com até 4 dados.

INSERT INTO TB_CATEGORIA(NOME_CATEGORIA) VALUES("Vegetariana");
INSERT INTO TB_CATEGORIA(NOME_CATEGORIA) VALUES("Vegana");
INSERT INTO TB_CATEGORIA(NOME_CATEGORIA) VALUES("Salgada");
INSERT INTO TB_CATEGORIA(NOME_CATEGORIA) VALUES("Doce");

-- Popule esta tabela pizza com até 8 dados.

INSERT INTO TB_PIZZA(SABOR,DESCRICAO,ID_CATEGORIA,VALOR) VALUES ("Mussarela","Queijo Mussarela",3,25);
INSERT INTO TB_PIZZA(SABOR,DESCRICAO,ID_CATEGORIA,VALOR) VALUES ("Rucula","Queijo Mussarela,Rúcula,Tomate Seco",1,35);
INSERT INTO TB_PIZZA(SABOR,DESCRICAO,ID_CATEGORIA,VALOR) VALUES ("Bacon","Queijo Mussarela, Bacon",3,30);
INSERT INTO TB_PIZZA(SABOR,DESCRICAO,ID_CATEGORIA,VALOR) VALUES ("Carne Soja","Carne de soja",2,50);
INSERT INTO TB_PIZZA(SABOR,DESCRICAO,ID_CATEGORIA,VALOR) VALUES ("Nutella","Nutella, Morango",4,40);
INSERT INTO TB_PIZZA(SABOR,DESCRICAO,ID_CATEGORIA,VALOR) VALUES ("Brigadeiro","Brigadeiro,granulado",4,30);
INSERT INTO TB_PIZZA(SABOR,DESCRICAO,ID_CATEGORIA,VALOR) VALUES ("Mesclada","Chocalate preto, Chocolate Branco",4,25);
INSERT INTO TB_PIZZA(SABOR,DESCRICAO,ID_CATEGORIA,VALOR) VALUES ("Brocolis","Queijo Mussarela e Brocolis",1,25);

-- Faça um select que retorne os Produtos com o valor maior do que 45 reais.

SELECT * FROM TB_PIZZA WHERE VALOR >= 45;

-- Faça um select trazendo  os Produtos com valor entre 29 e 60 reais.

SELECT * FROM TB_PIZZA WHERE VALOR BETWEEN 29 AND 60;

-- Faça um select  utilizando LIKE buscando os Produtos que comecem com C.

SELECT * FROM TB_PIZZA WHERE SABOR LIKE "C%";

-- Faça um um select com Inner join entre  tabela categoria e pizza.

SELECT TB_PIZZA.ID_PIZZA,TB_PIZZA.SABOR, TB_CATEGORIA.ID_CATEGORIA , TB_CATEGORIA.NOME_CATEGORIA
FROM TB_PIZZA 
INNER JOIN TB_CATEGORIA ON TB_PIZZA.ID_CATEGORIA = TB_CATEGORIA.ID_CATEGORIA;

/* Faça um select onde traga todos os Produtos de uma categoria específica 
(exemplo todos os produtos que são pizza doce).*/

SELECT * FROM TB_PIZZA 
INNER JOIN TB_CATEGORIA ON TB_PIZZA.ID_CATEGORIA = TB_CATEGORIA.ID_CATEGORIA 
WHERE TB_CATEGORIA.NOME_CATEGORIA = "Doce";

 






