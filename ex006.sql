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