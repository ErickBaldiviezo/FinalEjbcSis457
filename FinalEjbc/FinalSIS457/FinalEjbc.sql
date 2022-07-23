Create database FinalEjbc

Use [master]
GO
Create login [usrfinal] with password='12345678',
	default_database = [FinalEjbc],
	check_expiration=off,
	check_policy=On
GO

USE [FinalEjbc]
GO
Create user [usrfinal]For login [usrfinal]
GO
use [FinalEjbc]
GO
Alter role [db_owner] add member [usrfinal]
GO

DROP TABLE Serie

CREATE TABLE Serie (
	id INT Not null primary key identity (1,1),
	titulo varchar(250) not null,
	sinopsis varchar(5000) not null,
	director varchar(100) not null,
	duracion int not null,
	fechaEstreno Date not null,
	UsuarioRegistro varchar(12) null default SUSER_SNAME(),
	registroActivo bit null default 1
);

Create table Usuario (
	id INT not null primary key identity (1,1),
	usuario varchar (12) not null,
	clave varchar (250) not null,
	rol varchar (20) not null,
	registroActivo bit
);



Select * From Usuario
Select * From Serie

Insert into Serie Values ('Los Simpsons', 'Pruebas', 'David Silverman', 30, GetDate(), 'Erick', 1)
Insert into Usuario Values ('EJBC', '123456', 'Admin', 1)
