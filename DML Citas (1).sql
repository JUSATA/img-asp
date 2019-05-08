--Abrir la base de datos
USE GestionCitas
GO

/* Agregar registros de PAIS */
SET IDENTITY_INSERT Pais ON
INSERT INTO Pais (Id,  Pais) VALUES( 1,'COLOMBIA');
INSERT INTO Pais (Id,  Pais) VALUES( 2,'ARGENTINA');
INSERT INTO Pais (Id,  Pais) VALUES( 3,'BOLIVIA');
INSERT INTO Pais (Id,  Pais) VALUES( 4,'BRASIL');
INSERT INTO Pais (Id,  Pais) VALUES( 5,'CANADA');
INSERT INTO Pais (Id,  Pais) VALUES( 6,'COSTA RICA');
INSERT INTO Pais (Id,  Pais) VALUES( 7,'REPUBLICA DOMINICANA');
INSERT INTO Pais (Id,  Pais) VALUES( 8,'CUBA');
INSERT INTO Pais (Id,  Pais) VALUES( 9,'CHILE');
INSERT INTO Pais (Id,  Pais) VALUES(10,'ECUADOR');
INSERT INTO Pais (Id,  Pais) VALUES(11,'ESTADOS UNIDOS DE AMÉRICA');
INSERT INTO Pais (Id,  Pais) VALUES(12,'GUATEMALA');
INSERT INTO Pais (Id,  Pais) VALUES(13,'HONDURAS');
INSERT INTO Pais (Id,  Pais) VALUES(14,'MÉXICO');
INSERT INTO Pais (Id,  Pais) VALUES(15,'NICARAGUA');
INSERT INTO Pais (Id,  Pais) VALUES(16,'PANAMA');
INSERT INTO Pais (Id,  Pais) VALUES(17,'PARAGUAY');
INSERT INTO Pais (Id,  Pais) VALUES(18,'PERU');
INSERT INTO Pais (Id,  Pais) VALUES(19,'URUGUAY');
INSERT INTO Pais (Id,  Pais) VALUES(20,'VENEZUELA');
INSERT INTO Pais (Id,  Pais) VALUES(21,'REINO UNIDO');
INSERT INTO Pais (Id,  Pais) VALUES(22,'ESPAÑA');
INSERT INTO PAIS (Id,  Pais) VALUES(23,'ITALIA');
INSERT INTO PAIS (Id,  Pais) VALUES(24,'FRANCIA');
SET IDENTITY_INSERT Pais OFF

SET IDENTITY_INSERT Sexo ON
INSERT INTO Sexo (Id, Sexo) VALUES(   0, 'Da igual!');
INSERT INTO Sexo (Id, Sexo) VALUES(   1, 'Masculino');
INSERT INTO Sexo (Id, Sexo) VALUES(   2, 'Femenino');
INSERT INTO Sexo (Id, Sexo) VALUES(   3, 'Transexual');
INSERT INTO Sexo (Id, Sexo) VALUES(   4, 'Homosexual');
INSERT INTO Sexo (Id, Sexo) VALUES(   5, 'Bisexual');
SET IDENTITY_INSERT Sexo OFF

SET IDENTITY_INSERT Contextura ON
INSERT INTO Contextura (Id, Contextura) VALUES(   0, 'No importa!');
INSERT INTO Contextura (Id, Contextura) VALUES(   1, 'Atlético');
INSERT INTO Contextura (Id, Contextura) VALUES(   2, 'Delgado');
INSERT INTO Contextura (Id, Contextura) VALUES(   3, 'Unos kilos de más');
INSERT INTO Contextura (Id, Contextura) VALUES(   4, 'Robusto');
SET IDENTITY_INSERT Contextura OFF

SET IDENTITY_INSERT Educacion ON
INSERT INTO Educacion (Id, Educacion) VALUES(   0, 'Ni siquiera la escuela');
INSERT INTO Educacion (Id, Educacion) VALUES(   1, 'Sólo la escuela');
INSERT INTO Educacion (Id, Educacion) VALUES(   2, 'Con Carrera Profesional');
INSERT INTO Educacion (Id, Educacion) VALUES(   3, 'Con postgrado');
SET IDENTITY_INSERT Educacion OFF

SET IDENTITY_INSERT Aficcion ON
INSERT INTO Aficcion (Id, Aficcion) VALUES(   0, 'No tengo!');
INSERT INTO Aficcion (Id, Aficcion) VALUES(   1, 'Música');
INSERT INTO Aficcion (Id, Aficcion) VALUES(   2, 'Pintura');
INSERT INTO Aficcion (Id, Aficcion) VALUES(   3, 'Lectura');
INSERT INTO Aficcion (Id, Aficcion) VALUES(   4, 'Cinéfilo');
INSERT INTO Aficcion (Id, Aficcion) VALUES(   5, 'Artesanías');
INSERT INTO Aficcion (Id, Aficcion) VALUES(   6, 'Cocinar');
INSERT INTO Aficcion (Id, Aficcion) VALUES(   7, 'Charlar');
INSERT INTO Aficcion (Id, Aficcion) VALUES(   8, 'Aficionado deportivo');
INSERT INTO Aficcion (Id, Aficcion) VALUES(   9, 'Practico deporte');
INSERT INTO Aficcion (Id, Aficcion) VALUES(   10, 'Conciertos de Musica');
INSERT INTO Aficcion (Id, Aficcion) VALUES(   11, 'Bailar');
INSERT INTO Aficcion (Id, Aficcion) VALUES(   12, 'Rumbear');
INSERT INTO Aficcion (Id, Aficcion) VALUES(   13, 'Viajar');
INSERT INTO Aficcion (Id, Aficcion) VALUES(   14, 'Tocar instrumento musical');
SET IDENTITY_INSERT Aficcion OFF