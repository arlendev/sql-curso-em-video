CREATE DATABASE cadastro
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

CREATE TABLE pessoas (
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(30) NOT NULL,
nascimento DATE,
sexo enum('M', 'F'),
peso DECIMAL(5,2),
altura DECIMAL(3,2),
nacionalidade VARCHAR(20) DEFAULT 'Brasil',
PRIMARY KEY (id)
) DEFAULT CHARSET = utf8;

INSERT INTO pessoas 
(nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES
('Adalgiza', '1930-11-02', 'F', '63.2', '1.75', 'Irlanda');

SELECT * FROM pessoas;

DELETE FROM pessoas
WHERE id = 5;

DESC pessoas;

ALTER TABLE pessoas
ADD COLUMN profissao VARCHAR(10);

ALTER TABLE pessoas
DROP COLUMN profissao;

ALTER TABLE pessoas
ADD COLUMN profissao VARCHAR(10) AFTER nome;