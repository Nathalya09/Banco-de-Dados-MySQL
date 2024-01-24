create database SPRINT4;

create table pedido(
id bigint auto_increment not null,
produto varchar(255),
categoria varchar(255),
preco decimal(10,2),
quantidade integer,
date date,
cliente varchar(60), primary key(id)
);

insert into pedido(id, produto, categoria, preco, quantidade, cliente) values(1, 'notebook', 'info', 2500, 12, 'Nathalya');
insert into pedido(produto, categoria, preco, quantidade, date, cliente) values('Galaxy S22 Ultra','CELULARES','854910',5,'2022-01-14','DANI'),
('Macbook Pro 16','info','3175200',1,'2022-01-03','CAIO'),
('Refactoring Improving the Design of Existing Code','LIVROS','17390',1,'2022-01-12','DANI'),
('Cama queen size','moveis',310000,2,'2022-01-07','DANI'),
('Central multimidia','AUTOMOTIVA','711.18',1,'2022-01-16','CAIO'),
('Building Microservices','LIVROS','30028',2,'2022-01-11','CAIO'),
('GalaxyTabS8','INFO','593910',4,'2022-01-02','BIA');

select *from pedido;

update pedido set categoria = 'informática' where categoria = 'info';

select *from pedido where categoria = 'celulares';

select *from pedido where preco >= 30000 and preco <= 100000;

select *from pedido where quantidade = 4 and cliente = 'BIA';