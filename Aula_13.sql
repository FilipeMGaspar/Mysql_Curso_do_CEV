use cadastro;

select carga from cursos group by carga;

select carga, count(nome) from cursos group by carga;