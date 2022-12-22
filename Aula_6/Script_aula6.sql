select * from floresta f 

--Questão 1 - Construir uma consulta que apresente o nome dos municípios que tiverem área reflorestada maior que 200.000 ha.
select municipio from floresta where area_ha  > 200000

--Questão 2 - Construir uma consulta que apresente o nome dos municípios e a sigla dos estados que tiverem área reflorestada maior que 150.000 ha.
select municipio, estado_sigla from floresta f  where area_ha > 150000

--Questão 4 - Construir uma consulta que apresente nomes dos municípios e as espécies que tiverem área reflorestada maior que 30.000 ha no estado da Bahia.
select municipio, especie_florestal from floresta where area_ha > 30000 and estado_sigla  ='BA'

--Questão 5 - Construir uma view e uma view materializada com as informações da tabela original, depois comparar os tempos de execução das consultas.
--criando a view
create view vw_floresta as(
	select * from floresta f 
)
--consultando view
select * from vw_floresta

-- criando uma view materializada
create materialized view vw_mat_floresta as (
	select *
	from floresta
)
--consultando view materializada
select * from vw_mat_floresta 

EXPLAIN ANALYZE select * from vw_mat_floresta

EXPLAIN ANALYZE select * from vw_floresta
