--1 
SELECT
	Nome, 
	Ano
FROM Filmes

--2
SELECT 
	Nome,
	Ano
FROM Filmes 
ORDER BY Ano

--3
SELECT
	Nome,
	Ano,
	Duracao FROM Filmes
WHERE Nome = 'de volta para o futuro'

--4
SELECT 
	Nome,
	Ano,
	Duracao FROM Filmes
WHERE Ano = 1997

--5
SELECT 
	Nome,
	Ano,
	Duracao FROM Filmes
WHERE Ano >2000

--6
SELECT
	Nome,
	Ano,
	Duracao FROM Filmes
WHERE Duracao >100 and Duracao < 150 ORDER BY Duracao

--7
select ano, count(ano) as quantidade from Filmes group by ano order by quantidade desc

--8
SELECT
	PrimeiroNome, UltimoNome, Genero
FROM Atores 
WHERE UPPER(Genero)='M'

--9
SELECT
	PrimeiroNome, UltimoNome, Genero
FROM Atores 
WHERE UPPER(Genero)='F'
ORDER BY PrimeiroNome

--10
SELECT
	a.Nome,
	c.Genero
FROM Filmes a INNER JOIN FilmesGenero b ON a.Id = b.IdFilme
INNER JOIN Generos c ON b.IdGenero = c.Id

--11
SELECT 
	a.Nome,
	c.Genero FROM Filmes a INNER JOIN FilmesGenero b ON a.Id = b.IdFIlme
INNER JOIN Generos c ON b.IdGenero = c.Id
WHERE LOWER(c.Genero) = 'mistério'

--12
SELECT 
	a.Nome,
	c.PrimeiroNome,
	c.UltimoNome,
	b.Papel
FROM Filmes a INNER JOIN ElencoFilme b ON a.Id = b.IdFilme
INNER JOIN Atores c ON b.IdAtor = c.Id




























