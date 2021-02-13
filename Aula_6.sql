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
