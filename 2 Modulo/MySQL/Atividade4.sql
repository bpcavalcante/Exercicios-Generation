/*
Crie um banco de dados com o nome de “db_diversos”;
Dentro desse banco de dados devem conter as seguintes tabelas e os seguintes SELECT’s:
1.	Uma tabela que represente uma escola, contendo: 
•	ID do aluno;
•	Idade do aluno;
•	+ 3 informações que você considera importante;

*Importante a tabela precisa ter 15 dados de alunos;

Para essa tabela considere fazer o SELECT que retorne:
•	Todos os participantes maiores que 18 anos;
•	Todos os participantes menores que 18 anos;
•	Todos os participantes com a idade entre 20 e 25 anos;
*/

-- Criando o Banco de dados

CREATE DATABASE DB_DIVERSOS;

-- Selecionando para uso

USE DB_DIVERSOS;

-- Criando a tabela

CREATE TABLE ESCOLA (
	ID_ALUNO BIGINT AUTO_INCREMENT,
    DATA_NASCIMENTO DATE NOT NULL,
    RG VARCHAR(12) NOT NULL,
    CPF VARCHAR(16) NOT NULL,
    NOME_MAE VARCHAR(30) NOT NULL,
    PRIMARY KEY(ID_ALUNO)    
);



-- Importante a tabela precisa ter 5 dados de alunos;

INSERT INTO ESCOLA(DATA_NASCIMENTO,RG,CPF,NOME_MAE) VALUES ("2001-06-29","50605194-8","434.341.038-21","Viviam Profeta Cavalcante");
INSERT INTO ESCOLA(DATA_NASCIMENTO,RG,CPF,NOME_MAE) VALUES ('1997-06-25',"50605194-8","434.341.038-21","Bruno Profeta Cavalcante");
INSERT INTO ESCOLA(DATA_NASCIMENTO,RG,CPF,NOME_MAE) VALUES ('2010-10-15',"50605194-8","434.341.038-21","Tiago");
INSERT INTO ESCOLA(DATA_NASCIMENTO,RG,CPF,NOME_MAE) VALUES ('2013-08-10',"50605194-8","434.341.038-21","Marcelo");
INSERT INTO ESCOLA(DATA_NASCIMENTO,RG,CPF,NOME_MAE) VALUES ('1994-01-20',"50605194-8","434.341.038-21","Camila");

-- •	Todos os participantes maiores que 18 anos;

SELECT * FROM ESCOLA WHERE YEAR(from_days(to_days(now()) - to_days(DATA_NASCIMENTO))) >=18;

-- Todos os participantes menores que 18 anos;

SELECT * FROM ESCOLA WHERE YEAR(from_days(to_days(now()) - to_days(DATA_NASCIMENTO))) < 18;

-- Todos os participantes com a idade entre 20 e 25 anos

SELECT * FROM ESCOLA WHERE YEAR(from_days(to_days(now()) - to_days(DATA_NASCIMENTO))) BETWEEN 20 AND 25 ;



