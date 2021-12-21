
-- FUNCOES DATA E HORA DO SISTEMA

select curdate();


select current_time();

select now();


create table audit_log 
 ( id int  not null auto_increment,
   acao varchar(50),
   data date,
   hora time,
   primary key(id)
   );
   

   insert into audit_log (acao,data,hora) values ('Cadastro',curdate(),current_time());
   
   insert into audit_log (acao,data,hora) values ('Atualização',curdate(),current_time());
   
   select * from audit_log;
   
   update audit_log set hora=current_time()
   where id='1';
   
  
   

