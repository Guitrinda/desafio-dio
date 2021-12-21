
-- usando a funçao casa para saber o dia
set @data:=sysdate()+1;
select @data,
     case when @data=sysdate() then 'Hoje'
          when @data=sysdate()+1 then 'Amanha'
          when @data=sysdate()-1 then 'Ontem' end dia;

use world;

select a.name,a.population,
	case when a.population < 1000000 then 'Pop < 1 M'
		 when a.population >= 1000000 and 
         a.population< 50000000 then 'Pop >=1 M e <50 M '
         when a.population >= 50000000 and 
         a.population< 100000000 then 'Pop >=50 M e <100 M '
         when a.population >=100000000 then 'Pop >=100 M' end demograf
from country a
order by a.continent,a.population desc;

-- agrupando com case when

select count(*) qtd_paises,
	case when a.population < 1000000 then 'Pop < 1 M'
		 when a.population >= 1000000 and 
         a.population< 50000000 then 'Pop >=1 M e <50 M '
         when a.population >= 50000000 and 
         a.population< 100000000 then 'Pop >=50 M e <100 M '
         when a.population >=100000000 then 'Pop >=100 M' end demograf
from country a
group by case when a.population < 1000000 then 'Pop < 1 M'
		 when a.population >= 1000000 and 
         a.population< 50000000 then 'Pop >=1 M e <50 M '
         when a.population >= 50000000 and 
         a.population< 100000000 then 'Pop >=50 M e <100 M '
         when a.population >=100000000 then 'Pop >=100 M' end;


use sakila;


   select a.title,length,
    case when a.length<60 then 'Curta Metragem'
         when a.length<90 then 'Media Metragem'
		 when a.length>=90 then 'Longa Metragem' end metragem
         from film a;

-- agrupando resultados com case
select count(*),
    case when a.length<60 then 'Curta Metragem'
         when a.length<90 then 'Media Metragem'
		 when a.length>=90 then 'Longa Metragem' end metragem
         from film a
         group by case when a.length<60 then 'Curta Metragem'
         when a.length<90 then 'Media Metragem'
		 when a.length>=90 then 'Longa Metragem' end
