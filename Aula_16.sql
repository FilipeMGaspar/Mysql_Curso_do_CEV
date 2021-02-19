use cadastro;

create table gafanhoto_assiste_curso( 
	id int not null auto_increment,
    data date,
    idcurso int,
    idgafanhoto int,
    primary key (id),
    foreign key (idgafanhoto) references gafanhotos(id),
    foreign key (idcurso) references cursos(idCurso)
) default charset = utf8;

show tables;

insert into gafanhoto_assiste_curso values
(default, '2014-03-01', '1','2');

select * from gafanhoto_assiste_curso;

select g.id, g.nome, a.idgafanhoto, idCurso
from gafanhotos g join gafanhoto_assiste_curso a 
on g.id = a.idgafanhoto 
order by g.nome; 