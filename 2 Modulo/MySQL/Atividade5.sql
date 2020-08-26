/*
2.	Uma tabela que represente um petshop, contendo: 
•	ID do animal;
•	Peso do animal;
•	+ 5 informações que você considera importante;

*Importante a tabela também precisa ter 5 dados;

Para essa tabela considere fazer o SELECT que retorne:
•	Todos os animais que pesam mais de  10 kilos;
•	Todos os animais que pesam menos de 10 kilos;
•	Todos os animais que pesam entre 10 a 30 kilos;

*/

-- Selecionando o Banco

USE DB_DIVERSOS;

-- Criando tabela

CREATE TABLE PETSHOP (
	ID_ANIMAL BIGINT AUTO_INCREMENT,
    NOME VARCHAR(20) NOT NULL,
    PESO DECIMAL(4,2) NOT NULL,
    NOME_DONO VARCHAR(30) NOT NULL,
    CPF_DONO VARCHAR(16) NOT NULL,
    PRIMARY KEY(ID_ANIMAL)    
);

-- Importante a tabela também precisa ter 5 dados;

INSERT INTO PETSHOP(NOME,PESO,NOME_DONO,CPF_DONO) VALUES ("BoB",40.50,"Bruno Profeta","434.341.038-21");
INSERT INTO PETSHOP(NOME,PESO,NOME_DONO,CPF_DONO) VALUES ("Marley",20.50,"Bruno Profeta","434.341.038-21");
INSERT INTO PETSHOP(NOME,PESO,NOME_DONO,CPF_DONO) VALUES ("Bela",8,"Bruno Profeta","434.341.038-21");
INSERT INTO PETSHOP(NOME,PESO,NOME_DONO,CPF_DONO) VALUES ("Meg",3,"Bruno Profeta","434.341.038-21");
INSERT INTO PETSHOP(NOME,PESO,NOME_DONO,CPF_DONO) VALUES ("Jack",17,"Bruno Profeta","434.341.038-21");

-- Todos os animais que pesam mais de  10 kilos;

SELECT * FROM PETSHOP WHERE PESO > 10;

-- Todos os animais que pesam menos de 10 kilos;

SELECT * FROM PETSHOP WHERE PESO <= 10;

-- Todos os animais que pesam entre 10 a 30 kilos;

SELECT * FROM PETSHOP WHERE PESO BETWEEN 10 AND 30;


