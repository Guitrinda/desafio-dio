
-- Data de agora adicionando 2 anos e 4 meses.
	   SELECT curdate() hoje,
	   DATE_ADD(curdate(), INTERVAL "2-4" YEAR_MONTH) as acrescimo;


-- Adicionando 2 meses
SELECT curdate() hoje,
	   DATE_ADD(curdate(), INTERVAL "2" MONTH) as acrescimo;

	
-- Adicionando 3 anos
SELECT curdate() hoje,
	   DATE_ADD(curdate(), INTERVAL "3" year) as acrescimo;
	

-- Adicionando 90 dias
SELECT curdate() hoje,
	   DATE_ADD(curdate(), INTERVAL "90" day) as acrescimo;

 -- Adicionando 3 horas    
SELECT now() hoje,
	   DATE_ADD(now(), INTERVAL "3" hour) as acrescimo;


 -- Adicionando 15 minutos         
SELECT now() hoje,
	   DATE_ADD(now(), INTERVAL "15" minute) as acrescimo;
       
       