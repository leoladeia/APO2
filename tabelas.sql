CREATE DATABASE dbFaculdade;


create table cursos (
	id int auto_increment primary key,
    descricao varchar(100) not null
);

create table alunos(
	id int auto_increment primary key,
    nome varchar(120) not null
);

create table professores(
	id int auto_increment primary key,
    nome varchar(120) not null
);

create table matricula(
	id int auto_increment,
    id_aluno int not null,
    id_curso int not null,
    ano int not null,
    periodo int not null,
    primary key(id)
);

create table funcao(
	id int auto_increment,
    id_professor int not null,
    id_curso int not null,
    ano int not null,
    periodo int not null,
    salario decimal(18,2) not null,
    primary key(id)
);


create table notas(
	id int auto_increment primary key,
    id_matricula int not null,
    nota decimal(2,1)
);