USE proyectocoder;

DROP FUNCTION IF EXISTS fn_ventas_hechas
DELIMITER $$
	CREATE FUNCTION fn_ventas_hechas (numero INT)
	RETURNS VARCHAR (100)
	DETERMINISTIC
	BEGIN 
    	DECLARE respuesta VARCHAR (200) DEFAULT '' ;
		DECLARE total_ventas INT;
		SELECT COUNT(*) INTO total_ventas FROM ventas
		WHERE id_venta >= numero;
		SET respuesta = CONCAT('Ventas totales realizadas : ', total_ventas);
		RETURN respuesta;
	END $$
DELIMITER ;

SELECT fn_ventas_hechas (0)  AS ventas_totales;

DROP FUNCTION IF EXISTS fn_cantidad_marca
DELIMITER //
	CREATE FUNCTION fn_cantidad_marca (marca_articulo VARCHAR (100))
	RETURNS VARCHAR (100)
	DETERMINISTIC
	BEGIN 
    	DECLARE respuesta VARCHAR (200) DEFAULT '' ;
		DECLARE cuenta INT;
		SELECT COUNT(*) INTO cuenta FROM articulos
		WHERE detalles like concat('%', marca_articulo, '%');
		SET respuesta = CONCAT('Cantiad articulos : ', cuenta);
		RETURN respuesta;
	END //
DELIMITER ;

SELECT fn_cantidad_marca ('asus');



DROP FUNCTION IF EXISTS fn_calcular_salario;
DELIMITER //
CREATE FUNCTION fn_calcular_salario (sueldo INT) 
	RETURNS VARCHAR (200)
	DETERMINISTIC
	BEGIN
		DECLARE tipo VARCHAR (30);
			IF sueldo < 9000 THEN
			SET tipo = 'bajo';
			ELSEIF sueldo >= 9000 AND sueldo < 10000 THEN
			SET tipo = 'medio';
			ELSEIF sueldo >= 10000 THEN
			SET tipo='alto';
			END IF;

RETURN tipo;
END //
DELIMITER ;

select fn_calcular_salario (10000);

DROP FUNCTION IF EXISTS fn_clientes;
DELIMITER $$
	CREATE FUNCTION fn_clientes (id_cliente INT)
	RETURNS VARCHAR (100)
	DETERMINISTIC
	BEGIN 
    	DECLARE respuesta VARCHAR (200) DEFAULT '' ;
		DECLARE total_clientes INT;
		SELECT COUNT(*) INTO total_clientes FROM clientes;
		SET respuesta = CONCAT('Clientes totales : ', total_clientes);
		RETURN respuesta;
	END $$
DELIMITER ;

SELECT fn_clientes (0) AS clientes;


DROP FUNCTION IF EXISTS fn_ventas;
DELIMITER //
	CREATE FUNCTION fn_ventas (id_cliente INT, id_comprobante INT, id_tipo_pago INT)
    RETURNS VARCHAR (100)
    DETERMINISTIC
	BEGIN
		DECLARE respuesta VARCHAR (200) DEFAULT '' ;
		INSERT INTO ventas (id_cliente, id_comprobante, id_tipo_pago, fecha_venta)
		VALUES (id_cliente, id_comprobante, id_tipo_pago, NOW());
        SET respuesta = CONCAT('La accion se realizo exitosamente');
        RETURN respuesta;
	END //
DELIMITER ;

SELECT fn_ventas (7, 1, 1) AS ingreso_datos_ventas;
SELECT * FROM ventas;




DROP FUNCTION IF EXISTS fn_entrada;
DELIMITER //
CREATE FUNCTION fn_entrada (entrada varchar (255)) 
	RETURNS VARCHAR (200)
	DETERMINISTIC
	BEGIN
		DECLARE v_entrada VARCHAR(200);
		IF entrada = '' THEN
        SET v_entrada = 'ERROR: No se ingreso ningun valor, ingresar uno.';
        ELSE
		SET v_entrada = 'OK';
		END IF;
	RETURN v_entrada;
    END //
DELIMITER ;

