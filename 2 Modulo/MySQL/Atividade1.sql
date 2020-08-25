/* Atividade 1

Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos funcionários desta empresa. 

Crie uma tabela de funcionários e utilizando a habilidade de abstração e determine 5 atributos relevantes dos funcionários para se trabalhar com o serviço deste RH.

Popule esta tabela com até 15 dados;

Faça um select que retorne os funcionários com o salário maior do que 2000.

Faça um select que retorne os funcionários com o salário menor do que 2000.

Ao término atualize um dado desta tabela através de uma query de atualização.

salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta atividade. */

-- Criando o Banco

CREATE DATABASE DB_RH;

-- Selecionando o Banco DB_RH

USE DB_RH;

-- Criando a tabela funcionarios

CREATE TABLE FUNCIONARIOS (
	ID_FUNCIONARIO BIGINT AUTO_INCREMENT,
    NOME VARCHAR(30) NOT NULL,
    RG VARCHAR(10) NOT NULL,
    SEXO VARCHAR(1) NOT NULL,
    CPF VARCHAR(14) NOT NULL,
    SALARIO DECIMAL(10,2),
    PRIMARY KEY(ID_FUNCIONARIO)
);

-- Populando a Tabela

INSERT INTO FUNCIONARIOS(NOME,RG,SEXO,CPF,SALARIO) VALUES("Bruno Profeta Cavalcante","50605194-8","M","434.341.038-21",2145);
INSERT INTO FUNCIONARIOS(NOME,RG,SEXO,CPF,SALARIO) VALUES("Viviam Profeta Cavalcante","30201194-3","F","257.830.568-47",4000);
INSERT INTO FUNCIONARIOS(NOME,RG,SEXO,CPF,SALARIO) VALUES("Camila","30201194-3","F","257.830.568-47",3000);
INSERT INTO FUNCIONARIOS(NOME,RG,SEXO,CPF,SALARIO) VALUES("Luis","30201194-3","M","257.830.568-47",10000);
INSERT INTO FUNCIONARIOS(NOME,RG,SEXO,CPF,SALARIO) VALUES("Marcelo","30201194-3","M","257.830.568-47",8000);
INSERT INTO FUNCIONARIOS(NOME,RG,SEXO,CPF,SALARIO) VALUES("Andre","30201194-3","M","257.830.568-47",2000);
INSERT INTO FUNCIONARIOS(NOME,RG,SEXO,CPF,SALARIO) VALUES("Evilson","30201194-3","M","257.830.568-47",4000);
INSERT INTO FUNCIONARIOS(NOME,RG,SEXO,CPF,SALARIO) VALUES("Adriano","30201194-3","M","257.830.568-47",5000);
INSERT INTO FUNCIONARIOS(NOME,RG,SEXO,CPF,SALARIO) VALUES("Joilton","30201194-3","M","257.830.568-47",1000);
INSERT INTO FUNCIONARIOS(NOME,RG,SEXO,CPF,SALARIO) VALUES("Geovana","30201194-3","F","257.830.568-47",1500);


-- Faça um select que retorne os funcionários com o salário maior do que 2000.

SELECT * FROM FUNCIONARIOS WHERE SALARIO > 2000;

-- Faça um select que retorne os funcionários com o salário menor do que 2000.

SELECT * FROM FUNCIONARIOS WHERE SALARIO < 2000;

-- Ao término atualize um dado desta tabela através de uma query de atualização.

UPDATE FUNCIONARIOS SET NOME = "Beatriz" WHERE ID_FUNCIONARIO = 10;







