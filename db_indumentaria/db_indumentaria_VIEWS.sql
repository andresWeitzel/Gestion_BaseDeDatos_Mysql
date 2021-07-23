/*
----------------------------
-- Tienda de Indumentaria---
----------------------------

========= VIEWS =============


*/

use db_indumentaria;


/*
-- ============== VISTAS CLIENTES ===============


--  Vista Clientes
create view VIEW_clientes 
	as select id,nombre,apellido,email,telefono 
	from clientes;


-- Consulta Vistas
select * from information_schema.VIEWS where TABLE_SCHEMA='db_indumentaria';



-- Borrar Vista Clientes
-- drop view VIEW_clientes;





-- ============== VISTAS ARTICULOS ===============


--  Vista Articulos
create view VIEW_articulos 
	as select id,categoria,descripcion,precio 
	from articulos;


-- Consulta Vistas
select * from information_schema.VIEWS where TABLE_SCHEMA='db_indumentaria';



-- Borrar Vista Articulos
-- drop view VIEW_articulos;

*/



-- ============== VISTAS ACCESORIOS DETALLES ===============


--  Vista Articulos Accesorios Detalles
create view VIEW_articulos_accesorios_detalles 

	as select articulos.id, articulos.descripcion, articulos.precio
	, articulos_accesorios_detalles.tipo, articulos_accesorios_detalles.color  
	
	from articulos
	
	inner join articulos_accesorios_detalles
	
	on articulos.id = articulos_accesorios_detalles.idArticulo;



--  Vista Articulos Accesorios Almacen
create view VIEW_articulos_accesorios_almacen 

	as select articulos.id, articulos.descripcion, articulos.precio
	, articulos.stock, articulos.stockMinimo, articulos.stockMaximo, articulos.costo 
	, articulos_accesorios_detalles.tipo
	
	from articulos
	
	inner join articulos_accesorios_detalles
	
	on articulos.id = articulos_accesorios_detalles.idArticulo;


-- Consulta Vistas
select * from information_schema.VIEWS where TABLE_SCHEMA='db_indumentaria';



-- Borrar Vista Articulos Accesorios Detalles
-- drop view VIEW_articulos_accesorios_detalles;

-- Borrar Vista Articulos Accesorios Almacen
-- drop view VIEW_articulos_accesorios_almacen;





-- ============== VISTAS CALZADOS DETALLES ===============


--  Vista Articulos Calzados Detalles
create view VIEW_articulos_calzados_detalles 

	as select articulos.id, articulos.descripcion, articulos.precio
	, articulos_calzados_detalles.tipo, articulos_calzados_detalles.usabilidad
	, articulos_calzados_detalles.numero , articulos_calzados_detalles.color 
	
	from articulos
	
	inner join articulos_calzados_detalles
	
	on articulos.id = articulos_calzados_detalles.idArticulo;



--  Vista Articulos Calzados Almacen
create view VIEW_articulos_calzados_almacen 

	as select articulos.id, articulos.descripcion, articulos.precio
	, articulos.stock, articulos.stockMinimo, articulos.stockMaximo, articulos.costo 
	, articulos_calzados_detalles.tipo, articulos_calzados_detalles.numero 
	
	from articulos
	
	inner join articulos_calzados_detalles
	
	on articulos.id = articulos_calzados_detalles.idArticulo;



-- Consulta Vistas
select * from information_schema.VIEWS where TABLE_SCHEMA='db_indumentaria';



-- Borrar Vista Articulos Calzados Detalles
-- drop view VIEW_articulos_calzados_detalles;

-- Borrar Vista Articulos Calzados Detalles
-- drop view VIEW_articulos_calzados_almacen;






/*
 drop view VIEW_articulos_accesorios_detalles;

 drop view VIEW_articulos_calzados_detalles;
 
 drop view VIEW_articulos_accesorios_almacen;
 
 drop view VIEW_articulos_calzados_almacen;

**/




/*

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
