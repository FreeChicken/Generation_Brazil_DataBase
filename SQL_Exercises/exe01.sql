#Banco de dados para RH

CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE tb_colaboradores (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL,
cargo VARCHAR(255) NOT NULL,
salario DECIMAL (10,2) NOT NULL,
PRIMARY KEY (id)
);

SELECT * FROM tb_colaboradores;

INSERT INTO tb_colaboradores (nome, email, cargo, salario)
VALUES 
("Batistinha", "batistinha.suporte@technologia.com", "suporte tecnico 1", 2500.00),
("Geraldao", "geraldao.rh@technologia.com", "analista de rh 1", 3200.00),
("Edson", "edson.estagiario@technologia.com", "estagiario de ti", 520.00),
("Marilda", "marilda.ceo@technologia.com", "ceo", 95000.00),
("Hector", "hector.facilities@technologia.com", "supervisor de manutencao 1", 3500.00),
("Hita", "hita.financeiro@technologia.com", "analista financeiro 2", 4500.00),
("Paulinha", "paulinha.marketing@technologia.com", "cordenadora de marketing", 9500.00),
("Everaldo", "everaldo.facilities@technologia.com", "porteiro chefe", 3400.00);

SELECT * FROM tb_colaboradores;

#Retorna salarios maiores que R$ 2000,00 
SELECT * FROM tb_colaboradores
WHERE salario > 2000;


#Retorna salarios menores que R$ 2000,00 
SELECT * FROM tb_colaboradores
WHERE salario < 2000;


#Atualizar registro (promoção)
UPDATE tb_colaboradores
SET cargo = "suporte tecnico 2", salario = 3000 
WHERE id = 1;  

SELECT * FROM tb_colaboradores;

