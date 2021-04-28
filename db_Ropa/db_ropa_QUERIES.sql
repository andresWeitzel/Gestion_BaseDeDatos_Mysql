/*
--------------------
-- Tienda de ropa---
--------------------
*/

/*
	Remote Host
	freedb.tech

	Database Name
	freedbtech_gestionBD

	Username
	freedbtech_gestionBD

	Password
	centro8
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

use db_ropa;

select * from information_schema.TABLE_CONSTRAINTS where TABLE_SCHEMA='db_ropa';
-- select * from information_schema.TABLE_CONSTRAINTS where TABLE_SCHEMA='freedbtech_gestionBD';

-- borramos una constraint
alter table articulos drop constraint CK_articulos_precio;


/*
Que es un indice?
	Ayuda a una busqueda más rapida en una tabla

*/













