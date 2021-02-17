use cadastro;

select * from cursos where nome = 'PHP';

select * from cursos where nome like 'P%';

select * from cursos where nome like '%A';

select * from cursos where nome like '%A%';

select * from cursos where nome not like '%A%';

update cursos set nome = 'PáOO' where idCurso = '9';
select * from cursos where nome not like '%A%';

select * from cursos where nome like 'PH%P';

select * from cursos where nome like 'PH%P_';

select  * from cursos where nome like 'P_P%';

select  * from cursos where nome like 'P__t%';