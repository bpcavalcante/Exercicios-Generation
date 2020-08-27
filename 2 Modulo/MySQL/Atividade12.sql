/*Atividade 6

Crie um banco de dados para um serviço de um site de cursos onlines, o nome do banco deverá ter o seguinte nome db_cursoDaMinhaVida, onde o sistema trabalhará com as informações dos produtos desta empresa. 

O sistema trabalhará com 2 tabelas tb_curso e tb_categoria.

siga  exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço deste site de cursos onlines.

Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço de um site de cursos onlines(não esqueça de criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela Produto com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 50 reais.

Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.

Faça um select  utilizando LIKE buscando os Produtos com a letra J.

Faça um um select com Inner join entre  tabela categoria e produto.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são da categoria Java).
*/

-- Criando Banco de dados

CREATE DATABASE db_cursoDaMinhaVida;

-- Selecionando o Banco de dados;

USE db_cursoDaMinhaVida;

/* Crie uma tabela de categorias utilizando a habilidade de abstração e determine 
 atributos relevantes do tb_categoria para se trabalhar com o serviço deste site de cursos onlines.*/
 
 CREATE TABLE TB_CATEGORIA(
	ID_CATEGORIA BIGINT AUTO_INCREMENT,
    NOME_CATEGORIA VARCHAR(30) NOT NULL,
	PRIMARY KEY(ID_CATEGORIA)
 );
 
 /* Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 
 atributos relevantes dos tb_produto para se trabalhar com o serviço de um site de cursos
 onlines(não esqueça de criar a foreign key de tb_categoria nesta tabela).*/
 
 CREATE TABLE TB_PRODUTO(
	ID_PRODUTO BIGINT AUTO_INCREMENT,
    NOME_PRODUTO VARCHAR(50) NOT NULL,
    QUANTIDADE_AULAS INT(100) NOT NULL,
    VALOR DECIMAL(5,2) NOT NULL,
    ID_CATEGORIA BIGINT NOT NULL,
    PRIMARY KEY(ID_PRODUTO),
    FOREIGN KEY(ID_CATEGORIA) REFERENCES TB_CATEGORIA(ID_CATEGORIA)    
 );
 
 --  Popule esta tabela Categoria com até 5 dados.

INSERT INTO TB_CATEGORIA(NOME_CATEGORIA) VALUES ("Logica de Programacao");
INSERT INTO TB_CATEGORIA(NOME_CATEGORIA) VALUES ("JAVA");
INSERT INTO TB_CATEGORIA(NOME_CATEGORIA) VALUES ("Python");
INSERT INTO TB_CATEGORIA(NOME_CATEGORIA) VALUES ("C#");
INSERT INTO TB_CATEGORIA(NOME_CATEGORIA) VALUES ("C++");

-- Popule esta tabela Produto com até 8 dados.

INSERT INTO TB_PRODUTO(NOME_PRODUTO,QUANTIDADE_AULAS,VALOR,ID_CATEGORIA) VALUES ("Programação Orientada a Objeto", 1 , 50,2);
INSERT INTO TB_PRODUTO(NOME_PRODUTO,QUANTIDADE_AULAS,VALOR,ID_CATEGORIA) VALUES ("Polimorfismo", 1 , 20,2);
INSERT INTO TB_PRODUTO(NOME_PRODUTO,QUANTIDADE_AULAS,VALOR,ID_CATEGORIA) VALUES ("Ciencia de dados", 1 , 20,3);
INSERT INTO TB_PRODUTO(NOME_PRODUTO,QUANTIDADE_AULAS,VALOR,ID_CATEGORIA) VALUES ("BigData", 1 , 24.99,3);
INSERT INTO TB_PRODUTO(NOME_PRODUTO,QUANTIDADE_AULAS,VALOR,ID_CATEGORIA) VALUES ("SpringBoot", 1 , 29.99,2);
INSERT INTO TB_PRODUTO(NOME_PRODUTO,QUANTIDADE_AULAS,VALOR,ID_CATEGORIA) VALUES ("Arduino", 1 , 34.99,5);
INSERT INTO TB_PRODUTO(NOME_PRODUTO,QUANTIDADE_AULAS,VALOR,ID_CATEGORIA) VALUES ("TCC com C++", 1 , 58.99,5);


-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.

SELECT * FROM TB_PRODUTO WHERE VALOR >=50 ORDER BY VALOR;

-- Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.

SELECT * FROM TB_PRODUTO WHERE VALOR BETWEEN 3 AND 60 ORDER BY VALOR;

-- Faça um select  utilizando LIKE buscando os Produtos com a letra J.

SELECT * FROM TB_PRODUTO WHERE NOME_PRODUTO LIKE "%j%" ORDER BY VALOR;

-- Faça um um select com Inner join entre  tabela categoria e produto.

SELECT TB_PRODUTO.NOME_PRODUTO,TB_PRODUTO.VALOR,TB_CATEGORIA.NOME_CATEGORIA FROM TB_PRODUTO INNER JOIN
TB_CATEGORIA ON TB_PRODUTO.ID_CATEGORIA = TB_CATEGORIA.ID_CATEGORIA ORDER BY VALOR;

/* Faça um select onde traga todos os Produtos de uma categoria específica
 (exemplo todos os produtos que são da categoria Java).*/
 
 SELECT * FROM TB_PRODUTO INNER JOIN TB_CATEGORIA ON TB_PRODUTO.ID_CATEGORIA = TB_CATEGORIA.ID_CATEGORIA 
 WHERE TB_CATEGORIA.NOME_CATEGORIA = "JAVA" ORDER BY VALOR ;




 
