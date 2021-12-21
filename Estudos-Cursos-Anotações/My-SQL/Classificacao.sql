-- criando tabela para teste
use curso;
create table campeonato
(
 nometime varchar(30)not null,
 pontos int not null
 );

 -- populando tabela
insert into campeonato values ('Corinthians','53');
insert into campeonato values ('Grêmio','43');
insert into campeonato values ('Santos','41');
insert into campeonato values ('Palmeiras','40');
insert into campeonato values ('Flamengo','38');
insert into campeonato values ('Cruzeiro','37');
insert into campeonato values ('Botafogo','37');
insert into campeonato values ('Atlético-PR','34');
insert into campeonato values ('Vasco','31');
insert into campeonato values ('Atlético-MG','31');
insert into campeonato values ('Fluminense','31');
insert into campeonato values ('Sport','29');
insert into campeonato values ('Avaí','29');
insert into campeonato values ('Chapecoense','28');
insert into campeonato values ('Ponte Preta','28');
insert into campeonato values ('Bahia','27');
insert into campeonato values ('São Paulo','27');
insert into campeonato values ('Coritiba','27');
insert into campeonato values ('Vitória','26');
insert into campeonato values ('Atlético-GO','22');


-- criando classificao de campeonato
SET @posicao=0;
SELECT   @posicao := @posicao+1 AS posicao, nometime, pontos
FROM campeonato
ORDER BY pontos DESC;

-- trazendo o rank 
select
      @posicao := @posicao +1 as posicao,
      prequery.estado,
      prequery.qtd_cidades
   from
      ( select @posicao := 0 ) variavel,
      ( SELECT estado, count(cod_mun) qtd_cidades
           from senso
           where ano='2014'
           group by estado
           order by count(cod_mun) desc ) prequery;
           
-- script 163
-- rank geral e por estado
SET @prev := null;
SET @pos_geral := 0;
SET @pos_estado := 0;

SELECT 
@pos_geral := @pos_geral + 1 as posicao_geral,
IF(@prev <> estado, @pos_estado := 1, @pos_estado := @pos_estado + 1) 
AS posicao_estado, 
@prev := estado,
nome_mun,
populacao
FROM senso
ORDER BY estado,populacao desc


