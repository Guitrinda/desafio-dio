
-- CRIACAO DE TABELA ALUNOS
create table alunos
(id_aluno int not null auto_increment,
 nome varchar(20) not null,
 primary key(id_aluno)
 );


-- criando a tabela disciplina
create table disciplina
(
 id_disciplina int not null auto_increment,
 nome_disc varchar(20),
 primary key(id_disciplina)
 );


-- criando a tabela matricula
	CREATE TABLE matricula
	 (
	 id_aluno INT NOT NULL,
	 id_disciplina INT not null,
	 periodo VARCHAR(10), 
	 PRIMARY KEY (id_aluno,id_disciplina), 
	 FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno), 
	 FOREIGN KEY (id_disciplina) REFERENCES disciplina(id_disciplina)
	)


  -- INSERINDO REGISTRO ALUNOS
  insert into alunos (nome) values ('Joao'),('Maria'),('Pedro'),('Tiago'),('Henrique')

-- evidencia do insert
  SELECT * FROM alunos


  -- INSERINDO REGISTRO DISCIPLINAS
  insert into disciplina (nome_disc) values 
  ('Fisica'),('Quimica'),('Matematica'),('Banco de Dados'),('Programacao');

-- evidencia insert
  SELECT * FROM disciplina

-
  -- INSERINDO MATRICULAS DE ALUNOS
  insert into matricula values ('1','1','Noturno');
  insert into matricula values ('1','2','Vespertino');
  insert into matricula values ('1','3','Matutino');

  insert into matricula values ('2','3','Noturno');
  insert into matricula values ('2','4','Noturno');

  insert into matricula values ('3','1','Noturno');
  insert into matricula values ('3','3','Noturno');
  insert into matricula values ('3','4','Noturno');

  insert into matricula values ('5','1','Matutino');
  insert into matricula values ('5','2','Vespertino');
  insert into matricula values ('5','4','Noturno');

-- evidencia
 select * from matricula;
 
  -- ALUNO CODIG 4 NAO TEM MATRICULA
  -- DISCIPLINA 5 NAO TEM ALUNOS


  -- INNER JOIN

  SELECT a.nome,c.nome_disc,b.periodo
    FROM alunos a
	INNER JOIN matricula b 
		ON a.id_aluno=b.id_aluno
	INNER JOIN disciplina c 
		ON b.id_disciplina=c.id_disciplina


  -- LEFT JOIN
	SELECT a.nome,c.nome_disc,b.periodo
	FROM alunos a
	LEFT JOIN matricula b 
		ON a.id_aluno=b.id_aluno
	LEFT JOIN disciplina c 
		ON b.id_disciplina=c.id_disciplina
  

 -- RIGHT JOIN
	SELECT a.nome,c.nome_disc,b.periodo
	FROM alunos a
	RIGHT JOIN matricula b 
		ON a.id_aluno=b.id_aluno
	RIGHT JOIN disciplina c 
		ON b.id_disciplina=c.id_disciplina
		
		
		
		
		
		
-- exemplos extras usando database sakila

-- INNER JOIN
use sakila;

SELECT a.first_name,a.last_name,c.title FROM ACTOR a
 inner join film_actor b
  on a.actor_id=b.actor_id
 inner join film c
 on b.film_id=c.film_id


-- LEFT JOIN

SELECT a.first_name,a.last_name,c.title FROM ACTOR a
 left join film_actor b
  on a.actor_id=b.actor_id
 left join film c
 on b.film_id=c.film_id


-- RIGHT JOIN

SELECT a.first_name,a.last_name,c.title FROM ACTOR a
 right join film_actor b
  on a.actor_id=b.actor_id
 right join film c
 on b.film_id=c.film_id
