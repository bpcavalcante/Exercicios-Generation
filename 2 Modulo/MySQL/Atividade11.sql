/* Atividade 5

Crie um banco de dados para um serviço de uma loja de produtos de construção, o nome do banco deverá ter o seguinte nome db_construindo_a_nossa_vida, onde o sistema trabalhará com as informações dos produtos desta empresa. 

O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.

siga  exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço deste ecommerce.

Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço de uma loja de produtos (não esqueça de criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela Produto com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 50 reais.

Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.

Faça um select  utilizando LIKE buscando os Produtos com a letra C.

Faça um um select com Inner join entre  tabela categoria e produto.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são da categoria hidráulica).
*/

-- Criando Banco de dados

CREATE DATABASE db_construindo_a_nossa_vida;

-- Selecionando o Banco de dados

USE db_construindo_a_nossa_vida;

/* Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos 
relevantes do tb_categoria para se trabalhar com o serviço deste ecommerce.*/

CREATE TABLE TB_CATEGORIA(
	ID_CATEGORIA BIGINT AUTO_INCREMENT,
    NOME_CATEGORIA VARCHAR(40) NOT NULL,
    PRIMARY KEY(ID_CATEGORIA)
);

/* Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5 atributos
 relevantes dos tb_produto para se trabalhar com o serviço de uma loja de produtos
 (não esqueça de criar a foreign key de tb_categoria nesta tabela).*/
 
 CREATE TABLE TB_PRODUTO(
	ID_PRODUTO BIGINT AUTO_INCREMENT,
    NOME_PRODUTO VARCHAR(40),
    VALOR DECIMAL(6,2),
    QUANTIDADE DECIMAL(4,2),
    ID_CATEGORIA BIGINT NOT NULL,
    PRIMARY KEY (ID_PRODUTO),
    FOREIGN KEY (ID_CATEGORIA) REFERENCES TB_CATEGORIA(ID_CATEGORIA)
 );
 
 -- Popule esta tabela Categoria com até 5 dados.
 
 INSERT INTO TB_CATEGORIA(NOME_CATEGORIA) VALUES ("Cimento");
 INSERT INTO TB_CATEGORIA(NOME_CATEGORIA) VALUES ("Tijolo");
 INSERT INTO TB_CATEGORIA(NOME_CATEGORIA) VALUES ("Pia");
 INSERT INTO TB_CATEGORIA(NOME_CATEGORIA) VALUES ("Porta");
 INSERT INTO TB_CATEGORIA(NOME_CATEGORIA) VALUES ("Ferramenta");

-- Popule esta tabela Produto com até 5 dados.

INSERT INTO TB_PRODUTO(NOME_PRODUTO,VALOR,QUANTIDADE,ID_CATEGORIA) VALUES ("Martelo",24.99,1,1);
INSERT INTO TB_PRODUTO(NOME_PRODUTO,VALOR,QUANTIDADE,ID_CATEGORIA) VALUES ("Chave Fenda",15.50,1,1);
INSERT INTO TB_PRODUTO(NOME_PRODUTO,VALOR,QUANTIDADE,ID_CATEGORIA) VALUES ("Porta de Aluminio",203.50,1,2);
INSERT INTO TB_PRODUTO(NOME_PRODUTO,VALOR,QUANTIDADE,ID_CATEGORIA) VALUES ("Bloco de Concreto",500.00,10.0,4);
INSERT INTO TB_PRODUTO(NOME_PRODUTO,VALOR,QUANTIDADE,ID_CATEGORIA) VALUES ("Pia de Porcelana",55.99,1,3);
INSERT INTO TB_PRODUTO(NOME_PRODUTO,VALOR,QUANTIDADE,ID_CATEGORIA) VALUES ("Cau",9.99,1,5);

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.

SELECT * FROM TB_PRODUTO WHERE VALOR >= 50 ORDER BY VALOR;

-- Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.

SELECT * FROM TB_PRODUTO WHERE VALOR BETWEEN 3 AND 60 ORDER BY VALOR;

-- Faça um select  utilizando LIKE buscando os Produtos com a letra C.

SELECT * FROM TB_PRODUTO WHERE NOME_PRODUTO LIKE "%C%" ORDER BY VALOR;

-- Faça um um select com Inner join entre  tabela categoria e produto.

SELECT TB_PRODUTO.ID_PRODUTO,TB_PRODUTO.NOME_PRODUTO,TB_PRODUTO.VALOR,TB_PRODUTO.QUANTIDADE,
TB_CATEGORIA.ID_CATEGORIA,TB_CATEGORIA.NOME_CATEGORIA FROM TB_PRODUTO INNER JOIN TB_CATEGORIA ON
TB_PRODUTO.ID_CATEGORIA = TB_CATEGORIA.ID_CATEGORIA ORDER BY TB_PRODUTO.VALOR;

/*Faça um select onde traga todos os Produtos de uma categoria específica 
(exemplo todos os produtos que são da categoria hidráulica). */

SELECT * FROM TB_PRODUTO INNER JOIN TB_CATEGORIA ON TB_PRODUTO.ID_CATEGORIA = TB_CATEGORIA.ID_CATEGORIA
WHERE TB_CATEGORIA.NOME_CATEGORIA = "Ferramenta";
