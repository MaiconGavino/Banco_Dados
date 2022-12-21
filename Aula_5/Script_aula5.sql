--Questão 1 - Criar uma base de dados no Postgres com o nome de CINEMA e uma tabela de nome FILMES conforme exemplo abaixo.
CREATE DATABASE CINEMA

CREATE TABLE FILMES(
	ID			INTEGER,
	NOME		VARCHAR,
	CATEGORIA	VARCHAR,
	DURACAO		INTEGER,
	LANCAMENTO	DATE
)

select * from filmes 

--Questão 2 - Inserir apenas um registro na tabela FILMES, informando todos os atributos indicando a coluna ID = 6. 
insert into filmes values (6, 'clube da luta', 'ação', 139, '1999-10-29')

--Questão 3 - Inserir na tabela FILMES, todos os registros do exemplo abaixo.
insert into filmes values 
	(1, 'como eu era antes de você', 'drama', 110, '2016-06-16'),
	(2, 'para sempre', 'romance',104, '2012-06-07'),
	(3, 'arremessando alto', 'drama', 117, '2022-06-03'),
	(4, 'king richard: criando campõas', 'drama', 144, '2021-12-02'),
	(5, 'no ritmo do coração', 'drama', 111, '2021-09-23')
	
--Questão 4 - Deletar na tabela FILMES, apenas a linha com o ID = 6. 
delete from filmes where id =6

--Questão 5 - Adicionar uma coluna com nome de VERIFICAR do tipo booleano e atualizar os registros com categoria = drama como True na coluna VERIFICAR.
alter table filmes add column verificar boolean

update filmes set verificar = TRUE where categoria = 'drama'

--Questão 6 - Construa um SELECT que retorne os dados conforme imagem abaixo.
select * from filmes where lancamento < '2020-01-01'

--Questão 7 - Construa um SELECT que retorne os dados conforme imagem abaixo.
select * from filmes where categoria = 'drama'

--Questão 8 - Construa um SELECT que retorne os dados conforme imagem abaixo.
select * from filmes where categoria = 'romance'