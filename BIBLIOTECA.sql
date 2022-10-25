create database biblioteca;
use biblioteca;

create table biblioteca(
id_biblioteca int auto_increment,
nome varchar(25),
cnpj varchar(25),
endereco varchar(25),
telefone varchar(25),
email varchar(25),
estado varchar(2),
autor_id int,
editora_id int,
primary key(id_biblioteca)
)default charset = utf8;

create table autores(
id_autor int auto_increment,
nome_autor varchar(25),
telefone varchar(25),
endereco varchar(25),
primary key(id_autor)
)default charset = utf8;

create table editora(
id_editora int auto_increment,
nome_editora varchar(25),
telefone varchar(25),
endereco varchar(25),
primary key(id_editora)
)default charset = utf8;

create table livros(
id_livro int auto_increment,
nome_livro varchar(25),
descricao varchar(25),
primary key(id_livro)
)default charset = utf8;

create table registro(
id_registro int auto_increment,
livro_id int,
area_conhecimento varchar(60),
data_fab date,
primary key(id_registro)
)default charset = utf8;

create table usuarios(
id_usuario int auto_increment,
tipo_usuario enum('Professor','Aluno','Funcionário'),
nome varchar(50),
cpf varchar(11),
data_nasc date,
telefone varchar(20),
endereco varchar(50),
cidade varchar(30),
estado varchar(2),
primary key(id_usuario)
)default charset=utf8;

create table cod_fornecimento(
id_cod_fornecimento int auto_increment,
editora_id int,
primary key(id_cod_fornecimento)
)default charset=utf8;

create table cod_emprestimo(
id_cod_emprestimo int auto_increment,
registro_id int,
livro_id int,
primary key(id_cod_emprestimo)
)default charset=utf8;

