
-- covertendo encoding
	SET @palavra = BINARY 'São Paulo';
		SELECT LOWER(@palavra)retorno1, 
				 LOWER(CONVERT(@palavra USING latin1))retorno2;


-- covertendo encoding
SET @palavra = BINARY 'São Paulo';
SELECT LOWER(@palavra)retorno1, 
       LOWER(CONVERT(@palavra USING utf8))retorno2,
		 LOWER(CONVERT(@palavra USING ascii))retorno3,
		 CONVERT(@palavra USING utf8)retorno4;


-- convertendo datas com cast
select now();
select cast(now()as date);
select cast(now()as time);
select cast(now()as char);
select cast(now()as char(7));
select cast(now()as char(10));


-- convertendo datas com convert
select now();
select convert(now(), date);
select convert(now(), time);
select convert(now(), char);
select convert(now(), char(7));
select convert(now(), char(10));


-- convertendo em binario com cast e convert
select 'mysql' expressao,
       cast('mysql' as binary) cast1,
       convert('mysql' using binary) convert1

--  convertendo int em decimal
select @expr1:=1 valor,
	   cast(@expr1 as decimal(10,2)) cast1,
	   convert(@expr1,decimal(10,3)) as convert1,
       cast(convert(@expr1,decimal(10,3)) as SIGNED integer) as convert2;
       

-- script  cast e convert mais operação
SELECT (CAST(10 AS DECIMAL)) + 10 as resultado; # resulta em: 20

SELECT CONVERT(10,DECIMAL(10,2)) + 10 as resultado; # resulta em: 20



