SELECT * FROM gafanhotos;

CREATE TABLE gafanhoto_assiste_curso (
	id INT NOT NULL AUTO_INCREMENT,
    DATA DATE,
    idgafanhoto INT,
    idcurso INT,
    PRIMARY KEY (id),
    FOREIGN KEY (idgafanhoto) REFERENCES gafanhotos(id),
    FOREIGN KEY (idcurso) REFERENCES cursos(idcurso)
) DEFAULT CHARSET = utf8;

SELECT * FROM gafanhoto_assiste_curso;

INSERT INTO gafanhoto_assiste_curso VALUES
(DEFAULT, '2014-03-01', '1', '2');

SELECT g.nome, c.nome FROM gafanhotos AS g
JOIN gafanhoto_assiste_curso AS a
ON g.id = a.idgafanhoto
JOIN cursos AS c
ON c.idcurso = a.idcurso
ORDER BY g.nome;

SELECT gafanhotos.nome, cursos.nome, cursos.ano 
FROM gafanhotos INNER JOIN cursos
ON cursos.idcurso = gafanhotos.cursopreferido
ORDER BY gafanhotos.nome;