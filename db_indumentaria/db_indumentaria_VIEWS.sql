/*
----------------------------
-- Tienda de Indumentaria---
----------------------------

========= VIEWS =============


*/

use db_indumentaria;



-- ============== VISTAS CLIENTES ===============


--  Vista Clientes
create view VIEW_clientes 
	as select id,nombre,apellido,email,telefono 
	from clientes;


-- Consulta Vistas
select * from information_schema.VIEWS where TABLE_SCHEMA='db_indumentaria';



-- Borrar Vista Clientes
-- drop view VIEW_clientes;




/*

select * from V_articulos;
insert into V_articulos values (null,'Remera','ROPA','Rojo','1',10,100,'VERANO');
delete from articulos;

describe articulos;

create view V_total as
	select c.id idCliente ,concat(c.apellido,' ',c.nombre) nombre, c.direccion, c.email, c.telefono, 
		c.tipoDocumento, c.numeroDocumento, f.letra , f.numero , f.fecha, f.medioDePago, 
		(select sum(precio*cantidad) from detalles where idFactura=f.id) monto,
		d.precio precioVenta, d.cantidad , a.id idArticulo, a.descripcion, a.color, a.precio, a.talle_num, a.temporada,
		a.tipo, a.stock, a.stockMin, a.stockMax 
		from clientes c join facturas f on c.id=f.idCliente 
		join detalles d on f.id=d.idFactura 
		join articulos a on d.idArticulo=a.id;
	
select * from V_total;

create table temporal 
	select c.id idCliente ,concat(c.apellido,' ',c.nombre) nombre, c.direccion, c.email, c.telefono, 
		c.tipoDocumento, c.numeroDocumento, f.letra , f.numero , f.fecha, f.medioDePago, 
		(select sum(precio*cantidad) from detalles where idFactura=f.id) monto,
		d.precio precioVenta, d.cantidad , a.id idArticulo, a.descripcion, a.color, a.precio, a.talle_num, a.temporada,
		a.tipo, a.stock, a.stockMin, a.stockMax 
		from clientes c join facturas f on c.id=f.idCliente 
		join detalles d on f.id=d.idFactura 
		join articulos a on d.idArticulo=a.id;
	
	show tables;
select * from temporal;


		 
*/
