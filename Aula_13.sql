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
Uma lista com as profissões dos gafanhotos e seus respectivos quantitativos
*/
select prof, count(*) from gafanhotos group by prof order by count(*) desc;

/*Exercicio 2
Quantos gafanhots homens e quantos mulheres nasceram após 01/jan/2005
*/
select sexo, count(sexo) from gafanhotos where nascimento > '2005-01-01' group by sexo;


/*Exercicio 3
Uma lista com os gafanhotos que
nasceram fora do Brasil, mostrando o 
país de origem e o total de pessoas
nascidos lá. Só nos interessam os países que tiverem mais de 3 gafanhotos com essa nacionalidade
*/
select nacionalidade, count(nacionalidade) from gafanhotos where  nacionalidade != 'Brasil' group by nacionalidade having count(nacionalidade)>=3;


/*Exercicio 4
Uma lista agrupada pela altura dos 
gafanhotos, mostrando quantas pessoas
pesam mais de 100Kg e que estão acima
da média de altura de todos os 
cadastro
*/
select peso, count(altura) from gafanhotos where peso > 100 group by altura having altura > (select avg(altura) from gafanhotos);
