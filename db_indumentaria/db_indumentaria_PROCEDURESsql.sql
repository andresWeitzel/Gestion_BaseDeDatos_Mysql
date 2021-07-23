/*
----------------------------
-- Tienda de Indumentaria---
----------------------------

========= PROCEDURES =============

Crear los procedimientos almacenados de insert delete y update
 para la base de datos negocioWebRopa

*/

use db_indumentaria;

drop procedure if exists SP_insertar_articulos;
 





-- ============== INSERTAR ARTICULOS ===============

DELIMITER $$

create procedure SP_insertar_articulos(
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

-- Seteamos los parametros a Ingresar
set @param_sp_categoria='ROPA';
set @param_sp_descripcion='Sweater Negro';
set @param_sp_precio=3500.00;
set @param_sp_stock=10;
set @param_sp_stockMinimo=4;
set @param_sp_stockMaximo=10;
set @param_sp_costo=2100.00;


-- Llamamos al procedimiento
call SP_insertar_articulos(
	@param_sp_categoria
	,@param_sp_descripcion
	,@param_sp_precio
	,@param_sp_stock
	,@param_sp_stockMinimo
	,@param_sp_stockMaximo
	,@param_sp_costo);








/*
DELIMITER $$


create procedure actualizar_precios_iva_articulos()

begin 
	
	update articulos set precio
end


$$ DELIMITER;

*/


/*

delimiter //
create procedure aumentar_precios()
begin
	update articulos set precio=precio*1.1 where temporada='OTOÑO';
end
// delimiter ;

-- consulta de catalogo
SELECT * FROM INFORMATION_SCHEMA.routines where routine_schema='negocioWebRopa';

select * from articulos;

-- desactivamos safe_updates
set sql_safe_updates=0;

-- ejecutar procedure
call aumentar_precios();

drop procedure if exists aumentar_precios2;

delimiter //
create procedure aumentar_precios2(in porcentaje int)
begin
	update articulos set precio=precio+precio*porcentaje/100;
end
// delimiter ;

call aumentar_precios2(20);

delimiter //
create procedure SP_aumentar(in porcentaje int, atemporada varchar(12))
begin
	update articulos set precio=round(precio+precio*porcentaje/100,2) where temporada=atemporada;
end
// delimiter ;

call SP_aumentar(20,'VERANO');
call SP_aumentar(20,'OTOÑO');

drop procedure aumentar_precios2;

delimiter //
	create procedure SP_Procedures()
    begin
		SELECT * FROM INFORMATION_SCHEMA.routines where routine_schema='negocioWebRopa';
    end
// delimiter ;

delimiter //
	create procedure SP_Constraints()
    begin
		select * from information_schema.TABLE_CONSTRAINTS where TABLE_SCHEMA ='negocioWebRopa';
    end
// delimiter ;

delimiter //
	create procedure SP_Tables()
    begin
		select * from information_schema.TABLES where TABLE_SCHEMA ='negocioWebRopa';
    end
// delimiter ;

delimiter //
	create procedure SP_Views()
    begin
		select * from information_schema.VIEWS where TABLE_SCHEMA ='negocioWebRopa';
    end
// delimiter ;

delimiter //
	create procedure SP_Indexs()
    begin
		select * from information_schema.STATISTICS where INDEX_SCHEMA ='negocioWebRopa';
    end
// delimiter ;

delimiter //
	create procedure SP_Triggers()
    begin
		select * from information_schema.TRIGGERS where TRIGGER_SCHEMA ='negocioWebRopa';
    end
// delimiter ;

drop procedure SP_Triggers;

call SP_Procedures();
call SP_Constraints();
call SP_Indexs();
call SP_Tables();
call SP_Views();
call SP_Triggers();

create table control(
	id int auto_increment primary key,
    tabla varchar(25) not null,
    accion enum('INSERT','DELETE','UPDATE'),
    fecha date,
    hora time,
    usuario varchar(25),
    idRegistro int
);

*/ 