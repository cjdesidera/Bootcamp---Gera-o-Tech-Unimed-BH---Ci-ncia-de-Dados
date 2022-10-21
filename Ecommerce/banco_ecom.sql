-- criação do Banco de Dados para o exercício de E-commerce --
create database ecommerce;
use ecommerce;

create table cliente (
idCliente int auto_increment primary key,
nome varchar (15),
sobrenome varchar(20),
CPF char(15) not null,
nascimento date,
endereco varchar(45)
);

create table produto (
idProduto int auto_increment primary key,
nome varchar (15),
categoria varchar(15),
quantidade int,
preco float
);

alter table produto add avaliacao tinyint;

drop table pedido;

create table pedido (
IdPedido int auto_increment primary key,
nome varchar(15),
descricao varchar(15),
statusPedido enum('Cancelado','Em Processamento','Aprovado'),
idproduto int,
IdCliente int,
frete float,
constraint foreign key(IdPedido) references cliente(IdCliente)
);

create table estoque (
IdEstoque int primary key,
IdProduto int,
quantidade int not null,
constraint foreign key (IdProduto) references produto(IdProduto)
);

create table fornecedor (
IdFornecedor int primary key auto_increment,
CNPJ char(15) not null unique,
endereco varchar(30),
contato varchar(15) not null
);

create table vendedor (
IdVendedor int primary key auto_increment,
IdProduto int,
nome varchar (15),
CNPJ char(15) not null unique,
endereco varchar(30),
contato char(10) not null,
constraint foreign key(IdProduto) references produto(IdProduto)
);

use ecommerce;
show tables;
describe table cliente;

insert into cliente (idCliente,nome,sobrenome,CPF,nascimento,endereco) values 
('1','Onofre','Rego','123456789','1978-09-12','Rua das Flores,123'),
('2','Geussumina','Estrela','987654321','1944-06-12','Avenida das Plameiras, 245'),
('3','Godofredo','Souto','456789123','1991-04-26','Rua Perdi Lopes, 45'),
('4','Doleres','Graça','666555444111','1495-07-12','Castelinho Novo, s/n'),
('5','Aderbal','Aparecido','12364987','1845-11-12','Alameda Bella, 1745');
desc cliente;
select * from cliente;

insert into produto (idProduto,nome,categoria,quantidade,preco,avaliacao) values 
('1','Giló','Comida','20','110','3'),
('2','Mamadeira','Higiene','1000','50','4'),
('3','Caderno','Papelaria','1002000','5.50','3'),
('4','Caneta Azul','Papelaria','1000000','1.25','5'),
('5','Caderno','Papelaria','456','4.55','5'),
('6','Notebook','Informática','25','5000','5');
select * from produto;

insert into fornecedor (IdFornecedor,CNPJ,endereco,contato) values
('1','123456789','Candy Montain, s/n','4564-4567'),
('2','456789321','Sítio do Pica-Pau Amarelo','1234-1234'),
('3','456456789', 'Avenida Mais-Mais','7894-4561'),
('4','789789456','Galeria das Compres','7894-4569');
select * from fornecedor;

insert into vendedor (IdVendedor,IdProduto,nome,CNPJ,endereco,contato) values
('1','4','Benta Bazar','456789321','Sítio do Pica-Pau Amarelo','1234-1234'),
('2','3','Tonim','456456789', 'Avenida Mais-Mais','7894-4561'),
('3','2','Papel Mania','789465112','Rua dos Coqueiros','4568-9899'),
('4','2','Lojinha TemTudo','456741987','Rua das Flores','1234-5679');
select * from vendedor;

select nome from cliente;
select distinct endereco from vendedor;
select nome, endereco from cliente where IdCliente>='4';
select nome, endereco from cliente where IdCliente>='2' and nome='%o%';

select IdFornecedor from fornecedor order by endereco;

select * from pedido;
select nome from pedido where frete( frete=0) having idproduto >3;
