use cadastro;

select * from cursos where nome = 'PHP';

select * from cursos where nome like 'P%';

select * from cursos where nome like '%A';

select * from cursos where nome like '%A%';

select * from cursos where nome not like '%A%';

/*update cursos set nome = 'PáOO' where idCurso = '9';*/
/*select * from cursos where nome not like '%A%';*/

select * from cursos where nome like 'PH%P';