/*
--------------------
-- Tienda de ropa---
--------------------
*/


use db_ropa;

insert into clientes (nombre,apellido) values ('Juan','Perez');

insert into facturas (letra,numero,medioDePago,idCliente) 
	values ('A',1,'EFECTIVO',1);

insert into facturas (letra,numero,medioDePago,idCliente,fecha)
	values ('A',2,'EFECTIVO',1,'2020-06-20');

