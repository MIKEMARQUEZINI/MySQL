create database rh_corp;

use rh_corp;

create table funcionarios (
id bigint auto_increment,
nome varchar(255),
sobrenome varchar(255),
cargo varchar(255),
salario decimal (10,2),
setor varchar(255),
PRIMARY KEY (id)
);

insert into funcionarios(nome,sobrenome,cargo,salario,setor) values ("MIke","Marquezini","Scrum Master",2500.00,"T.I");
insert into funcionarios(nome,sobrenome,cargo,salario,setor) values ("Roberta","Salyna","Diretora",4500.00,"Comercial");
insert into funcionarios(nome,sobrenome,cargo,salario,setor) values ("Eduardo","Salyna","Supervisor",1500.00,"Administrativo");
insert into funcionarios(nome,sobrenome,cargo,salario,setor) values ("Mauricio","Salyna","Diretor",6500.00,"T.I");
insert into funcionarios(nome,sobrenome,cargo,salario,setor) values ("Isabel","Salyna","Sócia",12500.00,"Fundadora");

select * from funcionarios;

select * from funcionarios where salario > 2000;

select * from funcionarios where salario < 2000;