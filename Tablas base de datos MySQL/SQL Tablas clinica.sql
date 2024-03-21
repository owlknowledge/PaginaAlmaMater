create database asistente;

use asistente;

create table equipo (
	id int not null auto_increment,
    nombre varchar (300),
    marca varchar (300),
    modelo varchar (300),
    serie varchar (300),
    propietario varchar (300),
    fecha_fabricacion date,
    fecha_ingreso date,
    condicion_ingreso varchar (300),
    riesgo varchar (300),
    id_invima int not null unique,
    id_area int not null,
    primary key (id)
);

create table registro_invima(
	id int not null auto_increment,
    numero_registro varchar(255),
    vigencia date,
    fecha date,
    evidencia_fotografica varchar(255),
    evidencia_textual text,
    evidencia_documento varchar(255),
    id_equipo int not null unique,
    primary key(id)
);

create table eventos (
	id int not null auto_increment,
    tipo_evento enum('leve', 'moderado', 'severo'),
    estado_evento text,
    fecha date,
    evidencia_fotografica varchar(255),
    evidencia_textual text,
    evidencia_documento varchar(255),
    id_equipo int not null,
    primary key (id)
);


create table areas (
	id int not null auto_increment,
    nombre_area varchar (255),
    primary key (id)
);

create table calibraciones (
	id int not null auto_increment,
    estado varchar (255),
    fecha date,
    evidencia_fotografica varchar(255),
    evidencia_textual text,
    evidencia_documento varchar(255),
    id_equipo int not null,
    primary key (id)
);

create table mantenimientos (
	id int not null auto_increment,
    tipo_mantenimiento enum('preventivo', 'çorrectivo', 'predictivo'),
    estado varchar (255),
    fecha date,
    evidencia_fotografica varchar(255),
    evidencia_textual text,
    evidencia_documento varchar(255),
    id_equipo int not null,
    primary key (id)
);

create table reportes_mensuales (
	id int not null auto_increment,
    tareas_realizadas text,
    tareas_pendientes text,
    fecha_reporte date,
    primary key (id)
);

create table nuevas_consultas (
	id int not null auto_increment,
    tipo_consulta text,
    fecha date,
    primary key (id)
);

create table tecnovigilancia (
	id int not null auto_increment,
    solicitudes text,
    orden_trabajo text,
    reporte text,
    fecha date,
    evidencia_fotografica varchar(255),
    evidencia_textual text,
    evidencia_documento varchar(255),
    id_equipo int not null,
    primary key (id)
);

create table suficiencia (
	id int not null auto_increment,
    cumple enum ('SI', 'NO'),
    fecha date,
	evidencia_fotografica varchar(255),
    evidencia_textual text,
    evidencia_documento varchar(255),
    id_area int not null,
    primary key (id)
);

create table dias_notificacion (
	id int not null auto_increment,
    çategoria varchar(255),
    tipo varchar(255),
    dias int,
    primary key (id)
);

create table usuarios (
id int not null auto_increment,
nombre varchar(255),
usuario varchar(255),
clave varchar(255),
correo varchar(255),
primary key (id)
);