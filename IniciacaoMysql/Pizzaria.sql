/*Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco deverá ter o seguinte nome db_pizzaria_legal, 
onde o sistema trabalhará com as informações dos produtos desta empresa. O sistema trabalhará com 2 tabelas tb_pizza e tb_categoria.
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria 
para se trabalhar com o serviço dessa pizzaria.Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e 
determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria
(não esqueça de criar a foreign key de tb_categoria nesta tabela).
Popule esta tabela Categoria com até 5 dados.
Popule esta tabela pizza com até 8 dados.
Faça um select que retorne os Produtos com o valor maior do que 45 reais.
Faça um select trazendo  os Produtos com valor entre 29 e 60 reais.
Faça um select  utilizando LIKE buscando os Produtos com a letra C.
Faça um um select com Inner join entre  tabela categoria e pizza.
Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são pizza doce).*/

create database db_pizzaria_legal;
use db_pizzaria_legal;
create table tb_categoria(
id_categoria int auto_increment,
pizza_grande varchar(255),
pizza_broto varchar(255),
pizza_doce varchar(255),
primary key (id_categoria)
);

create table tb_pizza(
id_pizza int auto_increment,
mussarela int,
calabresa int,
portuguesa int,
atum int,
frango_catupiry int,
fk_categoria int,
Primary key (id_pizza),
foreign key (fk_categoria) references tb_categoria (id_categoria)
);
alter table tb_pizza add column preco decimal (10,2);

insert into tb_categoria (pizza_grande, pizza_broto, pizza_doce) values (2,0,1);
insert into tb_categoria (pizza_grande, pizza_broto, pizza_doce) values (0,1,0);
insert into tb_categoria (pizza_grande, pizza_broto, pizza_doce) values (3,0,0);
insert into tb_categoria (pizza_grande, pizza_broto, pizza_doce) values (1,0,5);
insert into tb_categoria (pizza_grande, pizza_broto, pizza_doce) values (10,5,10);

insert into tb_pizza (mussarela, calabresa, portuguesa, atum, frango_catupiry, fk_categoria)
values 
(1,2,0,2,3,1),
(0,3,0,2,5,1),
(1,5,0,2,1,2),
(3,0,2,1,3,3),
(0,4,0,2,7,1),
(5,6,0,2,1,1),
(7,7,0,2,1,1),
(4,2,0,2,1,1);

select *from tb_categoria
inner join tb_pizza on tb_pizza.doce = tb_categoria.pizza_broto

select * from tb_categoria where pizza_broto = 0;
select * from tb_pizza where preco <50.00;

