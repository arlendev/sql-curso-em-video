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
(nome, nascimento, sexo, peso, altura)
VALUE
('Creusa', '1920-12-30', 'F', '50.2', '1.65');

SELECT * FROM pessoas;