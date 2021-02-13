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
add column profissao varchar(10) after nome;

alter table pessoas
add column codigo int first;