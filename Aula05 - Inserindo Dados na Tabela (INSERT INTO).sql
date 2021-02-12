drop database cadastro;

create database cadastro 
default character set utf8
default collate utf8_general_ci;

use cadastro;

create table pessoas (
    id int not null auto_increment,
    nome varchar(30) not null,
    nascimento date,
    sexo enum('M', 'F'),
    peso decimal(5,2),
    altura decimal(3,2),
    nacionalidade varchar(20) default 'Português',
    primary key (id)
) default charset = utf8;

use cadastro;

insert into pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
values 
('Godofredo', '1984-01-02', 'M', '78.5', '1.8', 'Brasil');

select * from pessoas;

insert into pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
values 
('Maria', '1999-12-20', 'f', '48.5', '1.2', 'Portugal');

select * from pessoas;

insert into pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
values 
(default, 'Creuza', '1945-04-02', 'F', '57.8', '1.65', default);