/*
3.	Uma tabela que represente um varejo, contendo: 
•	ID do produto;
•	Preço do produto;
•	Categoria do produto ( Ex: quarto/sala / cozinha / banheiro)
•	Nome produto;

*Importante a tabela também precisa ter 5 dados;

Para essa tabela considere fazer o SELECT que retorne:
•	Todos os produtos que comecem com a letra “A”;
•	Todos os produtos de uma determinada categoria;
•	Todos os produtos entre $ 1.000 e 1.500 de uma determinada categoria; 
•	Todos os produtos listados por uma categoria utilizando like
*/

-- Selecionando  o Banco 

USE DB_DIVERSOS;

-- Criando tabela

CREATE TABLE VAREJO(
	ID_PRODUTO BIGINT AUTO_INCREMENT,
    PRECO DOUBLE (10,2),
    CATEGORIA_PRODUTO VARCHAR(10),
    NOME_PRODUTO VARCHAR(15),  
    PRIMARY KEY(ID_PRODUTO)
);	

-- Importante a tabela também precisa ter 5 dados;

INSERT INTO VAREJO(PRECO,CATEGORIA_PRODUTO,NOME_PRODUTO) VALUES (100,"Quarto","Armario");
INSERT INTO VAREJO(PRECO,CATEGORIA_PRODUTO,NOME_PRODUTO) VALUES (500,"Pessoal","Celular");
INSERT INTO VAREJO(PRECO,CATEGORIA_PRODUTO,NOME_PRODUTO) VALUES (400,"Cozinha","Liquidificador");
INSERT INTO VAREJO(PRECO,CATEGORIA_PRODUTO,NOME_PRODUTO) VALUES (200,"Escritório","Computador");
INSERT INTO VAREJO(PRECO,CATEGORIA_PRODUTO,NOME_PRODUTO) VALUES (350,"Quarto","Sofá");
INSERT INTO VAREJO(PRECO,CATEGORIA_PRODUTO,NOME_PRODUTO) VALUES (1200,"Pessoal","Notebook");
INSERT INTO VAREJO(PRECO,CATEGORIA_PRODUTO,NOME_PRODUTO) VALUES (1300,"Cozinha","Panela");




-- Todos os produtos que comecem com a letra “A”;

SELECT NOME_PRODUTO FROM VAREJO WHERE NOME_PRODUTO LIKE "a%";

-- Todos os produtos de uma determinada categoria;

SELECT * FROM VAREJO WHERE CATEGORIA_PRODUTO = "Quarto";

-- Todos os produtos entre $ 1.000 e 1.500 de uma determinada categoria; 

SELECT * FROM VAREJO WHERE PRECO BETWEEN 1000 AND 1500 AND CATEGORIA_PRODUTO = "PESSOAL";

-- Todos os produtos listados por uma categoria utilizando like

SELECT * FROM VAREJO WHERE CATEGORIA_PRODUTO LIKE "%Pessoal%";




