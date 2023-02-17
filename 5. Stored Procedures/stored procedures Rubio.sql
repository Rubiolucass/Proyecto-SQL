USE proyectocoder;

DROP PROCEDURE IF EXISTS sp_articulos_orden;
DELIMITER //
	CREATE PROCEDURE sp_articulos_orden (INOUT p_orden VARCHAR(32), INOUT p_asc_desc VARCHAR(32), INOUT entrada VARCHAR (32))
	BEGIN 
		DECLARE v_entrada VARCHAR (250);
			SELECT fn_entrada(p_orden) INTO @entrada;
            IF @entrada = 'OK' THEN
			SET @t1 = CONCAT('SELECT a.id_articulo, a.detalles, (a.stock - vd.cantidad + iad.cantidad) AS stock_total FROM articulos AS a 
							  JOIN ventas_detalles AS vd ON a.id_articulo = vd.id_articulo
                              JOIN ingresos_art_detalles AS iad
                              ON a.id_articulo = iad.id_articulo ORDER BY', ' ', p_orden, ' ', p_asc_desc);
			PREPARE param_stmt FROM @t1 ;
            EXECUTE param_stmt ;
            DEALLOCATE PREPARE param_stmt ;
            ELSE SET v_entrada = @entrada; 
            END IF;
    END //
DELIMITER ;
SET @p_orden = 'precio';
SET @p_asc_desc = 'DESC';

CALL sp_articulos_orden (@p_orden, @p_asc_desc, @v_entrada);


DROP PROCEDURE IF EXISTS sp_clientes;
DELIMITER //
	CREATE PROCEDURE sp_clientes (INOUT p_nombre VARCHAR (32), INOUT p_apellido VARCHAR (32), INOUT p_dni CHAR (15), INOUT p_direccion varchar (32), 
									INOUT p_telefono VARCHAR (32), INOUT p_email VARCHAR(32), INOUT p_opcion VARCHAR (2))
	BEGIN 
    IF (p_opcion='i') THEN
		INSERT INTO clientes (nombre, apellido, dni, direccion, telefono, email)
        VALUES (p_nombre, p_apellido, p_dni, p_direccion, p_telefono, p_email);
	ELSEIF (p_opcion='d') THEN
		DELETE FROM clientes WHERE nombre = p_nombre AND apellido = p_apellido;
	END IF;
    END //
DELIMITER ;
SET @p_nombre = 'Juan';
SET @p_apellido = 'Francisco';
SET @p_dni = '32638117';
SET @p_direccion = 'Benito Juarez 543';
SET @p_telefono = '45883217';
SET @p_email = 'juanfer@gmail.com';
SET @p_opcion = 'I';
-- para borrar un registo solo poner la opcion D

CALL sp_clientes (@p_nombre, @p_apellido, @p_dni,@p_direccion,@p_telefono,@p_email,@p_opcion);
SELECT * FROM clientes;


DROP PROCEDURE IF EXISTS sp_nombre_cliente;
DELIMITER //
CREATE PROCEDURE sp_nombre_cliente (IN p_id_cliente INT)
	BEGIN 
		SELECT nombre, apellido FROM clientes
		WHERE id_cliente = p_id_cliente;
	END //
DELIMITER ;

CALL sp_nombre_cliente (7);


DROP PROCEDURE IF EXISTS sp_stock;
DELIMITER //
CREATE PROCEDURE sp_stock (IN p_articulo VARCHAR (100))
	BEGIN
		SELECT detalles, stock FROM articulos
		WHERE detalles like concat('%', p_articulo, '%');
	END //
DELIMITER ;

CALL sp_stock ('logitech');