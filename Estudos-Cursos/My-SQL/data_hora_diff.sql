
-- DIFERENCA EM DIAS
use sakila;

	select title, 
	       last_update,
			 datediff(last_update,now()) as dif 
from film; 

	select title, 
	       last_update,
			 datediff(now(),last_update) as dif
	from film; 


select TIMEDIFF('2017-12-08 10:00:00', NOW()) diferenca



-- DIFERENCA EM MESES

select title, last_update,
       TIMESTAMPDIFF(year,last_update,now()) ano_dif,
       TIMESTAMPDIFF(month,last_update,now()) mes_dif,
       TIMESTAMPDIFF(day,last_update,now()) dia_dif,
       TIMESTAMPDIFF(hour,last_update,now()) horas_dif,
       TIMESTAMPDIFF(minute,last_update,now()) minutos_dif,
	    TIMESTAMPDIFF(week,last_update,now()) semana_dif
from film
limit 5; 





