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

select avg(totAulas) from cursos where ano = '2014';

/*Exrecico 1
	Uma lista com o nome de todas as gafanhotas 
    sexo = 'F'
*/
select nome from gafanhotos where sexo='F';

/*Exercicio 2
	uma lista com os dados de todos
    aqueles que nasceram entre 1/jan/2000 
    e 31/dez/2015
*/
select * from gafanhotos where nascimento between '2000-01-01' and '2015-12-31';


/*Exercicio 3
	uma lista com o nome de todos
    os homens que trabalham como 
    Programadores
*/
select nome from gafanhotos where sexo = 'M' and prof = 'Programador';


/*Exercicio 4
	Uma lista com os dados de todas as
    mulheres que nasceram no Brasil
    têm seu nomo iniciando com a letra 'J'
*/
select * from gafanhotos where sexo = 'F' and nacionalidade = 'Brasil' and	nome like 'J%';


/*Exercico 5
	Uma lista com o nome e nacionalidade 
    de todos os homens que têm Silva no nome, 
    não nasceram no Brasil e pesam
    menos de 100 kg
*/
select nome, nacionalidade, peso from gafanhotos where sexo = 'M'and nacionalidade != 'Brasil' and nome like '%Silva%' and peso > 100;

/*Exercico 6
	Qual é maior altura entre gafanhotos
    homens que moram no Brasil
*/
select max(altura) from gafanhotos where nacionalidade ='Brasil' and sexo='M';	


/*Exercico 7
	Qual é a média de peso dos gafanhotos 
    cadastrados;
*/
select avg(peso) from gafanhotos;

/*Exercicio 8
	Qual é o menor peso entre as
    gafanhotos mulheres que nasceram fora
    do Brasil e entre 01/jan/1990 e 31/Dez/2000
*/
select nome, min(peso), nacionalidade, nascimento from gafanhotos where sexo = 'F' and nacionalidade != 'Brasil' and nascimento between '1990-01-01' and '2000-12-31';


/*Exercicio 9
	Quantas gafanhotos mulheres têm mais de 
    1.90m de altura
*/
select count(*) from gafanhotos where sexo = 'F' and altura > 1.9;