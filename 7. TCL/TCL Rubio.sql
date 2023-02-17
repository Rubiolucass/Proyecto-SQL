USE proyectocoder;
SET FOREIGN_KEY_CHECKS=0;

START TRANSACTION;

DELETE FROM articulos WHERE id_articulo = 45;
DELETE FROM articulos WHERE id_articulo = 46;
DELETE FROM articulos WHERE id_articulo = 47;
-- ROLLBACK;
COMMIT;

SELECT * FROM articulos WHERE id_articulo BETWEEN 40 AND 50;
/*  INSERT INTO articulos (id_proveedor, id_rubro, detalles, precio, stock) VALUES
    (1, 4, 'Logitech G640', 7099, 20),
	(2, 5, 'AZZA Spectra 280B White Templado 1x12cm ARGB', 15499, 20),
    (2, 5, 'Aureox Pictor ARX 370G 4x120mm LED', 16699, 15); */
    
START TRANSACTION ;
INSERT INTO clientes (nombre, apellido, dni, direccion, telefono, email) VALUES 
	('Fernando', 'Carvajal', 42648991, 'Av. Santa Fe 4815', 43468239, 'fernandocarvajal@gmail.com'),
	('Adrian', 'Villar', 32167884, 'Piedras 141', 43353509, 'adrianvillar@hotmail.com'),
	('Marco', 'Guevara', 21674559, 'Paso 551 ', 46747650, NULL),
	('Silvana', 'Gomez', 40876442, NULL, 43466100, NULL);
    
SAVEPOINT sp1;

INSERT INTO clientes (nombre, apellido, dni, direccion, telefono, email) VALUES 
	('Ricardo', 'Olmedo', 37827661, 'Azopardo 250 2° piso', 43467100, NULL),
	('Roman', 'Vilchez', 28764335, NULL, 46745321, 'romanvilchez11@gmail.com'),
	('Juan Pablo', 'Caballero', 340987112, 'Valle Grande 421', 45672187, NULL),
	('Valentina', 'Tellez', 36715664, 'Av. Olivos 4109', 46823461, NULL);

SAVEPOINT sp2;

ROLLBACK TO SAVEPOINT sp1;

SELECT * FROM clientes;