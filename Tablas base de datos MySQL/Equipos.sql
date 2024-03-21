create database equipos;
show databases;
use equipos;
CREATE TABLE equipos (
id int,
Marca varchar (255),
Modelo varchar (255),
Serie varchar (255),
Registro_nvima varchar (255),
PRIMARY KEY (id)
);
INSERT INTO equipos (Marca, Modelo, Serie) VALUES ('Stryker','B11','12345');