USE proyectocoder;
SET FOREIGN_KEY_CHECKS=0;
SET SQL_SAFE_UPDATES = 0;



DROP TRIGGER IF EXISTS trg_log_audi_art_upd;
DELIMITER //
	CREATE TRIGGER trg_log_audi_art_upd AFTER UPDATE ON articulos FOR EACH ROW
		BEGIN
			INSERT INTO auditoria_articulos (id_articulo, detalles, precio, stock, accion, tabla, usuario, fecha, hora)
			VALUES (OLD.id_articulo, CONCAT('Nombre viejo: ', OLD.detalles), CONCAT('Precio viejo: ', OLD.precio, ' Precio nuevo: ', NEW.precio), 
            CONCAT('Stock viejo: ', OLD.stock,' Stock nuevo: ', NEW.stock), 'UPDATE', 'articulos', current_user(), now(), now());
		END//
DELIMITER ;

UPDATE articulos set precio = 17.950 where detalles = 'Logitech G G435 inalambricos azul y frambuesa';


DROP TRIGGER IF EXISTS trg_log_audi_art_del;
DELIMITER //
	CREATE TRIGGER trg_log_audi_art_del BEFORE DELETE ON proyectocoder.articulos FOR EACH ROW
		BEGIN
			INSERT INTO auditoria_articulos (id_articulo, detalles, precio, stock, accion, tabla, usuario, fecha, hora)
			VALUES (OLD.id_articulo, OLD.detalles, OLD.precio, OLD.stock, 'DELETE', 'articulos', current_user(), now(), now());
		END//
DELIMITER ;

DELETE FROM articulos where id_articulo = 190;
SELECT * FROM auditoria_articulos;




DROP TRIGGER IF EXISTS trg_log_audi_cl_insert;
DELIMITER //
	CREATE TRIGGER trg_log_audi_cl_insert AFTER INSERT ON clientes FOR EACH ROW
		BEGIN
			INSERT INTO auditoria_clientes (nombre, apellido, dni, direccion, telefono, email, accion, tabla, usuario, fecha, hora)
			VALUES (NEW.nombre, NEW.apellido, NEW.dni, NEW.direccion, NEW.telefono, NEW.email, 'INSERT', 'clientes', current_user(), now(), now());
		END//
DELIMITER ;

INSERT INTO clientes (nombre, apellido, dni, direccion, telefono, email) VALUES ('Daniel', 'Herman', 315783231, NULL, 679837625, 'danielherman@outlook.com');



DROP TRIGGER IF EXISTS trg_log_audi_cl_upd;
DELIMITER //
	CREATE TRIGGER trg_log_audi_cl_upd BEFORE UPDATE ON clientes FOR EACH ROW
		BEGIN
			INSERT INTO auditoria_clientes (nombre, apellido, dni, direccion, telefono, email, accion, tabla, usuario, fecha, hora)
			VALUES (NEW.nombre, NEW.apellido, NEW.dni, CONCAT('Direccion vieja: ', OLD.direccion, ' Direccion nueva: ', NEW.direccion),
            CONCAT('Telefono viejo: ',  OLD.telefono, ' Telefono nuevo: ',  NEW.telefono),
			CONCAT('Email viejo: ', OLD.email, ' Email nuevo: ', NEW.email), 'UPDATE', 'clientes', current_user(), now(), now());
		END//
DELIMITER ;

UPDATE clientes set direccion = 'Avenida Siempreviva 742' where id_cliente = 1;
SELECT * FROM auditoria_clientes;
    
