use oficina;
create table cliente 
(idcliente int auto_increment,
nome varchar(15),
sobrenome varchar(25),
CPF varchar(11) unique not null,
contato varchar(15),
endereco varchar(25),
oficina enum('1','2','3'),
primary key(idcliente)
);
select * from cliente;

create table veiculo(
idveiculo int primary key auto_increment,
nome varchar(25),
tipo enum('Passeio','Utilitário','Moto'),
placa varchar(10) unique,
demanda text,
cliente int,
constraint foreign key(cliente) references cliente(idcliente)
);
alter table veiculo add ofic enum('1','2','3'); 
alter table veiculo drop oficina;

alter table veiculo add foreign key (ofic) references oficina(unidade);
select * from veiculo;


create table oficina (
razao_social varchar(15),
CNPJ varchar(15) unique,
unidade enum('1','2','3')
);

create table orcamento(
idorcamento int auto_increment primary key,
sttus enum('Aprovado','Reprovado'),
veic int,
clnte int,
constraint foreign key(veic) references veiculo(idveiculo), 
constraint foreign key(clnte) references cliente(idcliente) 
);
select * from orcamento;

create table servico (
idservico int primary key auto_increment,
stat enum('Concluído','Em andamento','Não executado'),
orcam int,
veicu int,
prop int,
constraint foreign key(orcam) references orcamento(idorcamento),
constraint foreign key(veicu) references veiculo(idveiculo),
constraint foreign key(prop) references cliente(idcliente)
);
select * from cliente;

insert into cliente values
('1','Diego', 'De la Viega','123456789','1234-4569','Rua Los Angeles, 1821','2'),
('2','Dona Benta','Encerrabodes de Oliveira','001001002','000-000','Sítio do Pica-Pau Amarelo','1'),
('3','Miguel','Strogoff','456456456','0101-0101','Avenida Irkutsk, 1876','1'),
('4','Ana','Raio','741852963','3535-0202','Avenida Brasil, S/n','3'),
('5','Paola','Bracho','987654321','8989-5656','Rua México, 1994','2')
;