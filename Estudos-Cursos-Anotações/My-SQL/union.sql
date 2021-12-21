
	-- SIMULANDO ERRO UNION
	SELECT '1','1','ABC'
		UNION
	SELECT 'A',2;
	
	-- exemplo union all
	select 'A' as campo1,'B'as campo2
	union all
	select 'A' as campo3,'B' as campo4;
	
	-- exemplo union
	select 'A' as campo1,'B'as campo2
	union 
   select 'A' as campo3,'B' as campo4;
	
   
	-- EXEMPLO USANDO UNION

	select ano,estado
	from senso
	where ano='2014'
	union 
	select ano,estado
	from senso
	where ano='2013';
	
		-- EXEMPLO USANDO UNION ALL

	select ano,estado
	from senso
	where ano='2014'
	union all
	select ano,estado
	from senso
	where ano='2013';
	
	-- EXEMPLO USANDO UNION

	select estado
	from senso
	where ano='2014'
	union 
	select estado
	from senso
	where ano='2013';
	
	-- EXEMPLO USANDO UNION ALL
	select ano,estado
	from senso
	where ano='2014'
	union all
	select ano,estado
	from senso
	where ano='2013'
		
	
	-- EXEMPLO COM UNION
  	select ano,estado,nome_mun,populacao
	from senso
	where ano='2014'
	and cod_uf='11'
	union 
	select ano,estado,nome_mun,populacao
	from senso
	where ano='2013'
	and cod_uf='11'
	order by nome_mun,ano;

	-- EXEMPLO COM UNION ALL
	select ano,estado,nome_mun,populacao
	from senso
	where ano='2014'
	and cod_uf='11'
	union all
	select ano,estado,nome_mun,populacao
	from senso
	where ano='2013'
	and cod_uf='11'
	order by nome_mun,ano;