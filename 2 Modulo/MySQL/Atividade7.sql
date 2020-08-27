/*Atividade 1

Crie um banco de dados para um serviço de um game Online , o nome do banco deverá ter o seguinte nome db_generation_game_online, onde, o sistema trabalhará com as informações dos personagens desse game. 

O sistema trabalhará com 2 tabelas tb_personagem e tb_classe.

siga  exatamente esse passo a passo:

Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos relevantes do Cargos para se trabalhar com o serviço desse  game Online.

Crie uma tabela tb_personagem  e utilizando a habilidade de abstração e determine 5 atributos relevantes dos personagems para se trabalhar com o serviço desse game Online (não esqueça de criar a foreign key de tb_classe nesta tabela).

Popule esta tabela classe com até 5 dados.

Popule esta tabela personagem com até 8 dados.

Faça um select que retorne os personagens com o poder de ataque maior do que 20.

Faça um select trazendo  os personagens com poder de defesa entre 10 e 20.

Faça um select  utilizando LIKE buscando os personagens com a letra C.

Faça um um select com Inner join entre  tabela classe e personagem.

Faça um select onde traga todos os personagem de uma classe específica (exemplo todos os personagens que são arqueiros).
*/

-- Criando Banco de Dados

CREATE DATABASE db_generation_game_online;

-- Selecionando o Banco de dados

USE db_generation_game_online;

/* Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 
atributos relevantes do Cargos para se trabalhar com o serviço desse  game Online.*/

CREATE TABLE TB_CLASSE (
	ID_CLASSE BIGINT AUTO_INCREMENT,
    NOME_CLASSE VARCHAR(50),
    PRIMARY KEY(ID_CLASSE)
);



/* Crie uma tabela tb_personagem  e utilizando a habilidade de abstração e
 determine 5 atributos relevantes dos personagems para se trabalhar com o serviço 
 desse game Online (não esqueça de criar a foreign key de tb_classe nesta tabela).*/
 
 CREATE TABLE TB_PERSONAGEM(
	ID_PERSONAGEM BIGINT AUTO_INCREMENT,
    NOME_PERSONAGEM VARCHAR(50) NOT NULL,
    ATAQUE_PERSONAGEM BIGINT(100) NOT NULL,
    DEFESA_PERSONAGEM BIGINT(100) NOT NULL,
    ID_CLASSE BIGINT NOT NULL,
    PRIMARY KEY(ID_PERSONAGEM),
    FOREIGN KEY(ID_CLASSE) REFERENCES TB_CLASSE(ID_CLASSE) 
 );
 
 -- Popule esta tabela classe com dados.
 
 INSERT INTO TB_CLASSE(NOME_CLASSE) VALUES ("Mago");
 INSERT INTO TB_CLASSE(NOME_CLASSE) VALUES ("Tanque");
 INSERT INTO TB_CLASSE(NOME_CLASSE) VALUES ("Atirador");
 
-- Popule esta tabela personagem com dados.

INSERT INTO TB_PERSONAGEM(NOME_PERSONAGEM,ATAQUE_PERSONAGEM,DEFESA_PERSONAGEM,ID_CLASSE) VALUES ("Ashe",50,30,1);
INSERT INTO TB_PERSONAGEM(NOME_PERSONAGEM,ATAQUE_PERSONAGEM,DEFESA_PERSONAGEM,ID_CLASSE) VALUES ("Garen",90,60,2);
INSERT INTO TB_PERSONAGEM(NOME_PERSONAGEM,ATAQUE_PERSONAGEM,DEFESA_PERSONAGEM,ID_CLASSE) VALUES ("Daryus",70,35,2);
INSERT INTO TB_PERSONAGEM(NOME_PERSONAGEM,ATAQUE_PERSONAGEM,DEFESA_PERSONAGEM,ID_CLASSE) VALUES ("Tristana",95,28,1);
INSERT INTO TB_PERSONAGEM(NOME_PERSONAGEM,ATAQUE_PERSONAGEM,DEFESA_PERSONAGEM,ID_CLASSE) VALUES ("Lux",80,30,3);
INSERT INTO TB_PERSONAGEM(NOME_PERSONAGEM,ATAQUE_PERSONAGEM,DEFESA_PERSONAGEM,ID_CLASSE) VALUES ("Annie",80,15,3);


-- Faça um select que retorne os personagens com o poder de ataque maior do que 20.

SELECT * FROM TB_PERSONAGEM WHERE ATAQUE_PERSONAGEM > 20 ORDER BY ATAQUE_PERSONAGEM DESC;

-- Faça um select trazendo  os personagens com poder de defesa entre 10 e 20.

SELECT * FROM TB_PERSONAGEM WHERE DEFESA_PERSONAGEM BETWEEN 10 AND 80 ORDER BY DEFESA_PERSONAGEM;

-- Faça um select  utilizando LIKE buscando os personagens com a letra C.

SELECT * FROM TB_PERSONAGEM WHERE NOME_PERSONAGEM LIKE "%C%";

-- Faça um um select com Inner join entre  tabela classe e personagem.

SELECT TB_PERSONAGEM.NOME_PERSONAGEM,TB_PERSONAGEM.ATAQUE_PERSONAGEM,TB_PERSONAGEM.DEFESA_PERSONAGEM,
TB_CLASSE.NOME_CLASSE FROM TB_PERSONAGEM INNER JOIN TB_CLASSE ON TB_PERSONAGEM.ID_CLASSE = TB_CLASSE.ID_CLASSE;

/* Faça um select onde traga todos os personagem de uma classe específica (exemplo todos os personagens 
que são arqueiros).*/

SELECT * FROM TB_PERSONAGEM INNER JOIN TB_CLASSE ON TB_PERSONAGEM.ID_CLASSE = TB_CLASSE.ID_CLASSE 
WHERE TB_CLASSE.NOME_CLASSE = "Atirador";


