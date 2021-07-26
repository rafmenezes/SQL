use db_rh;

create table tb_funcionarios(
id bigint(5) auto_increment,
nome varchar(20),
faltas int,
atestado boolean,
horaExtra int,
salario int,
primary key(id)
);
insert into tb_funcionarios (nome,faltas,atestado,horaExtra,salario) Values ("Rafael",0,false,5,4500);
insert into tb_funcionarios (nome,faltas,atestado,horaExtra,salario) Values ("Carla",1,true,10,5000);
insert into tb_funcionarios (nome,faltas,atestado,horaExtra,salario) Values ("Juca",2,false,0,1900);
insert into tb_funcionarios (nome,faltas,atestado,horaExtra,salario) Values ("Maria",5,true,0,2500);
insert into tb_funcionarios (nome,faltas,atestado,horaExtra,salario) Values ("Miguel",0,false,15,1800);

select*from tb_funcionarios;