

/*
----------------------------
-- Tienda de Indumentaria---
----------------------------

========= TRIGGERS INSERTS =============



*/


use db_indumentaria;




drop trigger if exists SP_TRIGGER_after_insert_articulos;

drop trigger if exists SP_TRIGGER_after_insert_articulos_accesorios_detalles;

drop trigger if exists SP_TRIGGER_after_insert_articulos_calzados_detalles;

drop trigger if exists SP_TRIGGER_after_insert_articulos_ropa_detalles;

drop trigger if exists SP_TRIGGER_after_insert_clientes;

drop trigger if exists SP_TRIGGER_after_insert_facturas;

drop trigger if exists SP_TRIGGER_after_insert_facturas_detalles;

drop trigger if exists SP_TRIGGER_after_insert_procedures;





-- ============== PROCEDIMIENTO TRIGGER LOGS_INSERTS ARTICULOS===============

DELIMITER $$

create trigger SP_TRIGGER_after_insert_articulos
	
	after insert on articulos for each row

	begin 
		
		insert into logs_inserts( 
		
				idRegistroTabla
				,UuidRegistroTabla
				,nombreTabla
				,accion
				,fechaHora
				,usuario
				,rolNivel
				,motorDB
				)
				
				
		values(
		
			 NEW.id -- id del articulo
			 ,uuid() -- id unico
			 ,'ARTICULOS'
			 ,'INSERT'
			 ,now()
		 	 ,current_user()
			 ,current_role()
			 ,version()
		
		);
	
	end


$$

DELIMITER ;







-- === ARTICULO INSERTADO POR PROCEDIMIENTO 01 ===

-- Seteamos los parametros a Ingresar
set @param_sp_categoria='ACCESORIOS';
set @param_sp_descripcion='SOMBRERO KICLO';
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







-- ============== PROCEDIMIENTO TRIGGER LOGS_INSERTS ARTICULOS ACCESORIOS DETALLES===============

DELIMITER $$

create trigger SP_TRIGGER_after_insert_articulos_accesorios_detalles
	
	after insert on articulos_accesorios_detalles for each row

	begin 
		
		insert into logs_inserts( 
		
				idRegistroTabla
				,UuidRegistroTabla
				,nombreTabla
				,accion
				,fechaHora
				,usuario
				,rolNivel
				,motorDB
				)
				
				
		values(
		
			 NEW.id -- id del articulo
			 ,uuid() -- id unico
			 ,'ARTICULOS_ACCESORIOS_DETALLES'
			 ,'INSERT'
			 ,now()
		 	 ,current_user()
			 ,current_role()
			 ,version()
		
		);
	
	end


$$

DELIMITER ;







-- === ARTICULO ACCESORIO DETALLES INSERTADO POR PROCEDIMIENTO 01 ===

-- Seteamos los parametros a Ingresar
set @param_sp_categoria='ACCESORIOS';
set @param_sp_descripcion='SOMBRERO KICLO';
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









 