USE proyectocoder;

 
CREATE OR REPLACE VIEW vw_empleados_puesto AS
	SELECT e.nombre, e.apellido, p.puesto
    FROM empleados AS e
    INNER JOIN puestos_trabajo AS p
    ON p.id_puesto = e.id_puesto;


CREATE OR REPLACE VIEW vw_empleados_ventas AS
	SELECT e.nombre AS nombre_empleado, e.apellido AS apellido_empleado, a.detalles, vd.cantidad, vd.precio_total,
     c.nombre AS nombre_cliente, c.apellido AS apellido_cliente, v.fecha_venta AS fecha
	FROM empleados AS e
	INNER JOIN ventas_detalles AS vd
	ON e.id_empleado = vd.id_empleado
	INNER JOIN articulos AS a
	ON a.id_articulo = vd.id_articulo
	INNER JOIN ventas AS v
	ON vd.id_venta = v.id_venta
	INNER JOIN clientes AS c
	ON c.id_cliente = v.id_cliente;
    

CREATE OR REPLACE VIEW vw_rubros_articulos AS
	SELECT r.nombre AS rubro, a.detalles, a.precio
    FROM articulos AS a
    INNER JOIN rubros AS r
    ON r.id_rubro = a.id_rubro;


CREATE OR REPLACE VIEW vw_proveedores_art AS
	SELECT r.nombre AS rubro, a.detalles AS articulo, p.nombre AS proveedor
    FROM articulos AS a
    INNER JOIN proveedores AS p
    ON p.id_proveedor = a.id_proveedor
    INNER JOIN rubros AS r
    ON r.id_rubro = a.id_rubro;


CREATE OR REPLACE VIEW vw_artiulos_mas_vendidos AS
    SELECT a.detalles, SUM(vd.cantidad) AS cantidad
	FROM ventas_detalles AS vd JOIN articulos AS a
	ON vd.id_articulo = a.id_articulo
	GROUP BY a.id_articulo
	ORDER BY SUM(vd.cantidad) DESC LIMIT 10;


CREATE OR REPLACE VIEW vw_ingresos_proveedores AS
SELECT p.nombre AS nombre_proveedor, SUM(iad.precio_total) AS precio_total_ingresos
FROM ingresos_art_detalles AS iad
INNER JOIN proveedores AS p
ON iad.id_proveedor = p.id_proveedor
GROUP BY p.nombre;

SELECT * FROM vw_empleados_puesto;
SELECT * FROM vw_empleados_ventas;
SELECT * FROM vw_rubros_articulos;
SELECT * FROM vw_proveedores_art;
SELECT * FROM vw_artiulos_mas_vendidos;
SELECT * FROM vw_ingresos_proveedores;