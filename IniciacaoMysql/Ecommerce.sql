create database db_ecommerce;

use db_ecommerce
create table tb_produtos (
id bigint auto_increment, 
produto varchar(30) not null,
tamanho varchar(5), cor varchar(10), marca varchar(20), 
preco decimal(10,2),
primary key(id) );

insert into tb_produtos (produto,tamanho,cor,marca,preco) value ("Camisa","GG","Preto","Colcci",220.00);
insert into tb_produtos (produto,tamanho,cor,marca,preco) value ("Casaco","M","Marrom","Colombo",350.00);
insert into tb_produtos (produto,tamanho,cor,marca,preco) value ("Camiseta","P","Branca","Adidas",89.90);
insert into tb_produtos (produto,tamanho,cor,marca,preco) value ("Calça Jeans","G","Azul","Diesel",660.00);
insert into tb_produtos (produto,tamanho,cor,marca,preco) value ("Cueca","XXG","Verde","LUPO",52.00);
insert into tb_produtos (produto,tamanho,cor,marca,preco) value ("Sueter","P","Amarelo","Lacoste",520.00);
insert into tb_produtos (produto,tamanho,cor,marca,preco) value ("Bermuda","PP","Lilás","Hering",79.90);
insert into tb_produtos (produto,tamanho,cor,marca,preco) value ("Vestido","Unico","Roxo","Gucci",1250.00);

select *from tb_produtos where preco >= 500.00;
select *from tb_produtos where preco <= 500.00;
