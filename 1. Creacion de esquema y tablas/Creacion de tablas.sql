DROP SCHEMA IF EXISTS proyectocoder;
CREATE SCHEMA IF NOT EXISTS proyectocoder;
USE proyectocoder;


DROP TABLE IF EXISTS comprobantes;
CREATE TABLE IF NOT EXISTS comprobantes (
	id_comprobante SMALLINT NOT NULL AUTO_INCREMENT,
    tipo_comprobante VARCHAR (15) NOT NULL,
    PRIMARY KEY (id_comprobante)
);

DROP TABLE IF EXISTS tipos_pagos;
CREATE TABLE IF NOT EXISTS tipos_pagos (
	id_tipo_pago SMALLINT NOT NULL AUTO_INCREMENT, 
    tipo_pago VARCHAR (20),
    PRIMARY KEY (id_tipo_pago)
);

DROP TABLE IF EXISTS puestos_trabajo;
CREATE TABLE IF NOT EXISTS puestos_trabajo (
	id_puesto SMALLINT NOT NULL AUTO_INCREMENT,
    puesto VARCHAR (20) NOT NULL,
    PRIMARY KEY (id_puesto)
);

DROP TABLE IF EXISTS empleados;
CREATE TABLE IF NOT EXISTS empleados (
	id_empleado SMALLINT NOT NULL auto_increment,
    id_puesto SMALLINT NOT NULL,
    nombre VARCHAR (20) NOT NULL,
    apellido VARCHAR (20) NOT NULL,
    dni CHAR (10) NOT NULL,
    telefono VARCHAR (35) NOT NULL,
    direccion VARCHAR (50) NOT NULL,
    email VARCHAR (30) NOT NULL,    
    horario CHAR (13) NOT NULL,
    salario INT NOT NULL,
    PRIMARY KEY (id_empleado),
    FOREIGN KEY (id_puesto) REFERENCES puestos_trabajo (id_puesto)
    );
    
    
DROP TABLE IF EXISTS clientes;
CREATE TABLE IF NOT EXISTS clientes (
    id_cliente SMALLINT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (20) NOT NULL,
    apellido VARCHAR (20) NOT NULL,
    dni CHAR (10) NOT NULL,
    direccion VARCHAR (50),
    telefono VARCHAR (30) NOT NULL,
    email VARCHAR (30),
    PRIMARY KEY (id_cliente)
);


DROP TABLE IF EXISTS proveedores;
CREATE TABLE IF NOT EXISTS proveedores (
	id_proveedor SMALLINT  NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (50) NOT NULL,
    direccion VARCHAR (50) NOT NULL,
    telefono VARCHAR (35) NOT NULL,
    email VARCHAR (30) NOT NULL,
    PRIMARY KEY (id_proveedor)
);


DROP TABLE IF EXISTS rubros;
CREATE TABLE IF NOT EXISTS rubros (
	id_rubro SMALLINT NOT NULL AUTO_INCREMENT,
    nombre CHAR (17),
	PRIMARY KEY (id_rubro)
);


DROP TABLE IF EXISTS articulos;
CREATE TABLE IF NOT EXISTS articulos (
	id_articulo SMALLINT NOT NULL AUTO_INCREMENT,
    id_proveedor SMALLINT NOT NULL,
    id_rubro SMALLINT NOT NULL,
	detalles VARCHAR (100) NOT NULL,
	precio INT NOT NULL,
    stock SMALLINT NOT NULL,
	PRIMARY KEY (id_articulo),
	FOREIGN KEY (id_proveedor) REFERENCES proveedores (id_proveedor),
    FOREIGN KEY (id_rubro) REFERENCES rubros (id_rubro)
);


DROP TABLE IF EXISTS ventas;
CREATE TABLE IF NOT EXISTS ventas (
	id_venta SMALLINT NOT NULL AUTO_INCREMENT,
    id_cliente SMALLINT NOT NULL,
	id_comprobante SMALLINT NOT NULL,
	id_tipo_pago SMALLINT NOT NULL,
    fecha_venta DATETIME NOT NULL,
	PRIMARY KEY (id_venta),
    FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente),
    FOREIGN KEY (id_comprobante) REFERENCES comprobantes (id_comprobante),
    FOREIGN KEY (id_tipo_pago) REFERENCES tipos_pagos (id_tipo_pago)
);

DROP TABLE IF EXISTS ventas_detalles;
CREATE TABLE IF NOT EXISTS ventas_detalles (
	id_venta_detalles SMALLINT  NOT NULL AUTO_INCREMENT,
	id_venta SMALLINT NOT NULL,
	id_articulo SMALLINT NOT NULL,
    id_empleado SMALLINT NOT NULL,
    cantidad SMALLINT NOT NULL,
    precio_unitario INT NOT NULL,
    precio_total INT NOT NULL,
	PRIMARY KEY (id_venta_detalles),
	FOREIGN KEY (id_venta) REFERENCES ventas (id_venta),
    FOREIGN KEY (id_articulo) REFERENCES articulos (id_articulo),
    FOREIGN KEY (id_empleado) REFERENCES empleados (id_empleado)
);


DROP TABLE IF EXISTS ingresos_articulos;
CREATE TABLE IF NOT EXISTS ingresos_articulos (
	id_ingreso SMALLINT NOT NULL AUTO_INCREMENT,
    id_comprobante SMALLINT NOT NULL,
    id_tipo_pago SMALLINT NOT NULL,
    fecha_ingreso DATETIME NOT NULL,
    PRIMARY KEY (id_ingreso),
    FOREIGN KEY (id_comprobante) REFERENCES comprobantes (id_comprobante),
    FOREIGN KEY (id_tipo_pago) REFERENCES tipos_pagos (id_tipo_pago)
	);
    
    
DROP TABLE IF EXISTS ingresos_art_detalles;
CREATE TABLE IF NOT EXISTS ingresos_art_detalles (
	id_ingreso_det SMALLINT NOT NULL AUTO_INCREMENT,
	id_ingreso SMALLINT NOT NULL,
	id_proveedor SMALLINT NOT NULL,
    id_articulo SMALLINT NOT NULL,
	cantidad SMALLINT NOT NULL,
    precio_art INT NOT NULL,
	precio_total INT NOT NULL,
	PRIMARY KEY (id_ingreso_det),
	FOREIGN KEY (id_ingreso) REFERENCES ingresos_articulos (id_ingreso),
	FOREIGN KEY (id_proveedor) REFERENCES proveedores (id_proveedor),
	FOREIGN KEY (id_articulo) REFERENCES articulos (id_articulo)
    );


-- Esta tabla es para usar en triggers para controlar de los datos de los clientes que puedan insertar o updatear
DROP TABLE IF EXISTS auditoria_clientes;
CREATE TABLE IF NOT EXISTS auditoria_clientes (
	id_auditoria_cl SMALLINT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(255) NOT NULL,
    apellido VARCHAR(170) NOT NULL,
	dni VARCHAR(80) NOT NULL,
    direccion VARCHAR(100),
    telefono VARCHAR(90) NOT NULL,
	email VARCHAR(100),
    accion CHAR (6),
    tabla CHAR (8),
    usuario VARCHAR (50),
    fecha DATE,
    hora TIME,
	PRIMARY KEY (id_auditoria_cl)
);

--  Esta tabla es para usar en triggers para controlar de los datos de articulos que puedan eliminar o updatear
DROP TABLE IF EXISTS auditoria_articulos;
CREATE TABLE IF NOT EXISTS auditoria_articulos (
	id_auditoria_art SMALLINT  NOT NULL AUTO_INCREMENT,
    id_articulo SMALLINT NOT NULL,
    detalles VARCHAR(255) NOT NULL,
    precio VARCHAR(170) NOT NULL,
	stock VARCHAR(170) NOT NULL,
    accion CHAR (6),
    tabla CHAR (9),
    usuario VARCHAR (50),
    fecha DATE,
    hora TIME,
	PRIMARY KEY (id_auditoria_art)
);

