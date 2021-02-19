use cadastro;

desc gafanhotos;

alter table gafanhotos add column cursoperferido int;

describe gafanhotos;

desc cursos;

alter table gafanhotos add foreign key (cursoperferido) references cursos(idCurso);

describe gafanhotos;