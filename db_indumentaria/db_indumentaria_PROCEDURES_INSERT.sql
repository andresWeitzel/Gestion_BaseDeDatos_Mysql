
/*
----------------------------
-- Tienda de Indumentaria---
----------------------------

========= PROCEDURES INSERTS=============

Crear los procedimientos almacenados de insert delete y update
 para la base de datos negocioWebRopa

*/



use db_indumentaria;

drop procedure if exists SP_insert_articulos;
drop procedure if exists SP_insert_articulos_ropa_detalles;
drop procedure if exists SP_insert_articulos_calzados_detalles;
drop procedure if exists SP_insert_clientes;
drop procedure if exists SP_insert_facturas;
drop procedure if exists SP_insert_facturas_detalles;
 




-- ============== INSERTAR ARTICULOS ===============

DELIMITER $$

create procedure SP_insert_articulos(
	 param_sp_categoria 		enum('CALZADO','ROPA','ACCESORIOS')
	,param_sp_descripcion	varchar(35)
	,param_sp_precio			double
	,param_sp_stock			int
	,param_sp_stockMinimo	int
	,param_sp_stockMaximo	int
	,param_sp_costo			double
)

begin 
	
	insert into articulos (
		categoria
		,descripcion
		,precio
		,stock
		,stockMinimo
		,stockMaximo
		,costo
		)
	values
		(
		param_sp_categoria
		,param_sp_descripcion
		,param_sp_precio
		,param_sp_stock
		,param_sp_stockMinimo
		,param_sp_stockMaximo
		,param_sp_costo
		);

end

$$

DELIMITER ;

-- === ARTICULO INSERTADO POR PROCEDIMIENTO 01 ===

-- Seteamos los parametros a Ingresar
set @param_sp_categoria='ROPA';
set @param_sp_descripcion='Sweater Negro';
set @param_sp_precio=3500.00;
set @param_sp_stock=10;
set @param_sp_stockMinimo=4;
set @param_sp_stockMaximo=10;
set @param_sp_costo=2100.00;


-- Llamamos al procedimiento
call SP_insert_articulos(
	@param_sp_categoria
	,@param_sp_descripcion
	,@param_sp_precio
	,@param_sp_stock
	,@param_sp_stockMinimo
	,@param_sp_stockMaximo
	,@param_sp_costo);



-- === ARTICULO INSERTADO POR PROCEDIMIENTO 02 ===

-- Seteamos los parametros a Ingresar
set @param_sp_categoria='CALZADO';
set @param_sp_descripcion='Botas jukiock';
set @param_sp_precio=7500.00;
set @param_sp_stock=10;
set @param_sp_stockMinimo=2;
set @param_sp_stockMaximo=30;
set @param_sp_costo=3200.00;


-- Llamamos al procedimiento
call SP_insert_articulos(
	@param_sp_categoria
	,@param_sp_descripcion
	,@param_sp_precio
	,@param_sp_stock
	,@param_sp_stockMinimo
	,@param_sp_stockMaximo
	,@param_sp_costo);




-- ============== INSERTAR ROPA DETALLES ===============

DELIMITER $$

create procedure SP_insert_articulos_ropa_detalles(
	 param_sp_idArticulo	int	
	,param_sp_tipo 			varchar(20)
	,param_sp_usabilidad	varchar(20)
	,param_sp_talle			varchar(4)
	,param_sp_temporada		enum('VERANO','INVIERNO')
	,param_sp_color			varchar(20)
)

begin 
	
	insert into articulos_ropa_detalles (
		idArticulo
		,tipo 
		,usabilidad 
		,talle 
		,temporada 
		,color 
		)
	values
		(
		 param_sp_idArticulo		
		,param_sp_tipo 			
		,param_sp_usabilidad	
		,param_sp_talle
		,param_sp_temporada
		,param_sp_color			
		);

end

$$

DELIMITER ;

-- === ARTICULO ROPA DETALLE INSERTADO POR PROCEDIMIENTO 01 ===

-- Seteamos los parametros a Ingresar
set @param_sp_idArticulo= 7 ;
set @param_sp_tipo='Abrigo';
set @param_sp_usabilidad='Formal';
set @param_sp_talle='S';
set @param_sp_temporada= 'INVIERNO';
set @param_sp_color= 'Negro';


-- Llamamos al procedimiento
call SP_insert_articulos_ropa_detalles(
	@param_sp_idArticulo
	,@param_sp_tipo
	,@param_sp_usabilidad
	,@param_sp_talle
	,@param_sp_temporada
	,@param_sp_color);








-- ============== INSERTAR CALZADOS DETALLES ===============

DELIMITER $$

create procedure SP_insert_articulos_calzados_detalles(
	 param_sp_idArticulo	int 	
	,param_sp_tipo 			varchar(20)
	,param_sp_usabilidad	varchar(20)
	,param_sp_numero		char(3)
	,param_sp_color			varchar(20)
)

begin 
	
	insert into articulos_calzados_detalles (
		idArticulo
		,tipo 
		,usabilidad 
		,numero 
		,color 
		)
	values
		(
		 param_sp_idArticulo		
		,param_sp_tipo 			
		,param_sp_usabilidad	
		,param_sp_numero		
		,param_sp_color			
		);

end

$$

DELIMITER ;

-- === ARTICULO CALZADO DETALLE INSERTADO POR PROCEDIMIENTO 01 ===

-- Seteamos los parametros a Ingresar
set @param_sp_idArticulo= 8 ;
set @param_sp_tipo='Zapatillas';
set @param_sp_usabilidad='Deportivo';
set @param_sp_numero= 30;
set @param_sp_color= 'Rojo';


-- Llamamos al procedimiento
call SP_insert_articulos_calzados_detalles(
	@param_sp_idArticulo
	,@param_sp_tipo
	,@param_sp_usabilidad
	,@param_sp_numero
	,@param_sp_color);




-- ============== INSERTAR CLIENTES ===============

DELIMITER $$

create procedure SP_insert_clientes(
	 param_sp_nombre		varchar(20) 	
	,param_sp_apellido 		varchar(20)
	,param_sp_edad			int
	,param_sp_direccion		varchar(50)
	,param_sp_email			varchar(40)
	,param_sp_telefono		varchar(25)
	,param_sp_tipoDocumento enum('DNI','LIBRETA_CIVICA','LIBRETA_ENROLAMIENTO','PASAPORTE')
	,param_sp_numeroDocumento varchar(10)
)

begin 
	
	insert into clientes (
		nombre 
		,apellido 
		,edad 
		,direccion 
		,email 
		,telefono 
		,tipoDocumento 
		,numeroDocumento 
		)
	values
		(
		 param_sp_nombre		
		,param_sp_apellido
		,param_sp_edad
		,param_sp_direccion
		,param_sp_email
		,param_sp_telefono	
		,param_sp_tipoDocumento	
		,param_sp_numeroDocumento	
		);

end

$$

DELIMITER ;

-- === CLIENTE INSERTADO POR PROCEDIMIENTO 01 ===

-- Seteamos los parametros a Ingresar
set @param_sp_nombre= 'Rafael' ;
set @param_sp_apellido='Galarza';
set @param_sp_edad= 35;
set @param_sp_direccion= 'San Vicente 30';
set @param_sp_email= 'rafaelGalarza2020@gmail.com';
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




-- ============== INSERTAR FACTURAS ===============

DELIMITER $$

create procedure SP_insert_facturas(
	 param_sp_idCliente		int 	
	,param_sp_idArticulo	int
	,param_sp_precio		double
	,param_sp_cantidad		int
	
	)

begin 
	
	insert into facturas (
		idCliente 
		,idArticulo 
		,precio
		,cantidad 
		
		)
	values
		(
		 param_sp_idCliente		
		,param_sp_idArticulo
		,param_sp_precio
		,param_sp_cantidad	
		);

end

$$

DELIMITER ;

-- === FACTURA INSERTADA POR PROCEDIMIENTO 01 ===

-- Seteamos los parametros a Ingresar
set @param_sp_idCliente= 3 ;
set @param_sp_idArticulo= 3;
set @param_sp_precio= 8600;
set @param_sp_cantidad= 2;


-- Llamamos al procedimiento
call SP_insert_facturas(
	@param_sp_idCliente
	,@param_sp_idArticulo
	,@param_sp_precio
	,@param_sp_cantidad

	);





-- ============== INSERTAR FACTURAS DETALLES ===============

DELIMITER $$

create procedure SP_insert_facturas_detalles(
	 param_sp_idFactura		int 	
	,param_sp_tipo			enum('A','B','C','E')
	,param_sp_numero		bigint
	,param_sp_fechaEmision	TIMESTAMP
	,param_sp_medioDePago	enum('EFECTIVO','CHEQUE','TARJETA')
	,param_sp_descripcion 	varchar(25)
	)

begin 
	
	insert into facturas_detalles (
		idFactura
		,tipo 
		,numero 
		,fechaEmision 
		,medioDePago 
		,descripcion 
		)
	values
		(
		 param_sp_idFactura		
		,param_sp_tipo
		,param_sp_numero
		,param_sp_fechaEmision
		,param_sp_medioDePago
		,param_sp_descripcion
		);

end

$$

DELIMITER ;

-- === FACTURA DETALLES INSERTADA POR PROCEDIMIENTO 01 ===

-- Seteamos los parametros a Ingresar
set @param_sp_idFactura= 3 ;
set @param_sp_tipo= 'C';
set @param_sp_numero= 8585749930392;
set @param_sp_fechaEmision= now();
set @param_sp_medioDePago= 'TARJETA';
set @param_sp_descripcion= 'Crédito';


-- Llamamos al procedimiento
call SP_insert_facturas_detalles(
	@param_sp_idFactura
	,@param_sp_tipo
	,@param_sp_numero
	,@param_sp_fechaEmision
	,@param_sp_medioDePago
	,@param_sp_descripcion
	);








