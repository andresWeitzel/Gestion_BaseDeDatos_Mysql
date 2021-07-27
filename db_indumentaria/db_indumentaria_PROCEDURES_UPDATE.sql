

/*
----------------------------
-- Tienda de Indumentaria---
----------------------------

========= PROCEDURES UPDATES =============

Crear los procedimientos almacenados de insert delete y update
 para la base de datos negocioWebRopa

*/


use db_indumentaria;

drop procedure if exists SP_update_articulos_precio_iva;
drop procedure if exists SP_update_articulos_precio;






/*

-- ============== ACTUALIZAR ARTICULOS PRECIO IVA ===============

DELIMITER $$

create procedure SP_update_articulos_precio_iva()

begin 
	
	update articulos set precio = precio + (precio * 0.21) ;-- Se suma el 21%


end

$$

DELIMITER ;

-- Llamamos al procedimiento
call SP_update_articulos_precio_iva();





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


*/














/*


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