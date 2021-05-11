/*
----------------------------
-- Tienda de Indumentaria---
----------------------------
*/


use db_indumentaria;

insert into clientes(id,nombre,apellido,edad,direccion,email,telefono,tipoDocumento,numeroDocumento) values 

	(1,'Juan','Perez',25,'Velez Dias 1123','juanPerezDump@gmail.com',1167456711,'DNI',67899076),
	(2,'Miguelina','Candia',25,'Porta 123','MiguelinaCandia@gmail.com',1165780912,'DNI',45980467);



insert into facturas(id,tipo,numero,fechaEmision,medioDePago,descripcion,idCliente) values 
	
	(1,'A',9993028302,now(),'EFECTIVO','En un solo pago',1),
	(2,'B',7684999033,now(),'TARJETA','Debito',2);



insert into articulos(id,descripcion,categoria,color,talle,numero,stock,stockMinimo,stockMaximo,costo,precio,temporada) values
	(1,'Sweater Blanco','ROPA','Blanco','M',null,25,5,120,1900.00,2500.00,'INVIERNO'),
	(2,'Sombrero Vifu','ACCESORIOS','Gris',null,3,15,2,120,1000.00,1500.00,'INVIERNO');



insert into detalles (idArticulo, idFactura, precio, cantidad) values 
	(1,1,2500,1),
	(2,2,3000,2);


