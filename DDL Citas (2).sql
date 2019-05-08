--Crear la base de datos
CREATE DATABASE GestionCitas
GO

--Abrir la base de datos
USE GestionCitas
GO

--Crear la tabla PAIS
CREATE TABLE Pais(
	Id int IDENTITY(1,1) NOT NULL,
	CONSTRAINT pkPais PRIMARY KEY (Id),
	Pais varchar(50) NOT NULL)

--Definir indice unico de PAIS
CREATE UNIQUE INDEX ixPais ON Pais(Pais)

--Crear la tabla SEXO
CREATE TABLE Sexo(
	Id int IDENTITY(1,1) NOT NULL,
	CONSTRAINT pkSexo PRIMARY KEY (Id),
	Sexo varchar(50) NOT NULL)

--Definir indice unico de SEXO
CREATE UNIQUE INDEX ixSexo ON Sexo(Sexo)


--Crear la tabla CONTEXTURA FISICA
CREATE TABLE Contextura(
	Id int IDENTITY(1,1) NOT NULL,
	CONSTRAINT pkContextura PRIMARY KEY (Id),
	Contextura varchar(50) NOT NULL
	)

--Definir indice unico de CONTEXTURA FISICA
CREATE UNIQUE INDEX ixContextura ON Contextura(Contextura)

--Crear la tabla EDUCACION
CREATE TABLE Educacion(
	Id int IDENTITY(1,1) NOT NULL,
	CONSTRAINT pkEducacion PRIMARY KEY (Id),
	Educacion varchar(50) NOT NULL)

--Definir indice unico de EDUCACION
CREATE UNIQUE INDEX ixEducacion ON Educacion(Educacion)

--Crear la tabla AFICCION
CREATE TABLE Aficcion(
	Id int IDENTITY(1,1) NOT NULL,
	CONSTRAINT pkAficcion PRIMARY KEY (Id),
	Aficcion varchar(50) NOT NULL)

--Definir indice unico de Aficcion
CREATE UNIQUE INDEX ixAficcion ON Aficcion(Aficcion)

--Crear la tabla LUGAR
CREATE TABLE Lugar(
	Id int IDENTITY(1,1) NOT NULL,
	CONSTRAINT pkLugar PRIMARY KEY (Id),
	Lugar varchar(50) NOT NULL,
	IdPais int NOT  NULL,
	CONSTRAINT fkLugar_Pais FOREIGN KEY (IdPais) REFERENCES Pais(Id))

--Definir indice unico de Lugar
CREATE UNIQUE INDEX ixLugar ON Lugar(IdPais, Lugar)

--Crear la tabla PERFIL
CREATE TABLE Perfil(
	Id int IDENTITY(1,1) NOT NULL,
	CONSTRAINT pkPerfil PRIMARY KEY (Id),
	Nombre varchar(50) NOT NULL,
	IdPais int NOT  NULL,
	CONSTRAINT fkPerfil_Pais FOREIGN KEY (IdPais) REFERENCES Pais(Id),
	IdSexo int NOT  NULL,
	CONSTRAINT fkPerfil_Sexo FOREIGN KEY (IdSexo) REFERENCES Sexo(Id),
	FechaNacimiento date NOT  NULL,
	Correo varchar(50) NOT NULL,
	IdEducacion int NOT  NULL,
	CONSTRAINT fkPerfil_Educacion FOREIGN KEY (IdEducacion) REFERENCES Educacion(Id),
	IdContextura int NOT  NULL,
	CONSTRAINT fkPerfil_Contextura FOREIGN KEY (IdContextura) REFERENCES Contextura(Id),
	Foto Image NULL,
	IdSexoInteres  int NOT  NULL,
	CONSTRAINT fkPerfil_SexoInteres FOREIGN KEY (IdSexoInteres) REFERENCES Sexo(Id),
	IdContexturaInteres int NOT  NULL,
	CONSTRAINT fkPerfil_ContexturaInteres FOREIGN KEY (IdContexturaInteres) REFERENCES Contextura(Id),
	Clave varchar(20)
	)

--Definir indice unico de PERFIL
CREATE UNIQUE INDEX ixPerfil ON Perfil(Correo)

--Crear la tabla AFICCIONES DEL PERFIL
CREATE TABLE PerfilAficcion(
	IdPerfil int NOT  NULL,
	IdAficcion int NOT  NULL,
	CONSTRAINT pkPerfilAficcion PRIMARY KEY (IdPerfil, IdAficcion),
	CONSTRAINT fkPerfilAficcion_Perfil FOREIGN KEY (IdPerfil) REFERENCES Perfil(Id),
	CONSTRAINT fkPerfilAficcion_Lugar FOREIGN KEY (IdAficcion) REFERENCES Aficcion(Id),
	Foto Image NULL
)

--Crear la tabla LUGARES CONOCIDOS Y POR CONOCER DEL PERFIL
CREATE TABLE PerfilLugar(
	IdPerfil int NOT  NULL,
	IdLugar int NOT  NULL,
	CONSTRAINT pkPerfilLugar PRIMARY KEY (IdPerfil, IdLugar),
	CONSTRAINT fkPerfilLugar_Perfil FOREIGN KEY (IdPerfil) REFERENCES Perfil(Id),
	CONSTRAINT fkPerfilLugar_Lugar FOREIGN KEY (IdLugar) REFERENCES Lugar(Id),
	Conocido bit DEFAULT(0),
	Foto Image NULL
)