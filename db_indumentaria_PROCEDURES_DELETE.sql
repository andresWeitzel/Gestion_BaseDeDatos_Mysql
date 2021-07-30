

/*
----------------------------
-- Tienda de Indumentaria---
----------------------------

========= PROCEDURES DELETES =============


*/


use db_indumentaria;


drop procedure if exists SP_delete_articulos;

drop procedure if exists SP_delete_articulos_accesorios_detalles;

drop procedure if exists SP_delete_articulos_calzados_detalles;

drop procedure if exists SP_delete_articulos_ropa_detalles;

drop procedure if exists SP_delete_clientes;

drop procedure if exists SP_delete_facturas;

drop procedure if exists SP_delete_facturas_detalles;

drop procedure if exists SP_procedures;







-- ============== ELIMINAR ARTICULO POR ID ===============

DELIMITER $$

create procedure SP_delete_articulos(
	param_sp_id int

)


begin 
	
	delete from articulos  where id = param_sp_id;

end

$$

DELIMITER ;

-- Llamamos al procedimiento
call SP_delete_articulos(11);





-- ============== ELIMINAR ARTICULOS ACCESORIOS DETALLES POR ID ===============

DELIMITER $$

create procedure SP_delete_articulos_accesorios_detalles(
	param_sp_id int
	
	)


begin 
	
		delete from articulos_accesorios_detalles  where id = param_sp_id;


end

$$

DELIMITER ;

-- Llamamos al procedimiento
call SP_delete_articulos_accesorios_detalles(3);





-- ============== ELIMINAR ARTICULOS CALZADOS DETALLES POR ID ===============

DELIMITER $$

create procedure SP_delete_articulos_calzados_detalles(
	param_sp_id int
	)


begin 
	
	delete from articulos_calzados_detalles  where id = param_sp_id;

end

$$

DELIMITER ;

-- Llamamos al procedimiento
call SP_delete_articulos_calzados_detalles(4);








-- ============== ELIMINAR CLIENTES POR ID ===============

DELIMITER $$

create procedure SP_delete_clientes(
	param_sp_id int
	)


begin 
	
	delete from clientes  where id = param_sp_id;

end

$$

DELIMITER ;

-- Llamamos al procedimiento
call SP_delete_clientes(8);








-- ============== ELIMINAR FACTURAS POR ID===============


DELIMITER $$

create procedure SP_delete_facturas(
	param_sp_id	 int
	)

begin 
	
	delete from facturas  where id = param_sp_id;

end

$$

DELIMITER ;


-- ============== (SE CREA ARTICULO/CLIENTE PARA PODER BORRAR FACTURA)===============


-- === ARTICULO INSERTADO POR PROCEDIMIENTO 01 PARA ELIMINACION ===

-- Seteamos los parametros a Ingresar
set @param_sp_categoria='CALZADO';
set @param_sp_descripcion='ASAS';
set @param_sp_precio=2222;
set @param_sp_stock=10;
set @param_sp_stockMinimo=4;
set @param_sp_stockMaximo=10;
set @param_sp_costo=22100.00;


-- Llamamos al procedimiento
call SP_insert_articulos(
	@param_sp_categoria
	,@param_sp_descripcion
	,@param_sp_precio
	,@param_sp_stock
	,@param_sp_stockMinimo
	,@param_sp_stockMaximo
	,@param_sp_costo);



-- === CLIENTE INSERTADO POR PROCEDIMIENTO 01 PARA ELIMINACION===

-- Seteamos los parametros a Ingresar
set @param_sp_nombre= 'AS' ;
set @param_sp_apellido='AS';
set @param_sp_edad= 35;
set @param_sp_direccion= 'ASASA';
set @param_sp_email= 'rASASASza2020@gmail.com';
set @param_sp_telefono= '56479878';
set @param_sp_tipoDocumento= 'DNI';
set @param_sp_numeroDocumento= '64789084';


-- Llamamos al procedimiento
call SP_insert_clientes(
	@param_sp_nombre
	,@param_sp_apellido
	,@param_sp_edad
	,@param_sp_direccion
	,@param_sp_email
	,@param_sp_telefono
	,@param_sp_tipoDocumento
	,@param_sp_numeroDocumento);


-- === FACTURA INSERTADA POR PROCEDIMIENTO 01 PARA ELIMINACION ===

-- Seteamos los parametros a Ingresar
set @param_sp_idCliente= 9 ;
set @param_sp_idArticulo= 12;
set @param_sp_precio= 4444;
set @param_sp_cantidad= 2;


-- Llamamos al procedimiento
call SP_insert_facturas(
	@param_sp_idCliente
	,@param_sp_idArticulo
	,@param_sp_precio
	,@param_sp_cantidad

	);





-- Llamamos al procedimiento
call SP_delete_facturas(6);







-- ============== ELIMINAR FACTURAS DETALLES POR ID ===============

DELIMITER $$

create procedure SP_delete_facturas_detalles(
	param_sp_id				int

	)



begin 
	
	delete from facturas_detalles  where id = param_sp_id;

end

$$

DELIMITER ;

-- Llamamos al procedimiento
call SP_delete_facturas_detalles(6);




-- ============== PROCEDIMIENTOS SCHEMA ===============

DELIMITER $$

	create procedure SP_procedures()
	
	
    begin
	
	    SELECT * FROM INFORMATION_SCHEMA.routines where routine_schema='db_indumentaria';
    
    end

$$

DELIMITER ;

-- Llamamos al procedimiento
call SP_procedures();






