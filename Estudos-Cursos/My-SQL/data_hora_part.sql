
-- verificando a lingua padrão da instalacao e alternando para PT_br
-- default 'en_US'
-- pt_PT — português de Portugal ou português europeu
-- Pt_BR — português do Brasil 
select @@lc_time_names;
SET lc_time_names = 'PT_br';
select @@lc_time_names;


-- verificando time_zone
select @@global.time_zone
-- SET @@global.time_zone = '+3:00';

-- SET time_zone='America/Sao_Paulo';
 SELECT @@time_zone;

	
    -- FUNCAO DE DATA E HORA PARTES
	-- RETORNA O DIA/Mes/Ano/hora/minutos segundos
	 
     select month(now()) mes,
				year(now()) ano,
				day(now()) dia,
				hour(now()) horas,
				minute(now())minuto,
				second(now())segundo;
	  

  -- usando tabela film campo last_update
  use sakila;
  select 	title,
            last_update ultima_atualiz,
				year(last_update) ano,
	         month(last_update) mes,
				day(last_update) dia,
				hour(last_update) horas,
				minute(last_update)minuto,
				second(last_update)segundo
	from film ;
   
   
 
           