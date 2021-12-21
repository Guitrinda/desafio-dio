-- https://dev.mysql.com/doc/refman/5.7/en/string-functions.html#function_ascii

-- ASCII Exemplo

	select ASCII('SQL')as retorno;
	select ASCII('S')as retorno;
	select ASCII('Q')as retorno;
	select ASCII('L')as retorno;


-- LTRIM
-- Retorna uma expressão de caractere depois de remover espaços em branco à esquerda

	SET @frase_para_ltrim:='     Cinco espaços no inicio.';
	SELECT concat('Texto sem espaço:',Ltrim(@frase_para_ltrim)) as retorno
    union all
	SELECT concat('Texto Com espaço:',@frase_para_ltrim);



-- RTRIM
 	SET @frase_para_rtrim:='Cinco espaços no inicio.     ';
	SELECT concat(rtrim(@frase_para_rtrim),'Texto sem espaço:') as retorno
    union all
	SELECT concat(@frase_para_rtrim,'Texto Com espaço:');


-- TRIM
 	SET @frase_para_trim:='     Cinco espaços no inicio.     ';
	SELECT concat('Antes sem espaço:',trim(@frase_para_trim),'Depois sem espaço:') as retorno
    union all
	SELECT concat('Antes sem espaço:',@frase_para_trim,'Depois sem espaço:');


-- STRCMP RETORNA 0 PARA IGUAL, -1 SE O PRIMEIRO ARGUMENTO MENOR QUE SEGUNDO
-- 1 OUTROS
SELECT STRCMP('SQL', 'SQL2')retorno;
SELECT STRCMP('MYSQL', 'MY')retorno;
SELECT STRCMP('SQL', 'SQL')retorno;


-- CONCAT
-- CONCATENAS VALORES
SELECT CONCAT('My', 'S', 'QL') retorno;


/*Retorna uma cadeia de caracteres que é o resultado da concatenação de dois ou mais valores*/

SELECT Concat('Ola ',current_user(),' Seu Saldo é R$',
			   11.00,
			   ' em ',
               day(NOW()),'/',
			   month(NOW()),'/',
               year(NOW())) AS Resultado;
               

-- CONCATENA E IMPRIMO SEPARADOR SELECIONADO 
SELECT concat('Bem-vindo! ',CONCAT_WS(',','Rosa','Andre'))retorno;

SELECT concat('Bem-vindo! ',CONCAT_WS('|','Rosa','Andre'))retorno;



use sakila;

select concat_ws('|',actor_id,first_name,last_name)retorno from actor;


-- REPLACE

-- REPLACE
/*Substitui todas as ocorrências de um valor da cadeia de caracteres 
especificado por outro valor de cadeia de caracteres*/
-- O exemplo a seguir substitui a cadeia de caracteres .
	
    SET @palavra:='bala';
	SELECT @palavra de,
		Replace(@palavra,'ba','mo') para;


-- O exemplo a seguir substitui a cadeia de caracteres cde em teste por producao.
SELECT 'Isto é teste' de,
		Replace('Isto é teste','teste','producao')para;


-- REPLACE NO SELECT
	use WORLD;
    SELECT NAME,CONTINENT,
    REPLACE(CONTINENT,'South America','America do Sul') trocado
    FROM COUNTRY;


-- Exemplo de Update usando replace.
 use curso;
CREATE TABLE pessoas
	(nome VARCHAR(30)
	);
-- inserindo registros
	INSERT INTO pessoas VALUES('José');
	INSERT INTO pessoas VALUES('André');
	INSERT INTO pessoas VALUES('Helem');
-- verificando registros
select * from pessoas;


update pessoas set nome=replace(nome,'é','e');

-- verifincando
select* from pessoas;


-- LPAD
-- Repete um valor da cadeia de caracteres um número especificado de vezes A ESQUERDA
use curso;

CREATE TABLE tst
	(c1 VARCHAR(3),
     c2 CHAR(3));

INSERT INTO tst VALUES ('2','2');
INSERT INTO tst VALUES ('37','37');
INSERT INTO tst VALUES ('597','597');
-- verificando dados

select * from tst

SELECT LPAD('123456',10,'0') as retorno;


-- LPAD
SELECT C1,
	   C2,
       lpad(C1,5,'0')LPAD_C1,
       lpad(C2,10,'0')LPAD_C2
	   FROM tst;
       

-- RPAD
SELECT C1,
	   C2,
       RPAD(C1,5,'0') RPAD_C1,
       RPAD(C2,10,'0')RPAD_C2
	   FROM tst;
       

-- LEFT
-- Retorna a parte da esquerda de uma cadeia de caracteres com o número de caracteres especificado.

	USE SAKILA;
	SELECT FIRST_NAME,
		   LEFT(FIRST_NAME,5) RETORNO
	FROM ACTOR;    


-- RIGHT
-- Retorna a parte da esquerda de uma cadeia de caracteres com o número de caracteres especificado.
	USE SAKILA;
	SELECT FIRST_NAME,
		   RIGHT(FIRST_NAME,5) RETORNO
	FROM ACTOR;    

	
 
-- UPPER

USE WORLD;
	SELECT name,
		  upper(name) RETORNO
	FROM country;


--

-- lower

USE WORLD;
	SELECT name,
		  lower(name) RETORNO
	FROM country;


-- REVERSE
SELECT name,
		  REVERSE(name) RETORNO
	FROM country;


-- char_lenght conta caracteres

use curso;
	select c1,
           c2,
           char_length(c1) len_c1,
           char_length(c2) len_c2
           from tst;
           

-- length
	select c1,
           c2,
           length(c1) len_c1,
           length(c2) len_c2
           from tst;
           

-- BIT_LENGTH('ab')retorno;
	select c1,
           c2,
           BIT_LENGTH(c1) len_c1,
           BIT_LENGTH(c2) len_c2
           from tst;


--  retorna inteiro da posicao
SELECT FIELD('QUI', 'SEG', 'TER', 'QUA', 'QUI', 'SEX')retorno;


--  retorna inteiro da posicao no array

SELECT FIND_IN_SET('b','a,b,c,d') retorno;


-- make set
SELECT MAKE_SET(1,'a','b','c') retorno;

SELECT MAKE_SET(1 | 4,'Ola','OI','Mundo') retorno;


-- SUBSTRING
-- Retorna uma substring de caractere com dados de caractere dento do parâmetro informado
use world;
	select name,
           substring(name,1,3) as nome1,
           substring(name,4,3) as nome2,
           substring(name,7,20) as nome3
    from country;



select substring(now(),1,4) ano;
select substring(now(),6,2) mes;
select substring(now(),9,2) dia;


