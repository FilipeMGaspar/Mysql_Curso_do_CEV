use cadastro;

describe pessoas;

alter table pessoas
add column profissao varchar(10);

desc pessoas;

select * from pessoas;

alter table pessoas
drop column profissao;

describe pessoas;

alter table pessoas
add column profissao varchar(10) default '' after nome;

alter table pessoas
add column codigo int first;

desc pessoas;

alter table pessoas
modify column profissao varchar(20) not null;

select * from pessoas;

alter table pessoas
change column profissao prof varchar(20);

select * from pessoas; 

alter table pessoas
rename to gafanhotos;

desc gafanhotos;

create table if not exists cursos(
	nome varchar(30) not null unique,
    descricao text,
    carga int unsigned,
    totAulas int,
    ano year default '2016'
) default charset=utf8;


describe cursos;

alter table cursos
add column idCurso int first;

alter table cursos
add primary key (idCurso);

describe cursos;

create table if not exists teste(
id int,
nome varchar(10),
idade int
);

insert into teste value
('1','Maria','25'),
('2','João','35'),
('3','Luis','45');

select * from teste;

drop table if exists teste;

