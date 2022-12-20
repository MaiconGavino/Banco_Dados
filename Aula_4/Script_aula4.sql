--Questão 1 - Criar duas bases de dados no Postgres com os nomes de LETSCODE e LETSCODE_DEL.

create database LESTCODE

create database LETSCODE_DEL

--Questão 2 - Alterar o nome da base de dados no Postgres de LETSCODE para TURMA889.

alter database LETSCODE rename to TURMA889

--Questão 3 - Deletar a base de dados no Postgres com o nome de LETSCODE_DEL.

drop database LETSCODE_DEL

--Questão 4 - Criar uma tabela na base de dados TURMA889 com o nome de ALUNOS e colunas conforme imagem abaixo:
	--ID | Matrícula | Nome | Estado | Formação
user TURMA889

create table ALUNOS(
	ID_ALUNO 	INTEGER,
	MATRICULA	VARCHAR,
	NM_ALUNO	VARCHAR,
	ESTADO 		VARCHAR,
	FORMACAO	VARCHAR
)

--Questão 5 - Alterar o nome da coluna ESTADO para UF na tabela ALUNOS, na base de dados TURMA889.
alter table ALUNOS rename column ESTADO to UF
--Questão 6 - Incluir as colunas EMAIL e TELEFONE na tabela ALUNOS, na base de dados TURMA889.
alter table ALUNOS add column EMAIL VARCHAR
alter table ALUNOS add column TELEFONE VARCHAR
--Questão 7 - Alterar o tipo de dados da coluna EMAIL para VARCHAR com limite a 100 caracteres.
alter table ALUNOS alter column TELEFONE type VARCHAR(100)
--Questão 8 - Remover a coluna ID na tabela ALUNOS, na base de dados TURMA889.
alter table ALUNOS drop column ID_ALUNO
--Questão 9 - Remover a tabela ALUNOS, na base de dados TURMA889.
drop table ALUNOS
--Questão 10 - Qual a melhor coluna para ser a chave primária na tabela ALUNOS, a coluna ID ou a coluna MATRÍCULA? 
--A coluna ID, visto que, a matrícula do aluno pode sofre modificações em caso de troca de curso.

--Questão 11 - Ao criar uma nova base de dados no Postgres, o SGBD cria uma tabela padrão com nome PUBLIC.
--Verdadeiro

--Questão 12 - A hierarquia no banco de dados Postgres é dada pela ordem base de dados > schema > tabela.
--Falso

--Questão 13 - Para alterar colunas em tabelas, é preciso excluir a tabela e criar novamente com as alterações necessárias.
--Falso


--Questão 14 - Qual comando SQL é usado para criar uma nova tabela?
--CREATE TABLE

--Questão 15 - Qual comando SQL é usado para deletar uma base de dados?
--DROP DATABASE

--Questão 16 - O comando SQL ALTER TABLE é utilizado tanto para adicionar uma nova coluna, quanto para deletar uma coluna.
--Falso
