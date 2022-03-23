alter table 
	kopas 
add column pts INTEGER;

drop table if exists kopas;

create table if not exists kopas(
	id BIGSERIAL primary key,
	selecao VARCHAR(128) unique, 
	qnt_copas INTEGER,
	pts INTEGER 
);

insert into
	kopas ("selecao", "qnt_copas", "pts")
values
	('Brasil', 5, 237),
	('Alemanha', 4, 221),
	('Itália', 4, 156),
	('Argentina', 2, 144),
	('França', 2, 115),
	('Uruguai', 2, 84),
	('Inglaterra', 1, 108),
	('Espanha', 1, 105);

select * from kopas;

create table if not exists estadios(
	id BIGSERIAL primary key,
	edicao text, 
	ano varchar(4),
	estadio text,
	"local" varchar(128),
	publico_pagante INTEGER
);

insert into 
	estadios(edicao,ano,estadio,"local",publico_pagante) 
values 
	('I','1930','Estádio Centenário,Montevidéu', null, 68346),
	('II','1934','Estádio do Partido Nacional Fascista','Roma',55000),
	('III','1938','Estádio Olímpico Yves-du-Manoir','Colombes',45000),
	('IV','1950','Estádio do Maracanã','Rio de Janeiro',173850),
	('V','1954','Estádio Wankdorf','Berna',62500),
	('VI','1958','Estádio Råsunda','Solna',49737),
	('VII','1962','Estádio Nacional do Chile','Santiago',68679),
	('VIII','1966','Estádio de Wembley','Londres',96924),
	('IX','1970','Estádio Azteca','Cidade do México',107412),
	('X','1974','Estádio Olímpico de Munique','Munique',78200),
	('XI','1978','Estádio Monumental de Núñez','Buenos Aires',71483),
	('XII','1982','Estádio Santiago Bernabéu','Madrid',90000),
	('XIII','1986','Estádio Azteca','Cidade do México',114600),
	('XIV','1990','Estádio Olímpico de Roma','Roma',73603),
	('XV','1994','Rose Bowl','Pasadena',94194),
	('XVI','1998','Stade de France,Saint-Denis', null, 80000),
	('XVII','2002','Estádio Internacional de Yokohama','Yokohama',69029),
	('XVIII','2006','Estádio Olímpico de Berlim','Berlim',69000),
	('XIX','2010','Soccer City','Joanesburgo',84490),
	('XX','2014','Estádio do Maracanã','Rio de Janeiro',74738),
	('XXI','2018','Estádio Lujniki','Moscou',78011);

select * from estadios;

select * from estadios where publico_pagante > 100000;

select * from estadios where publico_pagante > 50000 and publico_pagante < 100000;

select * from estadios where estadio like '/y$/';

ALTER TABLE
	estadios
ALTER COLUMN
	ano
	TYPE INTEGER
	USING ano::INTEGER;

select * from estadios;