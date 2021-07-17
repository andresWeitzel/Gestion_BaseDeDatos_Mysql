/*
----------------------------
-- Tienda de Indumentaria---
----------------------------
*/

/*
	Cuando se vende un articulo?
	
try{
	begin Transaction
	-El cliente debe existir.
	-El articulo debe existir y existir en stock.
	-Computar comisión a vendedor.
	-Hay dar de alta la factura.
	-Computar carga impositiva.
	-Cargar registro de auditoria.
	//-//Hay que descontar el stock.
	if(no hay Stock) rollback Transaction
	else descontar stock
	
	-Cargar registro en auditoria.
	-Cargar detalle.
	-Cargar registro en auditoria.
	commit Transaction
}catch(Exception e){
	-ocurrio un error
	rollback Transaction
}

*/


/*

-- --------------------------------
-- - Objetos a Administrar
-- --------------------------------
-- - Tablas             Tables
-- - NO EXISTEN LAS Secuencias  Sequences (Solo existen en Oracle)
-- - Restricciones      Constraints
-- - Indices            Indexes
-- - Vistas             Views
-- - Vistas Mat.        Materializeds Views
-- - Procedimientos     Procedures
-- - Funciones          Functions
-- - Disparadores       Triggers
-- - Usuarios           Users

-- ---------------------------------

-- ---------------------------------
-- Manipulacion de Objetos
-- Create Object
-- Alter Object
-- Drop Object
-- Replace  -- NO EXISTE REPLACE EN MY SQL


*/

use db_indumentaria;

select * from information_schema.TABLE_CONSTRAINTS where TABLE_SCHEMA='db_indumentaria';
-- select * from information_schema.TABLE_CONSTRAINTS where TABLE_SCHEMA='freedbtech_gestionBD';




/*
		Indice
		
		
		Tabla clientes
		
		id		nombre		apellido
		1		Juan		Perez
		2		Ana			Garcia
		3		Viviana		Lopez
		4		Jose		Soto
		5		Diego		Segovia
		7		Enzo		Franchescoli
		8		Laura		Salas
		9		Nicolas		Leon
		10		Mariano		Alonso
		11		Beatriz		Bonneli
		
		crear indice x apellido
		Alonso			10
		Bonneli			11
		Franschescoli	7
		Garcia			2
		Leon			9
		Lopez			3
		Perez			1
		Salas			8
		Segovia			5
		Soto			4


-- Indice Comun
create index I_clientes_ApellidoNombre 
	on clientes(apellido,nombre);

select * from clientes;
show tables;

-- consulta de catalogo
show index from clientes;
select * from information_schema.STATISTICS where INDEX_SCHEMA ='negocioWebRopa';

-- borrar un indice
drop index I_clientes_ApellidoNombre on clientes;

select * from cursos;


-- vistas
select * from articulos;

create view V_articulos as
	select id,descripcion,tipo,color,talle_num,stock,precio,temporada from articulos;

show tables;
-- consulta de catalogo
select * from information_schema.VIEWS where TABLE_SCHEMA = 'negocioWebRopa';

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











