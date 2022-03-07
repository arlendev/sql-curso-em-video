# 1) Uma lista com o nome de todas as gafanhotas
SELECT nome FROM gafanhotos
WHERE sexo = 'F';

# 2) Uma lista com os dados de todos aqueles que nasceram entre 1/jan/2000 e 31/dez/2015
SELECT * FROM gafanhotos
WHERE nascimento BETWEEN '2000-01-01' AND '2015-12-31';

# 3) Uma lista com o nome de todos os homens que trabalham como programadores.
SELECT nome FROM gafanhotos
WHERE profissao = 'programador' AND sexo = 'M';

# 4) Uma lista com os dados de todas as mulheres que nasceram no Brasil e que têm seu nome iniciando com a letra J.
SELECT * FROM gafanhotos
WHERE sexo = 'F' AND nacionalidade = 'Brasil' AND nome LIKE 'J%';

# 5) Uma lista com o nome e nacionalidade de todos os homens que têm Silva no nome, não nasceram no Brasil e pesam menos de 100 Kg.
SELECT nome, nacionalidade FROM gafanhotos
WHERE sexo = 'M' AND nome LIKE '%SILVA%' AND nacionalidade != 'Brasil' AND peso < '100';

# 6) Qual é a maior altura entre gafanhotos Homens que moram no Brasil?
SELECT MAX(altura) FROM gafanhotos
WHERE sexo = 'M' AND nacionalidade = 'Brasil';

# 7) Qual é a média de peso dos gafanhotos cadastrados?
SELECT AVG(peso) FROM gafanhotos;

# 8) Qual é o menor peso entre os gafanhotos Mulheres que nasceram fora do Brasil e entre 01/Jan/1990 e 31/Dez/2000?
SELECT MIN(peso) FROM gafanhotos
WHERE sexo = 'M' AND nacionalidade != 'Brasil' AND nascimento BETWEEN '1990-01-01' AND '2000-12-31'; 

# 9) Quantas gafanhotos Mulheres tem mais de 1.90cm de altura?
SELECT COUNT(nome) FROM gafanhotos
WHERE sexo = 'M' AND altura > '1.90';

SELECT * FROM gafanhotos;

