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

CREATE TABLE IF NOT EXISTS teste(
id INT,
nome VARCHAR(10),
idade INT);

INSERT INTO teste VALUES
('1', 'Pedro', '22'),
('2', 'Mria', '12'),
('3', 'Maricota', '77');

SELECT * FROM teste;

DROP TABLE teste;

INSERT INTO gafanhotos 
(nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES
('Janaína', '1987-11-12', 'F', '75.40', '1.66', 'EUA');

SELECT * FROM gafanhotos;

INSERT INTO cursos VALUES
 ('1','HTML4','Curso de HTML5','40','37','2014'),
 ('2','Algoritimos','Logica de Programação','20','8','2014'),
 ('3','Photoshop','Aulas de Photoshop CC','9','20','2014'),
 ('4','PGP','PHP para Iniciantes','33','40','2010'),
 ('5','Jarva','Intro ao Java','22','10','2000'),
 ('6','MySQL','Curso MySQL','21','15','2016'),
 ('7','World','Word Completo','40','30','2018'),
 ('8','Sapateado','Dança Rítimica','14','30','2018'),
 ('9','Cozinha Árabe','Aprenda a fazer Kibe','40','30','2018'),
 ('10','YouTuber','Gerar Polêmicas e Ganhar Inscritos','5','2','2010');
 
 SELECT * FROM cursos;
 
 UPDATE cursos
 SET ano = '2018', carga = '30'
 WHERE ano = '2050';
 
 DELETE FROM cursos
 WHERE idcurso = 10;
 
 

