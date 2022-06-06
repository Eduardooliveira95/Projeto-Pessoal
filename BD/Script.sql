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

