CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
classe VARCHAR(255) NOT NULL,
raca VARCHAR(255) NOT NULL
);

INSERT INTO  tb_classes (classe, raca)
VALUES
("Arqueiro", "Humano"),
("Arqueiro", "Elfo"),
("Arqueiro", "Criatura"),
("Guerreiro", "Humano"),
("Guerreiro", "Elfo"),
("Guerreiro", "Criatura"),
("Mago", "Humano"),
("Mago", "Elfo"),
("Mago", "Criatura"),
("Ladino", "Humano"),
("Ladino", "Elfo"),
("Ladino", "Criatura");

CREATE TABLE tb_personagens (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
poderAtq BIGINT NOT NULL,
poderDef BIGINT NOT NULL,
tipoCorpo VARCHAR(255) NOT NULL,
classeId BIGINT,
racaId BIGINT,
FOREIGN KEY (classeId) REFERENCES  tb_classes(id),
FOREIGN KEY (racaId) REFERENCES  tb_classes(id) 
); 

INSERT INTO  tb_personagens (nome, poderAtq, poderDef, tipoCorpo, classeId, racaId)
VALUES
("Xonas", 2000, 1500, "a", 1, 1),
("Ethan", 4000, 1500, "a", 2, 2),
("Calliope", 5500, 2500, "b", 7, 7),
("Groot", 550, 8000, "c", 6, 6),
("Alvo Doubledoor", 6000, 500, "a", 7, 7),
("Klaiton", 15000, 10000, "a", 4, 4),
("Ezio", 1000, 500, "a", 10, 10),
("Jonas", 2000, 1500, "a", 11, 11);

SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

#Retorna personagens com poder de ataque maior que 2000 
SELECT * FROM tb_personagens
WHERE poderAtq > 2000;

#Retorna personagens com poder de defesa entre 1000 e 2000 
SELECT * FROM tb_personagens
WHERE poderDef BETWEEN 1000 AND 2000;

#Retorna personagens com nome com letra c 
SELECT * FROM tb_personagens
WHERE nome LIKE '%c%';

#Retorna dados de ambas tabelas
SELECT ps.id, ps.nome, ps.poderAtq, poderDef, ps.tipoCorpo, cl.classe AS classe, cl.raca AS raca
FROM tb_personagens ps
INNER JOIN tb_classes cl
ON ps.classeId = cl.id AND ps.racaId = cl.id;

#Retorna dados de ambas tabelas apenas com a classe selecionada em "WHERE"
SELECT ps.id, ps.nome, ps.poderAtq, poderDef, ps.tipoCorpo, cl.classe AS classe, cl.raca AS raca
FROM tb_personagens ps
INNER JOIN tb_classes cl
ON ps.classeId = cl.id AND ps.racaId = cl.id
WHERE cl.classe = "Arqueiro";
