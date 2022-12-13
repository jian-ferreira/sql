-- Exemplos básico de comandos de gerenciamento de base de dados
-- Loja Metropolitana
CREATE DATABASE loja_metropolitana;
USE loja_metropolitana;
CREATE TABLE funcionarios(
	id INT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(20) NOT NULL,
    sobrenome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) NOT NULL UNIQUE,
    PRIMARY KEY(id)
);
SHOW DATABASES;

-- Podemos excluir uma base de dados utilizando o comando DROP DATABASE <nome da base de dados>;
-- Comando do terminal para exportação do arquivo sql:
-- mysqldump -h localhost -u root -p loja_metropolitana > loja_metropolitana.sql