/*
Atividade 3

Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos alunos deste registro dessa escola. 

Crie uma tabela alunos/a e utilizando a habilidade de abstração e determine 5 atributos relevantes dos alunos/a para se trabalhar com o serviço dessa escola.

Popule esta tabela com até 10 dados;

Faça um select que retorne o/as alunos/a com a nota maior do que 7.

Faça um select que retorne o/as alunos/a com a nota menor do que 7.

Ao término atualize um dado desta tabela através de uma query de atualização.

salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta atividade.
*/

-- Criando o Banco de dados

CREATE DATABASE ESCOLA;

-- Selecionando para usar o Banco de dados

USE ESCOLA;

-- Criando a tabela 

CREATE TABLE ALUNOS (
	ID_ALUNO BIGINT AUTO_INCREMENT,
    NOME VARCHAR(30),
    RG VARCHAR(11),
    CPF VARCHAR(14),
    NOME_MAE VARCHAR(30),
    NOTA INT(2),
    PRIMARY KEY(ID_ALUNO)
);

drop table alunos;
-- Popule esta tabela com até 10 dados;

INSERT INTO ALUNOS(NOME,RG,CPF,NOME_MAE,NOTA) VALUES ("Bruno","50605194-8","434.341.038-21","Viviam",8);
INSERT INTO ALUNOS(NOME,RG,CPF,NOME_MAE,NOTA) VALUES ("Viviam","50605194-8","434.341.038-21","Ana",1);
INSERT INTO ALUNOS(NOME,RG,CPF,NOME_MAE,NOTA) VALUES ("Max","50605194-8","434.341.038-21","Beth",2);
INSERT INTO ALUNOS(NOME,RG,CPF,NOME_MAE,NOTA) VALUES ("Clebio","50605194-8","434.341.038-21","Bia",3);
INSERT INTO ALUNOS(NOME,RG,CPF,NOME_MAE,NOTA) VALUES ("Alex","50605194-8","434.341.038-21","Luiza",4);
INSERT INTO ALUNOS(NOME,RG,CPF,NOME_MAE,NOTA) VALUES ("Agnes","50605194-8","434.341.038-21","Brenda",5);
INSERT INTO ALUNOS(NOME,RG,CPF,NOME_MAE,NOTA) VALUES ("Beatriz","50605194-8","434.341.038-21","Estefany",6);
INSERT INTO ALUNOS(NOME,RG,CPF,NOME_MAE,NOTA) VALUES ("Rafaella","50605194-8","434.341.038-21","Patricia",7);
INSERT INTO ALUNOS(NOME,RG,CPF,NOME_MAE,NOTA) VALUES ("Camila","50605194-8","434.341.038-21","Rebeca",9);
INSERT INTO ALUNOS(NOME,RG,CPF,NOME_MAE,NOTA) VALUES ("Marcelo","50605194-8","434.341.038-21","Isabella",10);
INSERT INTO ALUNOS(NOME,RG,CPF,NOME_MAE,NOTA) VALUES ("Luis","50605194-8","434.341.038-21","Roberta",8.5);

-- Faça um select que retorne o/as alunos/a com a nota maior do que 7.

SELECT * FROM ALUNOS WHERE NOTA >= 7;

-- Faça um select que retorne o/as alunos/a com a nota menor do que 7.

SELECT * FROM ALUNOS WHERE NOTA < 7;

-- Ao término atualize um dado desta tabela através de uma query de atualização.

UPDATE ALUNOS SET NOTA = 5 WHERE ID_ALUNO = 2;



