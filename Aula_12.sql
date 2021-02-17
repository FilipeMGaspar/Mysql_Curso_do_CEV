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

select * from gafanhotos;

select * from gafanhotos where nome like '%silva%';

select carga from cursos;

select distinct carga from cursos;

select nacionalidade from gafanhotos;

select distinct nacionalidade from gafanhotos order by nacionalidade;

select * from cursos;

select count(*) from cursos;

select * from cursos where carga > 30;

select count(*) from cursos where carga > 30;

select * from cursos order by carga;

select max(carga) from cursos;

select * from cursos where ano = '2014';

select max(totAulas) from cursos where ano = '2014';

select min(totAulas) from cursos;

select min(totAulas), nome from cursos where ano = '2014'; /* Deu erro resolver*/

select sum(totAulas) from cursos where ano ='2014';

select avg(totAulas) from cursos;

SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY','');