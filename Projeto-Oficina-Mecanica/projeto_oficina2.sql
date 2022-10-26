create database oficina;
use oficina;
select * from cliente;

insert into veiculo values 
('1', 'Pampa','Utilitário','dfd-456789','Mocinética com defeito','1','2'),
('2','Fusca','Passeio','hyh-897896','Repimbóca da parufusea espanada','2','1'),
('3','Chevette','Passeio','tyu-568999','Parachoque eletrecultado para cima','3','1'),
('4','CG-125','Moto','err-13456','Escamento quebrado','4','3'),
('5','Bandeirante','Utilitário','lol-456789','O de sempre','5','2');

select * from orcamento;
insert into orcamento values 
('1','Aprovado','1','1'),
('2','Reprovado','2','2'),
('3','Aprovado','3','3'),
('4','Aprovado','4','4'),
('5','Reprovado','5','5');

insert into servico values
('1','Concluído','1','1','1'),
('2','Em andamento','3','3','3'),
('3','Não executado','4','4','4');

select * from veiculo;
select * from veiculo order by nome;

select idveiculo, nome from veiculo order by placa;
select nome from veiculo where tipo='Passeio';

select nome from veiculo where tipo='Passeio' or tipo='Moto';

select count(*) from orcamento where sttus='Aprovado';