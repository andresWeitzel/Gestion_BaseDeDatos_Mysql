

/*
----------------------------
-- Tienda de Indumentaria---
----------------------------

========= PROCEDURES UPDATES =============

Crear los procedimientos almacenados de insert delete y update
 para la base de datos negocioWebRopa

*/


use db_indumentaria;

drop procedure if exists SP_update_articulos_precio_valor_agregado;

drop procedure if exists SP_update_articulos_precio;

drop procedure if exists SP_update_articulos;

drop procedure if exists SP_update_articulos_accesorios_detalles;

drop procedure if exists SP_update_articulos_calzados_detalles;

drop procedure if exists SP_update_articulos_ropa_detalles;

drop procedure if exists SP_update_clientes;

drop procedure if exists SP_update_facturas;

drop procedure if exists SP_update_facturas_precio_iva;

drop procedure if exists SP_update_facturas_detalles;

drop procedure if exists SP_procedures;









-- ============== ACTUALIZAR ARTICULOS PRECIO VALOR AGREGADO ===============

-- costo de presentacion, demanda, etc

DELIMITER $$

create procedure SP_update_articulos_precio_valor_agregado()

begin 
	
	update articulos set precio = precio + (precio * 0.15) ;-- Se suma el 15% del agregado


end

$$

DELIMITER ;

-- Llamamos al procedimiento
call SP_update_articulos_precio_valor_agregado();






-- ============== ACTUALIZAR PRECIO POR ARTICULO===============

DELIMITER $$

create procedure SP_update_articulos_precio(
	param_sp_id int
	,param_sp_precio double
)


begin 
	
	update articulos set precio = param_sp_precio 
	
		where id = param_sp_id;


end

$$

DELIMITER ;

-- Llamamos al procedimiento
call SP_update_articulos_precio(1,4000);



-- ============== ACTUALIZAR ARTICULO POR CAMPO DESEADO ===============

DELIMITER $$

create procedure SP_update_articulos(
	param_sp_id int
	,param_sp_categoria 		enum('CALZADO','ROPA','ACCESORIOS')
	,param_sp_descripcion	varchar(35)
	,param_sp_precio			double
	,param_sp_stock			int
	,param_sp_stockMinimo	int
	,param_sp_stockMaximo	int
	,param_sp_costo			double
)


begin 
	
	update articulos set 
		categoria = param_sp_categoria
		,descripcion = param_sp_descripcion
		,precio = param_sp_precio
		,stock = param_sp_stock
		,stockMinimo = param_sp_stockMinimo
		,stockMaximo = param_sp_stockMaximo
		,costo = param_sp_costo
	
		where id = param_sp_id;


end

$$

DELIMITER ;

-- Llamamos al procedimiento
call SP_update_articulos(5,'ACCESORIOS','Sombrero Vifu juk9033', 3388, 3, 3, 20, 1000);




-- ============== ACTUALIZAR ARTICULOS ACCESORIOS DETALLES POR CAMPO DESEADO ===============

DELIMITER $$

create procedure SP_update_articulos_accesorios_detalles(
	param_sp_id int
	,param_sp_idArticulo int
	,param_sp_tipo varchar(20)
	,param_sp_color varchar(20)
	
	)


begin 
	
	update articulos_accesorios_detalles set 
		idArticulo = param_sp_idArticulo
		,tipo = param_sp_tipo
		,color = param_sp_color
	
		where id = param_sp_id;


end

$$

DELIMITER ;

-- Llamamos al procedimiento
call SP_update_articulos_accesorios_detalles(1, 5, 'Sombrero','Blanco');






-- ============== ACTUALIZAR ARTICULOS CALZADOS DETALLES POR CAMPO DESEADO ===============

DELIMITER $$

create procedure SP_update_articulos_calzados_detalles(
	param_sp_id int
	,param_sp_idArticulo int
	,param_sp_tipo varchar(20) 
	,param_sp_usabilidad varchar(20)
	,param_sp_numero char(3)
	,param_sp_color varchar(20)
	)


begin 
	
	update articulos_calzados_detalles set 
		idArticulo = param_sp_idArticulo
		,tipo = param_sp_tipo
		,usabilidad = param_sp_usabilidad
		,numero =param_sp_numero
		,color = param_sp_color
	
		where id = param_sp_id;


end

$$

DELIMITER ;

-- Llamamos al procedimiento
call SP_update_articulos_calzados_detalles(1, 3, 'Zapatillas', 'Deportivo', 40,'Blanco');





-- ============== ACTUALIZAR ARTICULOS ROPA DETALLES POR CAMPO DESEADO ===============

DELIMITER $$

create procedure SP_update_articulos_ropa_detalles(
	param_sp_id int
	,param_sp_idArticulo int
	,param_sp_tipo varchar(20) 
	,param_sp_usabilidad varchar(20)
	,param_sp_talle varchar(4)
	,param_sp_temporada enum('VERANO','INVIERNO')
	,param_sp_color varchar(20)
	)


begin 
	
	update articulos_ropa_detalles set 
		idArticulo = param_sp_idArticulo
		,tipo = param_sp_tipo
		,usabilidad = param_sp_usabilidad
		,talle = param_sp_talle
		,temporada = param_sp_temporada
		,color = param_sp_color
	
		where id = param_sp_id;


end

$$

DELIMITER ;

-- Llamamos al procedimiento
call SP_update_articulos_ropa_detalles(1, 1, 'Abrigo', 'Formal', 'M', 'INVIERNO', 'Gris');









-- ============== ACTUALIZAR CLIENTES POR CAMPO DESEADO ===============

DELIMITER $$

create procedure SP_update_clientes(
	param_sp_id int
	,param_sp_nombre varchar(20)
	,param_sp_apellido varchar(20) 
	,param_sp_edad int
	,param_sp_direccion varchar(50)
	,param_sp_email varchar(40)
	,param_sp_telefono varchar(25)
	,param_sp_tipoDocumento enum('DNI','LIBRETA_CIVICA','LIBRETA_ENROLAMIENTO','PASAPORTE')
	,param_sp_numeroDocumento varchar(10)
	)


begin 
	
	update clientes set 
		id = param_sp_id
		,nombre = param_sp_nombre
		,apellido = param_sp_apellido
		,edad = param_sp_edad
		,direccion = param_sp_direccion
		,email = param_sp_email
		,telefono = param_sp_telefono
		,tipoDocumento = param_sp_tipoDocumento 
		,numeroDocumento = param_sp_numeroDocumento 
		
		where id = param_sp_id;


end

$$

DELIMITER ;

-- Llamamos al procedimiento
call SP_update_clientes(1, 'Juan', 'Perez', 26, 'Velez Diaz 1123'
		, 'JuanPerezSe@gmail.com', '1167456711', 'DNI', '67899076');





-- ============== ACTUALIZAR FACTURAS POR CAMPO DESEADO ===============

DELIMITER $$

create procedure SP_update_facturas(
	param_sp_id				int
	 ,param_sp_idCliente		int 	
	,param_sp_idArticulo	int
	,param_sp_precio		double
	,param_sp_cantidad		int
	
	)


begin 
	
	update facturas set 
		id = param_sp_id
		,idCliente = param_sp_idCliente		
		,idArticulo = param_sp_idArticulo
		,precio = param_sp_precio
		,cantidad = param_sp_cantidad	
		
		where id = param_sp_id;


end

$$

DELIMITER ;

-- Llamamos al procedimiento
call SP_update_facturas(1, 1, 1, 10000, 2);



-- ============== ACTUALIZAR FACTURAS PRECIO IVA ===============

DELIMITER $$

create procedure SP_update_facturas_precio_iva()

begin 
	
	update facturas set precio = precio + (precio * 0.21) ;-- Se suma el 21%


end

$$

DELIMITER ;

-- Llamamos al procedimiento
call SP_update_facturas_precio_iva();





-- ============== ACTUALIZAR FACTURAS DETALLES POR CAMPO DESEADO===============

DELIMITER $$

create procedure SP_update_facturas_detalles(
	param_sp_id				int
	,param_sp_idFactura		int 	
	,param_sp_tipo 			enum('A','B','C','E')
	,param_sp_numero 		bigint
    ,param_sp_fechaEmision 	TIMESTAMP
	,param_sp_medioDePago 	enum('EFECTIVO','CHEQUE','TARJETA')
	,param_sp_descripcion 	varchar(25)
	
	)


begin 
	
	update facturas_detalles set 
		idFactura = param_sp_idFactura	 	
		,tipo = param_sp_tipo 		
		,numero = param_sp_numero 	
	    ,fechaEmision = param_sp_fechaEmision
		,medioDePago = param_sp_medioDePago 
		,descripcion = param_sp_descripcion 	
			
		where id = param_sp_id;


end

$$

DELIMITER ;

-- Llamamos al procedimiento
call SP_update_facturas_detalles(1, 1, 'B', 9993028302
	, '2021-07-27 14:23:09', 'EFECTIVO', null);





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





