-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!
/* para workbench - local - desenvolvimento */
CREATE DATABASE acquatec;

USE acquatec;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)
);

CREATE TABLE aviso (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
	descricao VARCHAR(150),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
);

create table aquario (
/* em nossa regra de negócio, um aquario tem apenas um sensor */
	id INT PRIMARY KEY AUTO_INCREMENT,
	descricao VARCHAR(300)
);

/* altere esta tabela de acordo com o que está em INSERT de sua API do arduino */

create table medida (
	id INT PRIMARY KEY AUTO_INCREMENT,
	dht11_umidade DECIMAL,
	dht11_temperatura DECIMAL,
	luminosidade DECIMAL,
	lm35_temperatura DECIMAL,
	chave TINYINT,
	momento DATETIME,
	fk_aquario INT,
	FOREIGN KEY (fk_aquario) REFERENCES aquario(id)
);


/* para sql server - remoto - produção */
CREATE TABLE usuario (
	id INT PRIMARY KEY IDENTITY(1,1),
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
);

CREATE TABLE aviso (
	id INT PRIMARY KEY IDENTITY(1,1),
	titulo VARCHAR(100),
	descricao VARCHAR(150),
	fk_usuario INT FOREIGN KEY REFERENCES usuario(id)
);

create table aquario (
/* em nossa regra de negócio, um aquario tem apenas um sensor */
	id INT PRIMARY KEY IDENTITY(1,1),
	descricao VARCHAR(300)
);

/* altere esta tabela de acordo com o que está em INSERT de sua API do arduino */

CREATE TABLE medida (
	id INT PRIMARY KEY IDENTITY(1,1),
	dht11_umidade DECIMAL,
	dht11_temperatura DECIMAL,
	luminosidade DECIMAL,
	lm35_temperatura DECIMAL,
	chave TINYINT,
	momento DATETIME,
	fk_aquario INT FOREIGN KEY REFERENCES aquario(id)
);

























create database projetoIndividual;

use projetoIndividual;


create table usuario (
	idUsuario int primary key auto_increment,
    nome varchar(45),
    email varchar(45),
    senha varchar(45)
);

create table preferencia (
	idPreferencia int primary key auto_increment,
    pista varchar(45),
    motor varchar(45),
    chassi varchar(45)
);

create table conexao (
	fkUsuario int,
    fkPreferencia int,
    foreign key (fkUsuario) references usuario (idUsuario),
    foreign key (fkPreferencia) references preferencia (idPreferencia)
);


insert into usuario (nome, email, senha) values 
('Eduardo','eduardo@teste.com',12),
('Chico','chico@teste.com',123);


insert into preferencia (pista, motor, chassi) values 
('Interlagos','Iame','Mini'),
('Aldeia da Serra','Rotax','CRG');

insert into conexao values
(1,1),
(2,2);

select * from usuario;

select * from preferencia;

select * from conexao;

select usuario.*, preferencia.motor,conexao.* 
	from usuario 
		join conexao 
			on usuario.idUsuario = conexao.fkUsuario
		join preferencia
			on preferencia.idPreferencia = conexao.fkPreferencia;
            
select usuario.*, preferencia.chassi,conexao.* 
	from usuario 
		join conexao 
			on usuario.idUsuario = conexao.fkUsuario
		join preferencia
			on preferencia.idPreferencia = conexao.fkPreferencia;
            
select usuario.*, preferencia.pista,conexao.* 
	from usuario 
		join conexao 
			on usuario.idUsuario = conexao.fkUsuario
		join preferencia
			on preferencia.idPreferencia = conexao.fkPreferencia;
