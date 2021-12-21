

-- IF
-- Retorna um de dois valores, dependendo de a expressão booliana 
-- ser avaliada como true ou false no  


 set @a:=45;
 set @b:=40; 
 SELECT IF(@a>@b,'TRUE','FALSE')as Resultado;


 set @a:=45;
 set @b:=40; 
 SELECT IF(@a>@b,'Maior','Menor')as Resultado;



 set @a:=45;
 set @b:=40; 
 SELECT IF(@a<@b,'Sim','Não')as Resultado;


-- IFNULL
-- NAO CONFUNDIR NULO COM VAZIO
SELECT IFNULL(1,0) retorno;


SELECT IFNULL(NULL,0) retorno;

-- NAO CONFUNDIR NULO COM VAZIO
SELECT IFNULL('',0) retorno;


use world;
select name,indepyear,IFNULL(indepyear,'sem indep') 
from country 
 


select  NULLIF(100,100) retorno;


SELECT NULLIF(100,10) retorno;


SELECT NULLIF('A',10) retorno;

SELECT NULLIF('A','B') retorno;

SELECT NULLIF('A','A') retorno;


