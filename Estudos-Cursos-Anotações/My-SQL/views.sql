
use sakila;

create view v_ator_film
as
select a.first_name,c.title,c.length as duracao
from actor a
 inner join film_actor b
 on a.actor_id=b.actor_id
 inner join film c 
  on b.film_id=c.film_id;

-- consultando view

select * from v_ator_film
where title='GOODFELLAS SALUTE';


select first_name,title from v_ator_film
where title='GOODFELLAS SALUTE';


-- criando um view de outra view
create view v_ator_film_horas
as
select a.first_name,sum(a.duracao) minutos,
		sum(a.duracao)/60 horas
from v_ator_film a
group by a.first_name
order by 2 desc;


-- select
select * from v_ator_film_horas
-- exemplo view

create view v_v_ator_film_concat
as
select a.first_name,
	group_concat(a.title SEPARATOR', ') as filmes
 from v_ator_film a
 GROUP  by a.first_name;

-- select na view
select * from v_v_ator_film_concat

-- View com dados Particionados.
-- Criação de view com dados de varias tabelas usando UNION ALL

-- Create the tables and
create table fornec1
	(
	id_fornec int not null primary key,
    fornec varchar(50) not null,
    constraint chk_f1 check (id_fornec between 1 and 150)
    );

    
create table fornec2
	(
	id_fornec int not null primary key,
    fornec varchar(50) not null,
    constraint chk_f2 check (id_fornec between 151 and 300)
    );
    
create table fornec3
	(
	id_fornec int not null primary key,
    fornec varchar(50) not null,
    constraint chk_f3 check (id_fornec between 301 and 450)
    );


create table fornec4
	(
	id_fornec int not null primary key,
    fornec varchar(50) not null,
    constraint chk_f4 check (id_fornec between 451 and 600)
    );
    
 
-- inserindo valores  

 INSERT  fornec1 VALUES ('150','CaliforniaCorp');
 INSERT  fornec1 VALUES ('5','BraziliaLtd');
  
 INSERT  fornec2 VALUES ('231','FarEast');
 INSERT  fornec2 VALUES ('280','NZ');

 INSERT  fornec3 VALUES ('321','EuroGroup');
 INSERT  fornec3 VALUES ('442','UKArchip');
 
 INSERT  fornec4 VALUES  ('475','India');
 INSERT  fornec4 VALUES  ('521','Afrique');



 -- criando view
 CREATE VIEW v_fornec_geral
	as
    select id_fornec,fornec from fornec1
	UNION ALL
	select id_fornec,fornec from fornec2
	UNION ALL
	select id_fornec,fornec from fornec3
	UNION ALL
	select id_fornec,fornec from fornec4


-- verificando dados
select * from v_fornec_geral



 -- criando view
-- Alterando a View
alter view v_fornec_geral
   as
    select 'f1' as origem,id_fornec,fornec from fornec1
	union all
	select 'f2' as origem,id_fornec,fornec from fornec2
	union all
	select 'f3' as origem,id_fornec,fornec from fornec3
	union all
	select 'f4' as origem,id_fornec,fornec from fornec4;



-- Select na view v_fornec_geral

select * from v_fornec_geral;

-- inserindo mais registros

INSERT  fornec4 VALUES  ('476','Norway');
INSERT  fornec4 VALUES  ('522','Netherlands');

select * from v_fornec_geral;