SELECT * FROM gafanhotos;

# 1) uma lista com as profissoes dos gafanhatos e seus respectivos quantitativos.
SELECT profissao, COUNT(*) FROM gafanhotos
GROUP BY profissao;

#  2) Quantos gafanhotos homens e mulheres nasceram após 01/jan/2005 ?
SELECT sexo, COUNT(*) FROM gafanhotos
WHERE nascimento > '2005-01-01'
GROUP BY sexo;

/* 3) Lista com gafanhotos que nasceram fora do BRASIL, mostrando o país de origem
e o total de pessoas nascidas lá. Só nos interessam os países que tiveram mais de 3
gafanhotos com essa nacionalidade. */
SELECT nacionalidade, COUNT(*) FROM gafanhotos
WHERE nacionalidade != 'Brasil'
GROUP BY nacionalidade
HAVING COUNT(*) > '3';

/* 4) Uma lista agrupada pela altura dos gafanhotos ,mostrando quantas pessoas 
pesam mais de 100kg e que estao acima da media da altura de todos os gafanhotoso.*/
SELECT altura, COUNT(*) FROM gafanhotos
WHERE peso > '100' AND altura > (SELECT AVG(altura) FROM gafanhotos)
GROUP BY altura
ORDER BY altura;