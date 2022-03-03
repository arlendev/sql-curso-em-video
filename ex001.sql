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

INSERT INTO gafanhotos 
(nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES
('Janaína', '1987-11-12', 'F', '75.40', '1.66', 'EUA');

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

RENAME TABLE pessoas TO gafanhotos;

CREATE TABLE IF NOT EXISTS cursos (
nome VARCHAR(30) NOT NULL UNIQUE,
descricao TEXT,
carga INT UNSIGNED,
totaulas INT UNSIGNED,
ano YEAR DEFAULT '2022'
) DEFAULT CHARSET = utf8;

ALTER TABLE cursos
ADD COLUMN idcurso INT FIRST;

ALTER TABLE cursos
ADD PRIMARY KEY (idcurso);

SELECT * FROM cursos;

create table if not exists teste(
id int,
nome varchar(10),
idade int);

insert into teste values
('1', 'Pedro', '22'),
('2', 'Mria', '12'),
('3', 'Maricota', '77');

select * from teste;

drop table teste;

select * from gafanhotos;