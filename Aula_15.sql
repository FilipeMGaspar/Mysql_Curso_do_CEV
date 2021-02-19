use cadastro;

desc gafanhotos;

alter table gafanhotos add column cursoperferido int;

describe gafanhotos;

desc cursos;

select * from cursos;

alter table gafanhotos add foreign key (cursoperferido) references cursos(idCurso);

describe gafanhotos;

select * from gafanhotos;
select * from cursos;

update gafanhotos set cursoperferido = '6' where id = '1';

select * from gafanhotos;

delete from cursos where idCurso = '6';

delete from cursos where idCurso = '8';

select * from cursos;

select nome, cursoperferido from gafanhotos;

select nome, ano from cursos;

select gafanhotos.nome, cursos.nome, cursos.ano from  gafanhotos join cursos on cursos.idCurso = gafanhotos.cursoperferido;

select gafanhotos.nome, cursos.nome, cursos.ano from  gafanhotos left outer join cursos on cursos.idCurso = gafanhotos.cursoperferido;

select gafanhotos.nome, cursos.nome, cursos.ano from  gafanhotos right outer join cursos on cursos.idCurso = gafanhotos.cursoperferido;