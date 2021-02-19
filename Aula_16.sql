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