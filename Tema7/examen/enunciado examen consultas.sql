-- Examen de consultas de 1º DAW


DROP DATABASE IF EXISTS Examen;

CREATE DATABASE Examen;

use Examen;


CREATE TABLE Cliente(
	Cod Varchar(4),
	Nombre Varchar(15) NOT NULL,
	Apellidos Varchar(30),
	Fecha_Nac date,
	constraint pk_Cliente PRIMARY KEY(Cod),
	INDEX indCliente(Apellidos)
);

CREATE TABLE Producto(
	Cod int auto_increment primary key,
	Descripción varchar(30),
	Sección enum('TEC','HOG','ILU'),
	Precio float
) auto_increment=1;

CREATE TABLE Compra(
	Cod_Cliente varchar(4),
	Codigo_Producto int,
	Cantidad int,
	Fecha datetime not null,
	constraint pk_Compra primary key(Cod_Cliente,Codigo_Producto,Fecha),
	constraint fk_fact_prod foreign key(Codigo_Producto) references Producto(Cod) ,
	constraint fk_Cod_Cliente foreign key(Cod_Cliente) references Cliente(Cod)
);

insert into Cliente (Cod, Nombre, Apellidos, Fecha_Nac) values ('111A', 'Alonso', 'Baena', '1955-08-15'); 
insert into Cliente (Cod, Nombre, Apellidos, Fecha_Nac) values ('222B', 'Ana', 'Ramírez', '1975-02-20'); 
insert into Cliente (Cod, Nombre, Apellidos, Fecha_Nac) values ('333C', 'Guillermo', 'Hermida', '1988-11-30'); 
insert into Cliente (Cod, Nombre, Apellidos, Fecha_Nac) values ('444D', 'Beatriz', 'Gutiérrez', '1953-02-23'); 
insert into Cliente (Cod, Nombre, Apellidos, Fecha_Nac) values ('555E', 'Elisa', 'Estrella', '1968-06-18'); 


insert into Producto (Cod, Descripción, Sección, Precio) values (NULL, 'Disco duro', 'TEC', 137.95); 
insert into Producto (Cod, Descripción, Sección, Precio) values (NULL, 'Batidora', 'HOG', 60.00);
insert into Producto (Cod, Descripción, Sección, Precio) values (NULL, 'Cafetera', 'HOG', 91.95); 
insert into Producto (Cod, Descripción, Sección, Precio) values (NULL, 'Lámpara de pie', 'ILU', 145.9); 
insert into Producto (Cod, Descripción, Sección, Precio) values (NULL, 'Tablet', 'TEC', 599.95);
insert into Producto (Cod, Descripción, Sección, Precio) values (NULL, 'Bombilla LED', 'ILU', 5.95);
insert into Producto (Cod, Descripción, Sección, Precio) values (NULL, 'Fluorescente', 'ILU', 12.50);
insert into Producto (Cod, Descripción, Sección, Precio) values (NULL, 'Calculadora', 'TEC', 9.95);


truncate Compra;
insert into Compra values('111A',3,2,'2020-02-27 09:24:46');
insert into Compra values('111A',4,1,'2020-02-27 09:25:46');
insert into Compra values('222B',1,5,'2020-01-27 09:24:46');
insert into Compra values('222B',2,1,'2020-01-27 09:25:46');
insert into Compra values('333C',5,1,'2020-03-27 09:24:46');
insert into Compra values('444D',3,1,'2020-02-25 10:24:46');
insert into Compra values('444D',2,1,'2020-02-25 09:24:46');
insert into Compra values('444D',6,1,'2020-02-25 09:24:46');
insert into Compra values('444D',7,2,'2020-02-25 09:24:46');
insert into Compra values('444D',8,3,'2020-02-25 09:24:46');


