
/* ----------------------------
 * -- Tienda de Indumentaria---
 * ----------------------------
 */

drop database if exists db_indumentaria;

create database db_indumentaria;

use db_indumentaria;


drop table if exists clientes;
drop table if exists facturas;
drop table if exists articulos;
drop table if exists detalles;


show tables;

/*
 * 
 #select version();
 
-- catalogo de tablas
select * from information_schema.TABLES where TABLE_SCHEMA = 'ropa';

-- catalogo de restricciones
select * from information_schema.TABLE_CONSTRAINTS where TABLE_SCHEMA ='gestion';

-- catalogo de vistas
select * from information_schema.VIEWS;
*/



create table clientes(
	id int auto_increment primary key,
	nombre varchar(20) not null,
	apellido varchar(20) not null,
	edad int,
	direccion varchar(50),
	email varchar(40),
	telefono varchar(25),
	tipoDocumento enum('DNI','LIBRETA_CIVICA','LIBRETA_ENROLAMIENTO','PASAPORTE'),
	numeroDocumento varchar(10)
);



create table facturas(
	id int auto_increment primary key,
	tipo enum('A','B','C','E'),
	numero bigint,
    fechaEmision TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	medioDePago enum('EFECTIVO','CHEQUE','TARJETA'),
	descripcion varchar(25),
 	idCliente int not null
);



create table articulos(
	id int auto_increment primary key,
	descripcion varchar(35) not null,
	categoria enum('CALZADO','ROPA','ACCESORIOS'),
	color varchar(20),
	talle varchar(4),
	numero char(3),
	stock int,
    stockMinimo int,
    stockMaximo int,
    costo double,
    precio double,
	temporada enum('VERANO','INVIERNO')
);

create table detalles(
	id int auto_increment primary key,
	idArticulo int not null,
	idFactura int not null,
	precio double,
	cantidad int
);




alter table clientes 
	add constraint CK_clientes_edad
    check(edad>=18 and edad<=120); 

alter table clientes
	add constraint U_clientes_TipoNumero
	unique(tipoDocumento,numeroDocumento);


-- creamos la restriccion FK facturas idCliente
alter table facturas
	add constraint FK_facturas_idCliente
    foreign key(idCliente)
    references clientes(id);

alter table facturas
	add constraint CK_facturas_numero
    check (numero>0);

/*
alter table facturas
	add constraint CK_facturas_fecha
	check (fecha >= (current_date()-5) and fecha<= current_date());
*/

alter table facturas 
	add constraint U_facturas_TipoNumero
    unique(tipo,numero);
   
alter table articulos
	add constraint CK_articulos_stock
    check (stock>=0);

alter table articulos
	add constraint CK_articulos_stockMin
    check (stockMin>0);
    
alter table articulos
	add constraint CK_articulos_stockMax
    check (stockMax>=stockMin);
    
alter table articulos
	add constraint CK_articulos_costo
    check (costo>=0);

alter table articulos
	add constraint CK_articulos_precio
    check (precio>=costo);
 


alter table detalles
	add constraint U_detallesIdArtIdFact
    unique(idArticulo,idFactura);

alter table detalles
	add constraint U_detalles_precio
    check(precio>=0);   
   
alter table detalles
	add constraint U_detalles_cantidad
    check(cantidad>=0);
   
alter table detalles
	add constraint FK_detalles_Articulos
    foreign key(idArticulo)
   	references articulos(id);
   
alter table detalles
	add constraint FK_detalles_Facturas
    foreign key(idFactura)
   	references facturas(id);   





