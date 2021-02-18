use cadastro;

select carga from cursos group by carga;

select carga, count(nome) from cursos group by carga;

select * from cursos where totAulas = 30;

select * from cursos where totAulas > 20;

select carga, count(nome) from cursos where totAulas > 20 group by carga;

select ano, count(*) from cursos group by ano order by count(*);

select ano, count(*) from cursos group by ano having count(ano) >= 2 order by count(*) desc;

select ano, count(*) from cursos group by ano having ano > 2013 order by count(*) desc;

select ano, count(*) from cursos where totAulas > 30 group by ano having ano > 2013 order by count(*) desc;

select avg(carga) from cursos;

select * from cursos where ano > 2013 group by carga having carga > (select avg(carga) from cursos);


/*Exercicio 1
*
*/