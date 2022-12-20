-- Criação da base de dados Mercado;
CREATE DATABASE mercado;

-- Usando/selecionando a base de dados Mercado para manejo;
USE mercado;

-- Criando entidades e seus atributos para base de dados Mercado;
CREATE TABLE produto (
	id INT(4) AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    preco DOUBLE NOT NULL,
    fabricacao DATE NOT NULL,
    validade DATE NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE fatura (
	id INT(4) AUTO_INCREMENT,
    descricao MEDIUMTEXT NOT NULL,
    data_da_compra DATE NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE cliente (
	id INT(10) AUTO_INCREMENT,
	nome VARCHAR(50),
    sobrenome VARCHAR(50),
    cpf CHAR(11),
    PRIMARY KEY(id)
);

-- Inderindo Dados nas entidade criadas;
INSERT INTO produto (
	nome, preco, fabricacao, validade
) VALUES (
	"Feijão",
    7.80,
    "2022-03-12",
    "2023-09-22"
);

INSERT INTO produto (
	nome, preco, fabricacao, validade
) VALUES (
	"Arroz",
    22.95,
    "2022-05-17",
    "2024-01-13"
);

INSERT INTO fatura (
	descricao, data_da_compra
) VALUES (
	"Compra do mês",
    "2022-12-20"
);

INSERT INTO cliente (
	nome, sobrenome, cpf
) VALUES (
	"Jian",
    "Ferreira",
    "55544422231"
);

-- Adicionando uma coluna na tabela produto:
ALTER TABLE produto ADD COLUMN garantia INT;

-- Modificando uma coluna na tabela produto:
ALTER TABLE produto MODIFY COLUMN validade DATE;

-- Adicionando a coluna telefone em cliente;
ALTER TABLE cliente ADD COLUMN telefone CHAR(11);

-- Adicionado a coluna tipo_de_pagamento em fatura;
ALTER TABLE fatura ADD COLUMN tipo_de_pagamento VARCHAR(100);

-- Modificando a coluna cpf para cpf_cnpj na tabela cliente;
ALTER TABLE cliente RENAME COLUMN cpf TO cpf_cnpj;

-- Para deletar uma coluna:
-- ALTER TABLE produto DROP COLUMN garantia;

-- Consultando as tabalas produto, fatura e cliente;
SELECT * FROM produto;
SELECT * FROM fatura;
SELECT * FROM cliente;


