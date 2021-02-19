use cadastro;

desc gafanhotos;

alter table gafanhotos add column cursoperferido int;

describe gafanhotos;

alter table gafanhotos add foreign key (cursoperferido)