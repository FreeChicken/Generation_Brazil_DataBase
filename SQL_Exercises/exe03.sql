#Banco de dados para escola

CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_notas (
id BIGINT AUTO_INCREMENT,
turma VARCHAR(255) NOT NULL,
nome VARCHAR(255) NOT NULL,
idade BIGINT NOT NULL,
mediaNota DECIMAL (3,1) NOT NULL,
PRIMARY KEY (id)
);

SELECT * FROM tb_notas;

INSERT INTO tb_notas (turma, nome, idade, mediaNota)
VALUES 
("5C", "Andrezinho", 12, 4.9),
("5C", "Marieta", 11, 8.5),
("7B", "Marcao", 18, 1.00),
("6B", "Guilherme", 12, 7),
("7B", "Joaquina", 13, 10),
("8A", "Aderlan", 14, 6.80),
("8A", "Fernadenha", 16, 7.50),
("6B", "Ronaldo", 16, 0);


SELECT * FROM tb_notas;

#Retorna notas maiores que 7.0 
SELECT * FROM tb_notas
WHERE mediaNota > 7;


#Retorna notas menores que 7.0
SELECT * FROM tb_notas
WHERE mediaNota < 7;


#Atualizar registro (correcao de nota)
UPDATE tb_notas
SET mediaNota = -5
WHERE id = 8;  

SELECT * FROM tb_notas;
