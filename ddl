/* CREACION DE BASE DE DATOS, TABLAS Y CONTENIDO*/
create database tp1;
use tp1;

create table empleados (
id_empleado int primary key auto_increment,
nombre varchar (150),
horas_max_diarias double,
rol varchar (150)
);
insert into empleados (nombre,horas_max_diarias,rol) values 
('pepe','8','desarrollador'),
('jose','12','project manager'),
('lola','12','administrador'),
('marmota','10','desarrollador'),
('felix','8','project manager');

create table cliente_proyecto (
id_proyecto int primary key auto_increment,
nombre_cliente varchar (150),
proyecto_nombre varchar (150),
precio_hora double
);

insert into cliente_proyecto(nombre_cliente, proyecto_nombre,precio_hora) values 
('google','app pagos','19.40'),
('mercadolibre','pagina web','12.80'),
('accenture','base de datos','13.50'),
('uces','app uces mejorada','10.20');


create table asignacion (
id_asignacion int primary key auto_increment,
empleado_id int,
proyecto_id int,
asi_fecha date,
asi_cant_horas double
);

create table liquidacion (
id_liquidacion int primary key auto_increment,
cliente int,
horas double,
periodo int,
total double
);
