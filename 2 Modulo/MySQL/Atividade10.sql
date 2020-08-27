/* 
Atividade 4

Crie um banco de dados para um serviço de um açougue, o nome do banco deverá ter o seguinte nome db_cidade_das_carnes, onde o sistema trabalhará com as informações dos produtos desta empresa. 

O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.

siga  exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço desse açougue.

Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço desse açougue(não esqueça de criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela Produto com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 50 reais.

Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.

Faça um select  utilizando LIKE buscando os Produtos com a letra C.

Faça um um select com Inner join entre  tabela categoria e produto.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são cosméticos).
*/

-- Criando Banco

CREATE DATABASE db_cidade_das_carnes;

-- Usando o Banco de Dados

USE db_cidade_das_carnes;

/* Crie uma tabela de categorias utilizando a habilidade de abstração e determine atributos 
relevantes do tb_categoria para se trabalhar com o serviço desse açougue.*/

CREATE TABLE tb_categoria (
	ID_CATEGORIA BIGINT AUTO_INCREMENT,
    NOME_CATEGORIA VARCHAR(30) NOT NULL,
    PRIMARY KEY(ID_CATEGORIA)
);

/*Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine
  atributos relevantes dos tb_produto para se trabalhar com o serviço desse açougue
 (não esqueça de criar a foreign key de tb_categoria nesta tabela).*/
 
 CREATE TABLE TB_PRODUTO (
	ID_PRODUTO BIGINT AUTO_INCREMENT,
    NOME_PRODUTO VARCHAR(40) NOT NULL,
    VALOR DECIMAL(5,2) NOT NULL,
    PESO DECIMAL(4,2),
    ID_CATEGORIA BIGINT NOT NULL,
    PRIMARY KEY(ID_PRODUTO),
    FOREIGN KEY(ID_CATEGORIA) REFERENCES TB_CATEGORIA(ID_CATEGORIA)
 );
 
-- Popule esta tabela Categoria com até 5 dados.

INSERT INTO TB_CATEGORIA(NOME_CATEGORIA) VALUES ("Carne");
INSERT INTO TB_CATEGORIA(NOME_CATEGORIA) VALUES ("Peixe");
INSERT INTO TB_CATEGORIA(NOME_CATEGORIA) VALUES ("Frango");
INSERT INTO TB_CATEGORIA(NOME_CATEGORIA) VALUES ("Verdura");
INSERT INTO TB_CATEGORIA(NOME_CATEGORIA) VALUES ("Salada");

-- Popule esta tabela Produto com até 5 dados.

INSERT INTO TB_PRODUTO(NOME_PRODUTO,VALOR,PESO,ID_CATEGORIA) VALUES ("Picanha",60,1,5);
INSERT INTO TB_PRODUTO(NOME_PRODUTO,VALOR,PESO,ID_CATEGORIA) VALUES ("Fraldinha",30,1,5);
INSERT INTO TB_PRODUTO(NOME_PRODUTO,VALOR,PESO,ID_CATEGORIA) VALUES ("File Mignon",40,1,5);
INSERT INTO TB_PRODUTO(NOME_PRODUTO,VALOR,PESO,ID_CATEGORIA) VALUES ("Salmao",60,1,4);
INSERT INTO TB_PRODUTO(NOME_PRODUTO,VALOR,PESO,ID_CATEGORIA) VALUES ("Coxa de Frango",15,1,3);
INSERT INTO TB_PRODUTO(NOME_PRODUTO,VALOR,PESO,ID_CATEGORIA) VALUES ("Cenoura",5,1,2);
INSERT INTO TB_PRODUTO(NOME_PRODUTO,VALOR,PESO,ID_CATEGORIA) VALUES ("Alface",3,1,1);

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.

SELECT * FROM TB_PRODUTO WHERE TB_PRODUTO.VALOR >= 50 ORDER BY TB_PRODUTO.VALOR;

-- Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.

SELECT * FROM TB_PRODUTO WHERE TB_PRODUTO.VALOR BETWEEN 3 AND 60 ORDER BY TB_PRODUTO.VALOR;

-- Faça um select  utilizando LIKE buscando os Produtos com a letra C.

SELECT * FROM TB_PRODUTO WHERE TB_PRODUTO.NOME_PRODUTO LIKE "%C%" ORDER BY TB_PRODUTO.VALOR;

-- Faça um um select com Inner join entre  tabela categoria e produto.

SELECT TB_PRODUTO.ID_PRODUTO,TB_PRODUTO.NOME_PRODUTO,TB_PRODUTO.VALOR,
TB_CATEGORIA.ID_CATEGORIA,TB_CATEGORIA.NOME_CATEGORIA FROM TB_PRODUTO
INNER JOIN TB_CATEGORIA ON TB_PRODUTO.ID_CATEGORIA = TB_CATEGORIA.ID_CATEGORIA ORDER BY VALOR;

/* Faça um select onde traga todos os Produtos de uma categoria específica 
(exemplo todos os produtos que são cosméticos).*/

SELECT * FROM TB_PRODUTO INNER JOIN TB_CATEGORIA ON TB_PRODUTO.ID_CATEGORIA = TB_CATEGORIA.ID_CATEGORIA
WHERE TB_CATEGORIA.NOME_CATEGORIA = "Carne" ORDER BY TB_PRODUTO.VALOR;


