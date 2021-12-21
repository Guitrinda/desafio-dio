
-- ABS
-- Uma função matemática que retorna o valor absoluto (positivo) 
-- da expressão numérica especificada.

select abs(-1.0)val1,
       abs(0.0)val2,
       Abs(1.0)val3,
       Abs(-9.0)val4,
       abs(-5.4)val5,
       abs(5.4)val6
 

-- RAND
-- Retorna um valor float pseudoaleatório de 0 a 1, exclusivo.

select rand()
union 
select rand()
union 
select rand()
union 
select rand()



-- ROUND
-- Retorna um valor numérico, arredondado, para o comprimento ou precisão especificados.

SELECT Round(123.9994,3), -- 0,1,2,3,4 <  arredonda pra baixo
       Round(123.9995,3); -- 5,6,7,8,9 >  arredonda pra cima
       
       

SELECT Round(123.4545, 2) retorno
union all
SELECT Round(123.45,-2)
union all
SELECT Round(193.45,-2)
union all
SELECT Round(249.45,-2)
union all
SELECT Round(251.45,-2);


SELECT Round(150.75,0)
union all
SELECT Round(150.75,1);


-- funcão truncate
SELECT TRUNCATE(1.223,2) resultado;

SELECT TRUNCATE(122,-2)resultado;

SELECT TRUNCATE(10.28*100,0)resultado;

SELECT TRUNCATE(10.28*100,3)resultado;

-- Função SQRT  quadratica

SELECT SQRT(4)  resultado;

SELECT SQRT(20)resultado;

SELECT SQRT(-16)resultado ;

-- sign


SELECT SIGN(-234)resultado;

SELECT SIGN(0)resultado;

SELECT SIGN(234)resultado;


-- funcao pow

SELECT POW(2,2)resultado;
SELECT POW(3,2)resultado;
SELECT POW(2,-2)resultado;


-- função mod

SELECT MOD(5, 2) resultado;

SELECT MOD(27, 3) resultado;

SELECT MOD(20, 3) resultado;





