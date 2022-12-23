-- Criando a base de dados cadastro;
CREATE DATABASE cadastro;
USE cadastro;

-- Criando a tabela pessoas;
CREATE TABLE pessoas(
	id INT(5) AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    rg CHAR(7),
    cpf CHAR(11) UNIQUE,
    limite INT
);

-- Inserindo itens na tabela pessoas;
INSERT INTO cadastro.pessoas (nome, rg, cpf, limite) VALUES ("Jian Ferreira","2255997","55544488877",5000);
INSERT INTO cadastro.pessoas (nome, rg, cpf, limite) VALUES ("Benjamin", "5566997", "88855544477", 2000);
INSERT INTO cadastro.pessoas (nome, rg, cpf, limite) VALUES ("Matheus", "3366547", "95487523622", 4000);
INSERT INTO cadastro.pessoas (nome, rg, cpf, limite) VALUES ("Leandro", "5698745", "65587425666", 4500);
INSERT INTO cadastro.pessoas (nome, rg, cpf, limite) VALUES ("Messi", "8522664", "88875522232", 100000);
INSERT INTO cadastro.pessoas (nome, rg, cpf, limite) VALUES ("Joaquim", "8855447", "99966655444", 50000);
INSERT INTO cadastro.pessoas (nome, rg, cpf, limite) VALUES ("Maria", "3322114", "02255544478", 2000);

-- Modificando a coluna rg e limite da tabela pessoas;
ALTER TABLE pessoas MODIFY COLUMN rg CHAR(7) UNIQUE;
ALTER TABLE pessoas MODIFY COLUMN limite INT(10);

-- Atualizando as colunas sobrenome de Jian, Benjamin e Leandro;
UPDATE pessoas SET sobrenome = "Ferreira" WHERE nome = "Jian Ferreira";
UPDATE pessoas SET sobrenome = "Mendes" WHERE nome = "Benjamin";
UPDATE pessoas SET sobrenome = "Borges" WHERE nome = "Leandro";

-- Deletando registros que tem seu limite MAIOR que 50.000;
DELETE FROM pessoas WHERE limite > 50000;

-- Consultar tabela;;
SELECT * FROM pessoas;