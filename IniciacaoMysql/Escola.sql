create database db_escola;
use db_escola;
create table tb_alunos(
id bigint(5) auto_increment,
estudante varchar(255), idade varchar(255),
notaTrabalho float, notaProva float, faltas int,
primary key(id)
);
select*from tb_alunos;
alter table tb_alunos add column notaFinal float;
insert into tb_alunos (estudante,idade,notaTrabalho,notaProva,faltas,notaFinal) values ("Rafael Menezes", "29 anos", 7, 7, 2,7);
insert into tb_alunos (estudante,idade,notaTrabalho,notaProva,faltas,notaFinal) values ("Daniel Gonçalves", "25 anos", 8, 6, 0,7);
insert into tb_alunos (estudante,idade,notaTrabalho,notaProva,faltas,notaFinal) values ("Jorge Santiago", "28 anos", 9, 9, 1,9);
insert into tb_alunos (estudante,idade,notaTrabalho,notaProva,faltas,notaFinal) values ("Francisco Lira", "21 anos", 5, 8, 4,6.5);
insert into tb_alunos (estudante,idade,notaTrabalho,notaProva,faltas,notaFinal) values ("Denise Costa", "19 anos", 10, 9.5, 0,9.75);
insert into tb_alunos (estudante,idade,notaTrabalho,notaProva,faltas,notaFinal) values ("Raquel Ribeiro", "29 anos", 8, 4, 6,6);
insert into tb_alunos (estudante,idade,notaTrabalho,notaProva,faltas,notaFinal) values ("Joyce Lemos", "27 anos", 10, 10, 0,10);
insert into tb_alunos (estudante,idade,notaTrabalho,notaProva,faltas,notaFinal) values ("Maykon Neves", "22 anos", 9, 5, 1,7);

select *from tb_alunos where notaFinal >= 7;
select *from tb_alunos where notaFinal <7;
