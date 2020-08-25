/*
Atividade 2

Crie um banco de dados para um e commerce, onde o sistema trabalhará com as informações dos produtos deste ecommerce. 

Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste ecommerce.

Popule esta tabela com até 10 dados;

Faça um select que retorne os produtos com o valor maior do que 500.

Faça um select que retorne os produtos com o valor menor do que 500.

Ao término atualize um dado desta tabela através de uma query de atualização.

salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta atividade.
*/

-- Criando o Banco de dados

CREATE DATABASE ECOMMERCE;

-- Selecionando o Banco ECOMMERCE

USE ECOMMERCE;

-- Criando a tabela produto

CREATE TABLE PRODUTOS (
	ID_PRODUTO BIGINT AUTO_INCREMENT,
    NOME VARCHAR(30) NOT NULL,
    VALOR DECIMAL(10,2) NOT NULL,
    QUANTIDADE INT NOT NULL,
    PRECO_CUSTO DECIMAL(10,2),
    PRIMARY KEY(ID_PRODUTO)
);

-- Popule esta tabela com até 15 dados;

INSERT INTO PRODUTOS(NOME,VALOR,QUANTIDADE,PRECO_CUSTO) VALUES ("Televisão",1500,10,1000);
INSERT INTO PRODUTOS(NOME,VALOR,QUANTIDADE,PRECO_CUSTO) VALUES ("Celular",10000,10,3999.98);
INSERT INTO PRODUTOS(NOME,VALOR,QUANTIDADE,PRECO_CUSTO) VALUES ("Radio",1500,10,300);
INSERT INTO PRODUTOS(NOME,VALOR,QUANTIDADE,PRECO_CUSTO) VALUES ("Relogio",2000,10,1500);
INSERT INTO PRODUTOS(NOME,VALOR,QUANTIDADE,PRECO_CUSTO) VALUES ("Computador",4000,10,2999.99);
INSERT INTO PRODUTOS(NOME,VALOR,QUANTIDADE,PRECO_CUSTO) VALUES ("Notebook",5000,10,3459.99);
INSERT INTO PRODUTOS(NOME,VALOR,QUANTIDADE,PRECO_CUSTO) VALUES ("Calculadora",50,10,20.99);
INSERT INTO PRODUTOS(NOME,VALOR,QUANTIDADE,PRECO_CUSTO) VALUES ("Moden",100,10,50);
INSERT INTO PRODUTOS(NOME,VALOR,QUANTIDADE,PRECO_CUSTO) VALUES ("Cadeira Gamer",1500,10,1000);
INSERT INTO PRODUTOS(NOME,VALOR,QUANTIDADE,PRECO_CUSTO) VALUES ("Mouse",200,10,100);
INSERT INTO PRODUTOS(NOME,VALOR,QUANTIDADE,PRECO_CUSTO) VALUES ("Teclado",500,10,200);

-- Faça um select que retorne os produtos com o valor maior do que 500.

SELECT * FROM PRODUTOS WHERE VALOR >= 500;

-- Faça um select que retorne os produtos com o valor menor do que 500.

SELECT * FROM PRODUTOS WHERE VALOR < 500;

-- Ao término atualize um dado desta tabela através de uma query de atualização.

UPDATE PRODUTOS SET VALOR = 300 WHERE ID_PRODUTO = 10;

