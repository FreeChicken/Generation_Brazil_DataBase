#Banco de dados para ecommerce

CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
quantidade BIGINT NOT NULL,
nome VARCHAR(255) NOT NULL,
tamanho VARCHAR(255) NOT NULL,
marca VARCHAR(255) NOT NULL,
preco DECIMAL (10,2) NOT NULL,
PRIMARY KEY (id)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos (quantidade, nome, tamanho, marca, preco)
VALUES 
(100, "Detergente", "500ml", "Limpao", 2.99),
(14, "Airfryer", "grande", "Erfrei", 789.25),
(13, "Refrigerante", "2l", "Guarana Jesus", 8.59),
(23, "Sal do Paquistao", "1kg", "Saguadin", 3.19),
(102, "Pasta de dente", "80g", "Mr White", 4.59),
(70, "Feijao", "1kg", "Delicia", 7.59),
(68, "Arroz", "1kg", "Soltin", 9.59),
(40, "Margarina", "500g", "Good4Health", 1.59),
(10, "Churrasqueira de controle remoto", "grande", "Oloco Meu", 899.17),
(11, "Picanha a vacuo", "3kg", "Boi Bom", 356.59);

SELECT * FROM tb_produtos;

#Retorna precos maiores que R$ 500,00 
SELECT * FROM tb_produtos
WHERE preco > 500;


#Retorna precos menores que R$ 500,00 
SELECT * FROM tb_produtos
WHERE preco < 500;


#Atualizar registro (desconto)
UPDATE tb_produtos
SET preco = 555.55 
WHERE id = 9;  

SELECT * FROM tb_produtos;
