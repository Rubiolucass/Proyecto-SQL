USE proyectocoder;


CREATE USER IF NOT EXISTS 'aprendiz'@'localhost' IDENTIFIED BY 'user1' ;
GRANT SELECT ON proyectocoder.articulos TO 'aprendiz'@'localhost' ;
GRANT SELECT ON proyectocoder.clientes TO 'aprendiz'@'localhost' ;
GRANT SELECT ON proyectocoder.rubros TO 'aprendiz'@'localhost' ;
GRANT SELECT ON proyectocoder.proveedores TO 'aprendiz'@'localhost' ;


CREATE USER IF NOT EXISTS 'novato'@'localhost' IDENTIFIED BY 'user2' ;
GRANT SELECT, INSERT, UPDATE ON proyectocoder.articulos TO 'novato'@'localhost';
GRANT SELECT, INSERT, UPDATE ON proyectocoder.clientes TO 'novato'@'localhost';
GRANT SELECT, INSERT, UPDATE ON proyectocoder.rubros TO 'novato'@'localhost';
GRANT SELECT, INSERT, UPDATE ON proyectocoder.proveedores TO 'novato'@'localhost';


CREATE USER IF NOT EXISTS 'experto'@'localhost' IDENTIFIED BY 'user3' ;
GRANT SELECT, INSERT, UPDATE, DELETE, DROP, CREATE ON proyectocoder.* TO 'experto'@'localhost';


CREATE USER IF NOT EXISTS 'admin'@'localhost' IDENTIFIED BY 'user4' ;
GRANT ALL PRIVILEGES ON proyectocoder.* TO 'admin'@'localhost';