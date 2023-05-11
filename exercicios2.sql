SELECT @@version;

CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    funcao VARCHAR(150) NOT NULL,
      PRIMARY KEY (id)
      );

CREATE TABLE tb_personagens (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(300),
	nivel INT,
    habilidade VARCHAR(200) NOT NULL,
    defesa INT,
    ataque INT,
    id_classes BIGINT,
    PRIMARY KEY (id)
    );

ALTER TABLE tb_personagens ADD CONSTRAINT fk_id_classes FOREIGN KEY (id_classes) REFERENCES tb_classes (id);
    
INSERT INTO tb_classes (nome,funcao) VALUES ("phoenix","duelista");
INSERT INTO tb_classes (nome,funcao) VALUES ("fade","iniciadora");
INSERT INTO tb_classes (nome,funcao) VALUES ("cypher","controlador");
INSERT INTO tb_classes (nome,funcao) VALUES ("killjoy","sentinela");
INSERT INTO tb_classes (nome,funcao) VALUES ("supershock","eletrecidade");

INSERT INTO tb_personagens (nome,nivel,habilidade,defesa,ataque,id_classes) VALUES ("djalminha",180,"bang",1100,2100,1);
INSERT INTO tb_personagens (nome,nivel,habilidade,defesa,ataque,id_classes) VALUES ("ronaldo",190,"posicao",1200,2200,2);
INSERT INTO tb_personagens (nome,nivel,habilidade,defesa,ataque,id_classes) VALUES ("maradona",210,"controlador",1300,2300,3);
INSERT INTO tb_personagens (nome,nivel,habilidade,defesa,ataque,id_classes) VALUES ("monterey",250,"detonador",1400,2400,4);
INSERT INTO tb_personagens (nome,nivel,habilidade,defesa,ataque,id_classes) VALUES ("dantes",250,"detonador",1400,2400,5);
INSERT INTO tb_personagens (nome,nivel,habilidade,defesa,ataque,id_classes) VALUES ("gica",250,"detonador",1400,2400,4);
INSERT INTO tb_personagens (nome,nivel,habilidade,defesa,ataque,id_classes) VALUES ("floatizin",250,"detonador",1400,2400,3);
INSERT INTO tb_personagens (nome,nivel,habilidade,defesa,ataque,id_classes) VALUES ("monezin",250,"detonador",1400,2400,2);

SELECT * 
FROM tb_personagens
WHERE ataque > 2000 ;

SELECT * 
FROM tb_personagens
WHERE defesa 
BETWEEN 1000 AND 2000;

SELECT *
FROM tb_personagens
WHERE nome LIKE "m%";

SELECT * 
FROM tb_personagens
INNER JOIN tb_classes 
ON tb_classes.id = tb_personagens.id_classes;

SELECT * 
FROM tb_personagens
INNER JOIN tb_classes 
ON tb_classes.id = tb_personagens.id_classes
WHERE tb_classes.nome = "fade";

