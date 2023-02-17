USE proyectocoder;

INSERT INTO puestos_trabajo (puesto) VALUES ('Cajero'),
	('Repositor'),
	('Vendedor'),
	('Encargado');

INSERT INTO empleados (id_puesto, nombre, apellido, dni, telefono, direccion, email, horario, salario) VALUES 
	(1,'Ramiro','Corbalan', 4167338, 1134657898, 'Av. Lope de vega 4324', 'ramacorba99@gmail.com', '08:00 a 14:00', 92000),
	(1,'Fernando', 'Carvajal', 42648991, 43468239, 'Av. Santa Fe 4815',  'fernandocarvajal@gmail.com', '14:00 a 20:00', 88.000),
    (2,'Adrian', 'Villar', 32167884, 43353509, 'Piedras 141', 'adrianvillar@hotmail.com', '08:00 a 14:00', 95000),
	(2,'Ezequiel','Rodriguez', 42628221, 1102871435, 'Juan Agustin Garcia 2184', 'rofriguezeze00@gmail.com', '14:00 a 20:00', 90000),
	(3,'Nahuel','Gomez', 3455353, 1153991264, 'Felipe Vallese 3843', 'nahuelgomezz@outlook.es', '08:00 a 14:00', 105000),
	(3,'Ignacio', 'Aparicio', 37671991, 45523178, 'Blanco Encalada 4732', 'nachoaparicio37@gmail.com', '08:00 a 14:00', 87000),
	(3,'Angel', 'Manzilla', 41874009, 47728540, 'Zabala 3420',  'angelmanzilla00@gmail.com', '14:00 a 20:00', 98000),
	(3,'Camila','Fernandez', 42895221, 1121894365, 'Alejandro Magariños Cervantes 2865', 'camifernandez@hotmail.com', '14:00 a 20:00', 108900),
    (4,'Ricardo', 'Olmedo', 37827661, 43467100, 'Azopardo 250 2° piso', 'ricardoolmedo@gmail.com', '08:00 a 14:00', 92000),
	(4,'Santiago','Gonzales', 39873001, 1198763256, 'Gral. César Díaz 4557', 'santigomezj@outlook.com', '14:00 a 20:00', 85500);
    
INSERT INTO proveedores (nombre, direccion, telefono, email) VALUES ('Casa Aka','Avenida Jujuy 1445', 1138439347, 'infoaka@casaaka.com'),
	('Fernandez Company','Juan B. Justo 2918', 45338109, 'fernandezco@infofer.com'),
    ('Acoyte Distribuciones','AV. Acoyte 99', 45667198, 'distribucionesacoyte@gmail.com'),
    ('Gamers Club Mayorista', 'Calle el Salvador 5298', 45669108, 'gamersclubmayo@gmail.com'),
    ('Monitores por Mayor', 'Av. Escalada 1041', 45668176, 'alpormayor@outlook.es'),
    ('RVW Mayorista', 'C. Lincoln 2208', 45668176, 'rvwmayorista@gmail.com'),
    ('Grupo Nucleo', 'Pueyrredón 3679', 45668176, 'gruponucelotech@gmail.com'),
    ('Portal X Mayor', 'Lamadrid 2560', 45668176, 'portalxmayor@gmail.com'),
    ('ARMYTECH', 'La Cautiva 6682', 45668176, 'armytech@gmail.com'),
    ('LEXAF Mayorista', 'José Martí 2272', 45668176, 'alexaf_mayorista@gmail.com'),
    ('Racknet Gabnet', 'Marcelo Gamboa 6235', 43117659, 'fiskjhonson@gmail.com');

INSERT INTO rubros (nombre) VALUES ('Auriculares'),
	('Teclados'),
	('Mouse'),
	('Mousepad'),
	('Gabinete'),
	('Motherboards'),
	('Microprocesadores'),
	('Refrigeracion'),
	('Memoria Ram'),
	('Placas de Video'),
	('Fuentes'),
	('Almacenamiento'),
	('Memorias Portatil'),
	('Sillas Gamer'),
	('Monitores'),
	('Adaptadores/otros');

INSERT INTO articulos (id_proveedor, id_rubro, detalles, precio, stock) VALUES (1, 1,'HyperX Cloud Stringer Core negro', 8500, 50),
	(1, 1, 'HyperX Cloud II rojo', 18500, 50),
    (1, 1, 'HyperX Cloud II inalambricos rojo', 30500, 30),
    (1, 1, 'HyperX Cloud Flight inalambricos  negro', 25500, 30),
	(1, 1, 'HyperX Cloud Stringer Core inalambricos  negro', 17500, 50),
    (1, 1, 'HyperX Cloud Revolver negro', 25500, 35),
    (1, 1, 'HyperX Cloud Alpha negro', 53500, 25),
    (1, 1, 'HyperX Cloud Stringer S negro', 8500, 50),
	(1, 1, 'HyperX Cloud II rosa', 19500, 35),
    (1, 1, 'Logitech G G435 inalambricos azul y frambuesa', 17800, 50),
	(1, 1, 'Logitech G G332 negro ', 10500, 50),
	(1, 1, 'Logitech Astro A50 inalambricos negro y gold ', 69500, 45),
    (1, 1, 'Logitech Astro A50 inalambricos negro y azul ', 69500, 35),
	(1, 1, 'Logitech G G335 mint ', 11000, 30),
	(1, 1, 'Logitech G G733 inalambricos blanco y azul', 29500, 50),
	(1, 1, 'Logitech G G335 blanco', 12000, 30),
	(1, 1, 'Logitech G G435 inalambricos negro y amarillo', 19500, 50),
	(1, 1, 'Logitech Astro A40 negro y azul', 17500, 50),
	(1, 1, 'Logitech G Pro negro', 22500, 50),
	(1, 1, 'Logitech G Pro inalambricos negro', 70500, 25),
	(1, 1, 'Razer Kraken Mercury blanco', 23500, 15),
	(1, 1, 'Razer Blackshark V2 Pro', 62500, 25),
    (1, 1, 'Redragon Icon H520 negro y rojo', 15500, 25),
	(1, 1, 'Redragon Chroma Lamina 2 lunar blanco', 11200, 24),
	(1, 1, 'Redragon Hylas H260 negro', 15500, 34),
	(1, 2, 'Hyperx Alloy Origins switch red', 14999, 70),
    (1, 2, 'Hyperx Alloy Fps Pro switch red ', 30000, 15),
    (1, 2, 'Logitech G413 switch red', 18500, 35),
    (1, 2, 'Redragon Kumara K552 negro switch red', 12599, 73),
    (1, 2, 'Redragon Kumara K552 blanco switch blue', 12800, 30),
    (1, 2, 'Logitech G413 Carbon', 22999, 26),
	(1, 3, 'Logitech G G502 Hero negro', 11059, 60),
	(1, 3, 'Logitech G G703 Hero negro', 20999, 50),
	(1, 3, 'Logitech G Pro Hero negro', 17900, 50),
	(1, 3, 'Logitech G Pro Superlight inalambricos blanco', 24500, 50),
	(1, 3, 'Benq Zowie Za11-b', 20300, 50),
	(1, 3, 'Benq Zowie Za13-b', 20300, 70),
	(1, 3, 'Benq Zowie Fk1-b', 20442, 60),
	(1, 3, 'Benq Zowie Za12-b', 20399, 45),
    (1, 4, 'Logitech G249', 2219, 100),
    (1, 4, 'Logitech Graphite', 2429, 80),
    (1, 4, 'HyperX FURY S Pro', 3379, 50),
    (1, 4, 'Logitech G449', 3689, 40),
    (1, 4, 'HyperX FURY S Pro extra large', 7699, 80),
    (1, 4, 'Logitech G640', 7099, 20),
	(2, 5, 'AZZA Spectra 280B White Templado 1x12cm ARGB', 15499, 20),
    (2, 5, 'Aureox Pictor ARX 370G 4x120mm LED', 16699, 15),
    (2, 5, 'Aureox Lynx ARX 390G 1x120mm ARGB', 16899, 24),
    (2, 5, 'Aerocool Atomic Templado 1x20cm 1x12cm ARGB + Soporte VGA', 17299, 20),
    (2, 5, 'Aerocool Bionic White Vidrio Templado 1x12cm RGB', 17299, 40),
	(2, 5, 'Aureox Sculptor ARX 380G 2x120mm ARGB', 18500, 36),
	(2, 5, 'Aerocool Falcon Vidrio Templado 4x12cm ARGB', 21500, 21),
    (2, 5, 'Corsair 4000D Black Templado 2x12cm', 30999, 15),
    (2, 5, 'Corsair 5000D Black Templado 2x12cm', 61999, 17),
	(3, 7, 'ASUS PRIME B560M-A (10ma/11va Gen) LGA1200', 28499, 15),
    (3, 6, 'Gigabyte B560M DS3H (10ma/11va Gen) LGA1200', 25499, 24),
    (3, 6, 'MSI B560M BAZOOKA (10ma/11va Gen) LGA1200', 34499, 43),
    (3, 6, 'MSI Z590 TOMAHAWK WIFI (10ma/11va Gen) LGA1200', 53999, 46),
    (3, 6, 'ASUS TUF Z590-PLUS GAMING WIFI (10ma/11va Gen) LGA1200', 49499, 76),
    (3, 6, 'ASUS PRIME B660M-A WIFI D4 DDR4 (12va Gen) LGA1700', 47499, 27),
    (3, 6, 'Gigabyte Z690 GAMING X DDR4 (12va Gen) LGA1700', 84999, 12),
    (3, 6, 'MSI MAG B660M MORTAR DDR4 (12va Gen) LGA1700', 51999, 18),
    (3, 6, 'ASUS TUF Z690-PLUS GAMING WIFI D4 (12va Gen) LGA1700', 92999, 55),
    (3, 6, 'AsRock Z690 Pro RS DDR4 (12va Gen) LGA1700', 58999, 32),
    (3, 6, 'ASUS PRIME A320M-K DDR4 AM4', 16399, 32),
    (3, 6, 'Gigabyte A520M-H AM4', 20499, 63),
    (3, 6, 'ASUS TUF B450M-PLUS GAMING II AM4', 28999, 41),
    (3, 6, 'Gigabyte B450 AORUS PRO WIFI AM4', 41999, 28),
    (3, 6, 'ASUS PRIME X570-P AM4', 54999, 21),
    (3, 6, 'ASUS ROG STRIX B550-F GAMING AM4', 70999, 35),
    (3, 6, 'Gigabyte X570S AORUS PRO AX 1.1 AM4', 136999, 14),
    (3, 6, 'ASUS TUF B650M-PLUS GAMING WIFI AM5', 79999, 32),
    (3, 6, 'MSI PRO X670-P WIFI DDR5 AM5', 115999, 64),
    (3, 6, 'ASUS TUF X670E-PLUS GAMING WIFI AM5', 117999, 16),
	(3, 7, 'Intel Core I3 10105F 4 Núcleos / 8 Threads HT 4.4Ghz (10ma Gen) LGA1200', 24499, 51),
    (3, 7, 'Intel Core I3 10105 4 Núcleos / 8 Threads HT 4.4Ghz (10ma Gen) LGA1200', 36999, 64),
    (3, 7, 'Intel Core I3 12100 4 Núcleos / 8 Threads 4.3Ghz (12va Gen) LGA1700', 44499, 33),
    (3, 7, 'Intel Core I5 10400 6 Núcleos / 12 Threads HT 4.3Ghz (10ma Gen) LGA1200', 54999, 22),
    (3, 7, 'Intel Core I5 11600K 6 Núcleos / 12 Threads HT 4.9Ghz (11va Gen) LGA1200', 75999, 23),
    (3, 7, 'Intel Core I5 12600K 10 Núcleos / 16 Threads 4.9Ghz (12va Gen) LGA1700', 91999, 29),
    (3, 7, 'Intel Core I7 10700 8 Núcleos / 16 Threads HT 4.8Ghz (10ma Gen) LGA1200', 96999, 15),
    (3, 7, 'Intel Core I7 11700 8 Núcleos / 16 Threads HT 4.9Ghz (11va Gen) LGA1200', 105999, 35),
	(3, 7, 'Intel Core I7 12700KF 12 Núcleos / 20 Threads 5.0Ghz (12va Gen) LGA1700', 126999, 21),
	(3, 7, 'Intel Core I9 11900K 8 Núcleos / 16 Threads HT (11va Gen) LGA1200', 126999, 46),
    (3, 7, 'Intel Core I9 12900F 16 Núcleos / 24 Threads 5.1Ghz (12va Gen) LGA1700', 163999, 60),
    (3, 7, 'Intel Core I9 12900KF 16 Núcleos / 24 Threads 5.2Ghz (12va Gen) LGA1700', 184999, 20),
    (3, 7, 'AMD Ryzen 3 4100 - 4 Núcleos / 8 Threads + Cooler AM4', 30499, 32),
    (3, 7, 'AMD Ryzen 5 5600 - 6 Nucleos / 12 Threads 4.4Ghz AM4', 57999, 23),
    (3, 7, 'AMD Ryzen 5 7600X - 6 Núcleos / 12 Threads 5.3Ghz + Radeon Graphics AM5', 105999, 49),
    (3, 7, 'AMD Ryzen 7 5700G - 8 Núcleos / 16 Threads + Radeon Graphics AM4', 83999, 58),
    (3, 7, 'AMD Ryzen 7 7700X - 8 Núcleos / 16 Threads 5.4Ghz + Radeon Graphics AM5', 136999, 29),
    (3, 7, 'AMD Ryzen 9 5950X - 16 Núcleos / 32 Threads 4.9Ghz AM4', 178999, 23),  
    (3, 7, 'AMD Ryzen 9 7900X - 12 Núcleos / 24 Threads 5.6Ghz + Radeon Graphics AM5', 189999, 18),  
	(2, 8, 'Cooler CPU Aerocool Air Frost 2 FRGB', 4219, 32),
    (2, 8, 'Cooler CPU Thermaltake UX100 RGB', 5799, 42),
    (2, 8, 'Cooler CPU Cooler Master Hyper T20', 7399, 20),
    (2, 8, 'Cooler CPU Cooler Master Hyper 212 Spectrum', 11600,55),
    (2, 8, 'Cooler CPU Cooler Master MasterAir MA620M ARGB ', 41999, 28),
    (2, 8, 'Cooler CPU Aerocool Mirage 5 ARGB', 179199, 27),
    (2, 8, 'Cooler CPU Water Cooling ID Cooling Frostflow X120 120MM', 26499, 27),
    (2, 8, 'Cooler CPU Water Cooling Deep Cool GAMMAXX L240 Black ARGB 240MM', 39999, 16),
    (2, 8, 'Cooler CPU Water Cooling Cooler Master ML240L V2 White Edition ARGB', 53999, 32),
    (2, 8, 'Cooler CPU Water Cooling Deep Cool GAMMAXX L360 Black ARGB 360MM', 56999, 45),
    (2, 8, 'Cooler CPU Water Cooling Cooler Master MasterLiquid Lite 240', 30999, 34),
    (3, 9, 'Kingston 8GB DDR4 3200Mhz Fury Beast', 15299, 80),
    (3, 9, 'Patriot 16GB (2x8GB) DDR4 3600Mhz Viper Steel PVS416G360C8K', 28499, 52),
    (3, 9, 'Kingston 16GB DDR4 3200Mhz Fury Beast', 28500, 79),
    (3, 9, 'Patriot 16GB (2x8GB) DDR4 3200Mhz Viper RGB White PVR416G320C6KW', 28999, 90),
    (3, 9, 'Corsair 16Gb (2x8Gb) DDR4 3200Mhz Vengeance RGB Pro Black', 31499, 66),
    (3, 9, 'Corsair 8GB DDR4 3000Mhz Vengeance LPX Black', 11499, 122),
    (3, 9, 'Corsair 16Gb (2x8Gb) DDR4 3200Mhz Vengeance LPX Black', 28499, 165),
	(3, 10, 'MSI NVIDIA GeForce GT 1030 2GB GDDR4', 41999, 21),
	(3, 10, 'Powercolor Radeon RX 550 Red Dragon 4GB GDDR5', 57999, 35),
	(3, 10, 'ASUS NVIDIA GeForce GTX 1650 TUF GAMING 4Gb GDDR6', 84999, 50),
	(3, 10, 'Palit NVIDIA GeForce GTX 1660 TI DUAL 6GB GDDR6', 99999, 17),   
	(3, 10, 'Powercolor Radeon RX 6600 Fighter 8Gb GDDR6 OEM', 101999, 23),
	(3, 10, 'Palit NVIDIA GeForce RTX 3050 DUAL 8GB GDDR6 LHR', 126999, 19),  
	(3, 10, 'Powercolor Radeon RX 6700 Fighter 10Gb GDDR6 OEM', 131999, 45),
	(3, 10, 'MSI NVIDIA GeForce RTX 3060 Ventus 2X OC 12Gb GDDR6 LHR', 168999, 56),
	(3, 10, 'ASUS NVIDIA GeForce RTX 3070 DUAL OC 8Gb GDDR6 LHR', 210999, 72),
	(3, 10, 'Inno3D NVIDIA GeForce RTX 3090 X3 24GB GDDR6X', 411999, 18),
	(2, 11, 'Aerocool Cylon 500W RGB 80 Plus Bronce', 13699, 22),
    (2, 11, 'AZZA 650W 80 Plus Bronce', 15799, 27),
    (2, 11, 'Cooler Master Elite V4 600W 80 Plus', 16599, 14),
    (2, 11, 'Aerocool Cylon 600W RGB 80 Plus Bronce', 16899, 33),
    (2, 11, 'AZZA 750W 80 Plus Bronce', 18499, 50),
    (2, 11, 'Aerocool Cylon 700W RGB 80 Plus Bronce', 18999, 43),
    (2, 11, 'Aerocool Dorado 750W RGB 80 Plus Gold', 21999, 30),
    (2, 11, 'Cooler Master G800W 800W 80 Plus Gold S/Cable', 27999, 16),
    (2, 11, 'Aerocool Mirage 750W RGB 80 Plus Gold Full Modular', 26999, 30),
    (2, 11, 'Cooler Master MWE 1250W 80 Plus Gold Full Modular S/Cable', 57999, 52),
    (4, 12, 'Disco SSD Gigabyte 120GB SATA3', 4279, 78),
    (4, 12, 'Disco SSD Kingston 120GB A400 SATA3', 6399, 231),
    (4, 12, 'Disco SSD WD Green 240Gb SATA3', 5999, 147),
    (4, 12, 'Disco SSD Gigabyte 240GB SATA3', 5999, 155),
    (4, 12, 'Disco SSD Kingston 240GB A400 SATA3', 6099, 180),
    (4, 12, 'Disco SSD WD Green 480Gb SATA3', 9799, 218),
    (4, 12, 'Disco SSD Kingston 480GB A400 SATA3', 9999, 208),
    (4, 12, 'Disco SSD WD Blue 500Gb SATA3', 14799, 32),
    (4, 12, 'Disco Rígido PC 1Tb Toshiba SATA3', 10299, 67),
    (4, 12, 'Disco Rígido PC 1Tb WD Blue SATA3', 10899, 98),
    (4, 12, 'Disco Rígido PC 2Tb WD Blue SATA3', 14799, 86),
    (4, 12, 'Disco Rígido PC 4Tb WD Blue SATA3', 25499, 106),
    (4, 12, 'Disco Rígido WD Purple 8Tb SATA3 Vigilancia', 56999, 220),
    (4, 13, 'Pendrive Kingston 32Gb DTX/32 USB 3.2', 1789, 45),
    (4, 13, 'Pendrive Kingston 64Gb Kyson Metálico DTKN/64GB USB 3.2', 2849, 98),
    (4, 13, 'Pendrive Kingston DTSE9 G2 64GB USB 3.1', 2999, 67),
    (4, 13, 'Micro SD Kingston 32GB Canvas Select 100Mb/s Clase 10', 1899, 78),
    (4, 13, 'Micro SD Kingston 64GB Canvas Plus 100Mb/s Clase 10', 2739, 72),
    (4, 13, 'Micro SD Sandisk Ultra 128GB Clase 10 C/Adap 100Mb/s', 5599, 43),
	(4, 14, 'Marvo CH106 Black Profesional', 80999, 17),
    (4, 14, 'Marvo CH106 Blue/Black Profesional', 80999, 19),
    (4, 14, 'Marvo CH106 White/Black Profesional', 80999, 24),
    (4, 14, 'Level Up Ares Rojo y Negro', 82999, 47),
    (4, 14, 'Antec T1 Sport B/Y Negra y Amerilla', 86999, 22),
    (4, 14, 'Aerocool Knight Iron Black', 102999, 18),
    (4, 14, 'Corsair T1 Race Black / White', 125999, 11),
    (4, 14, 'Aerocool Duke Lite Ash Black', 74999, 12),
    (4, 14, 'ThunderX3 TC5 ARCTIC WHITE', 111999, 23),
	(5, 15, 'BenQ Zowie XL2411K LED 24 pulgadas 144hz negro', 99000, 56),
    (5, 15, 'BenQ Zowie XL2546K LCD 24.5 pulgadas 240hz negro', 199999, 34),
    (5, 15, 'BenQ Zowie XL2746K LCD 27 pulgadas 240hz Hdmi Usb', 168999, 23),
    (5, 15, 'Samsung Odyssey G3 24 144Hz DP/HDMI', 91999, 12),
    (5, 15, 'Gigabyte AORUS M28U-SA 28 4K IPS KVM 3xUSB 144HZ 1Ms', 287999, 10),
    (5, 15, 'LG 34 Ultra Wide QHD 34WL85C-B IPS HDR Curvo', 367999, 23),
    (5, 15, 'ASUS VP249QGR 24 144Hz IPS Parlantes HDMI/DP', 97999, 15),
    (5, 15, 'Gigabyte G24F-SA 24 IPS 165Hz 1Ms HDMI/DP', 94999, 19),
    (5, 15, 'ASUS VP228HE 22 1Ms Parlantes DVI/HDMI', 55999, 13),
    (5, 15, 'ASUS VA24EHE 24 IPS 75Hz HDMI Sin Bordes', 64999, 14),
    (5, 15, 'Samsung Odyssey CRG5 24 Curvo 144Hz FreeSync HDMI/DP', 86999, 16),
    (5, 15, 'Samsung LED 24 T350H Sin Bordes 75Hz', 62999, 18),
	(5, 15, 'Samsung LED 24 Curvo F390 Slim HDMI', 66999, 23),
    (6, 16, 'Adaptador USB Bluetooth 4.0 TP-Link UB400 Nano', 1579, 45),
    (6, 16, 'Hub Skyway 4 Puertos USB 2.0', 1119, 33),
    (6, 16, 'Conversor Display Port M a HDMI H', 1659, 27),
    (6, 16, 'Conversor Activo HDMI-VGA C/Audio', 2839, 53),
    (6, 16, 'Cargador Portátil Powerbank Sentey Brio19 LS-2119 2xUSB 5000mAh', 3549, 82),
    (6, 16, 'Miracast G3 Full HD (Simil Chromecast)', 3729, 25),
    (6, 16, 'Cargador Portátil Powerbank ADATA T10000 2xUSB 2A 10000mAh', 3929, 53),
    (6, 16, 'Tira LED Deep Cool RGB 200 PRO 2x 35cm (ARGB)',  6399, 102),
    (6, 16, 'Cable Datos SATA', 209, 58),
    (6, 16, 'Cable De Red UTP Cruzado 3Mts', 419, 56),
    (6, 16, 'Cable USB a Micro USB 1.0Mts Varios Colores', 419, 87),
    (6, 16, 'Cable Power Alimentación PC 220V', 419, 32),
    (6, 16, 'Cable USB a USB Type-C 1Mts Varios Colores', 529, 45),
    (6, 16, 'Cable Miniplug 2M a 1H (Adaptador Auriculares P/PC)', 629, 27),
    (6, 16, 'Cable HDMI Macho/Macho V1.4 1.50Mts', 689, 53),
    (6, 16, 'Cable HDMI Macho/Macho V1.4 5.00Mts', 1369, 32),
    (6, 16, 'Grasa Disipadora Pasta Térmica Cooler Master MasterGel Pro V2', 2639, 97),
    (6, 16, 'Grasa Disipadora Pasta Térmica Cooler Master MasterGel Maker', 4219, 69);

INSERT INTO tipos_pagos (tipo_pago) VALUES ('tarjeta de credito'),
	('Tarjeta de debito'),
	('Efectivo'),
	('Codigo QR'),
	('Transferencia');

INSERT INTO comprobantes (tipo_comprobante)  VALUES ('ticket'),
	('Factura');
    
INSERT INTO ingresos_articulos (id_comprobante, id_tipo_pago, fecha_ingreso) VALUES (1, 5, NOW()),
	(1, 5, NOW() ),
	(2, 5, NOW() ),
	(2, 5, NOW() ),
	(2, 5, NOW() ),
    (2, 5, NOW() ),
    (2, 5, NOW() ),
    (2, 5, NOW() ),
    (2, 5, NOW() ),
    (2, 5, NOW() ),
	(2, 5, NOW() );

INSERT INTO ingresos_art_detalles (id_ingreso, id_proveedor, id_articulo, cantidad, precio_art, precio_total) VALUES 
	(1, 1, 26, 70, 14999, ((cantidad*precio_art)-(cantidad*precio_art)*0.5)),
	(1, 1, 27, 15, 30000, ((cantidad*precio_art)-(cantidad*precio_art)*0.5)),
	(1, 1, 28, 35, 18500, ((cantidad*precio_art)-(cantidad*precio_art)*0.5)),
	(1, 1, 29, 73, 12599, ((cantidad*precio_art)-(cantidad*precio_art)*0.5)),
	(1, 1, 30, 30, 12800, ((cantidad*precio_art)-(cantidad*precio_art)*0.5)),
	(1, 1, 31, 26, 22999, ((cantidad*precio_art)-(cantidad*precio_art)*0.5)),
	(1, 1, 32, 60, 11059, ((cantidad*precio_art)-(cantidad*precio_art)*0.5)),
	(1, 1, 33, 50, 20999, ((cantidad*precio_art)-(cantidad*precio_art)*0.5)),
	(1, 1, 34, 50, 17900, ((cantidad*precio_art)-(cantidad*precio_art)*0.5)),
	(1, 1, 35, 50, 24500, ((cantidad*precio_art)-(cantidad*precio_art)*0.5)),
	(1, 1, 36, 50, 20300, ((cantidad*precio_art)-(cantidad*precio_art)*0.5)),
	(1, 1, 37, 70, 20300, ((cantidad*precio_art)-(cantidad*precio_art)*0.5)),
	(1, 1, 38, 60, 20442, ((cantidad*precio_art)-(cantidad*precio_art)*0.5)),
	(1, 1, 39, 45, 20399, ((cantidad*precio_art)-(cantidad*precio_art)*0.5)),
	(1, 1, 40, 100, 2219, ((cantidad*precio_art)-(cantidad*precio_art)*0.5)),
	(1, 1, 41, 80, 2429, ((cantidad*precio_art)-(cantidad*precio_art)*0.5)),
	(1, 1, 42, 50, 3379, ((cantidad*precio_art)-(cantidad*precio_art)*0.5)),
	(1, 1, 43, 40, 3689, ((cantidad*precio_art)-(cantidad*precio_art)*0.5)),
	(1, 1, 44, 80, 7699, ((cantidad*precio_art)-(cantidad*precio_art)*0.5)),
	(1, 1, 45, 20, 7099, ((cantidad*precio_art)-(cantidad*precio_art)*0.5)),
    (2, 2, 94, 32, 4219, ((cantidad*precio_art)-(cantidad*precio_art)*0.6)),
	(2, 2, 95, 42, 5799, ((cantidad*precio_art)-(cantidad*precio_art)*0.6)),
	(2, 2, 96, 20, 7399, ((cantidad*precio_art)-(cantidad*precio_art)*0.6)),
	(2, 2, 97, 55, 11600, ((cantidad*precio_art)-(cantidad*precio_art)*0.6)),
	(2, 2, 98, 28, 41999, ((cantidad*precio_art)-(cantidad*precio_art)*0.6)),
	(2, 2, 99, 27, 179199, ((cantidad*precio_art)-(cantidad*precio_art)*0.6)),
	(2, 2, 100, 27, 26499, ((cantidad*precio_art)-(cantidad*precio_art)*0.6)),
	(2, 2, 101, 16, 39999, ((cantidad*precio_art)-(cantidad*precio_art)*0.6)),
	(2, 2, 102, 32, 53999, ((cantidad*precio_art)-(cantidad*precio_art)*0.6)),
	(2, 2, 103, 45, 56999, ((cantidad*precio_art)-(cantidad*precio_art)*0.6)),
	(2, 2, 104, 34, 30999, ((cantidad*precio_art)-(cantidad*precio_art)*0.6)),
    (2, 2, 122, 22, 13699, ((cantidad*precio_art)-(cantidad*precio_art)*0.6)),
	(2, 2, 123, 27, 15799, ((cantidad*precio_art)-(cantidad*precio_art)*0.6)),
	(2, 2, 124, 14, 16599, ((cantidad*precio_art)-(cantidad*precio_art)*0.6)),
	(2, 2, 125, 33, 16899, ((cantidad*precio_art)-(cantidad*precio_art)*0.6)),
	(2, 2, 126, 50, 18499, ((cantidad*precio_art)-(cantidad*precio_art)*0.6)),
    (2, 2, 127, 43, 18999, ((cantidad*precio_art)-(cantidad*precio_art)*0.6)),
    (2, 2, 128, 30, 21999, ((cantidad*precio_art)-(cantidad*precio_art)*0.6)),
	(2, 2, 129, 16, 27999, ((cantidad*precio_art)-(cantidad*precio_art)*0.6)),
	(2, 2, 130, 30, 26999, ((cantidad*precio_art)-(cantidad*precio_art)*0.6)),
	(2, 2, 131, 52, 57999, ((cantidad*precio_art)-(cantidad*precio_art)*0.6)),
    (3, 3, 55, 15, 28499, ((cantidad*precio_art)-(cantidad*precio_art)*0.15)),
	(3, 3, 56, 24, 25499, ((cantidad*precio_art)-(cantidad*precio_art)*0.15)),
	(3, 3, 57, 43, 34499, ((cantidad*precio_art)-(cantidad*precio_art)*0.15)),
	(3, 3, 58, 46, 53999, ((cantidad*precio_art)-(cantidad*precio_art)*0.15)),
	(3, 3, 59, 76, 49499, ((cantidad*precio_art)-(cantidad*precio_art)*0.15)),
	(3, 3, 60, 27, 47499, ((cantidad*precio_art)-(cantidad*precio_art)*0.15)),
	(3, 3, 61, 12, 84999, ((cantidad*precio_art)-(cantidad*precio_art)*0.15)),
	(3, 3, 62, 18, 51999, ((cantidad*precio_art)-(cantidad*precio_art)*0.15)),
	(3, 3, 63, 55, 92999, ((cantidad*precio_art)-(cantidad*precio_art)*0.15)),
	(3, 3, 64, 32, 58999, ((cantidad*precio_art)-(cantidad*precio_art)*0.15)),
	(3, 3, 65, 32, 16399, ((cantidad*precio_art)-(cantidad*precio_art)*0.15)),
	(3, 3, 66, 63, 20499, ((cantidad*precio_art)-(cantidad*precio_art)*0.15)),
	(3, 3, 67, 41, 28999, ((cantidad*precio_art)-(cantidad*precio_art)*0.15)),
	(3, 3, 68, 28, 41999, ((cantidad*precio_art)-(cantidad*precio_art)*0.15)),
	(3, 3, 69, 21, 54999, ((cantidad*precio_art)-(cantidad*precio_art)*0.15)),
	(3, 3, 70, 35, 70999, ((cantidad*precio_art)-(cantidad*precio_art)*0.15)),
	(3, 3, 71, 14, 136999, ((cantidad*precio_art)-(cantidad*precio_art)*0.15)),
	(3, 3, 72, 32, 79999, ((cantidad*precio_art)-(cantidad*precio_art)*0.15)),
	(3, 3, 73, 64, 115999, ((cantidad*precio_art)-(cantidad*precio_art)*0.15)),
	(3, 3, 74, 16, 117999, ((cantidad*precio_art)-(cantidad*precio_art)*0.15)),
	(3, 3, 75, 51, 24499, ((cantidad*precio_art)-(cantidad*precio_art)*0.15)),
	(3, 3, 76, 64, 36999, ((cantidad*precio_art)-(cantidad*precio_art)*0.15)),
	(3, 3, 77, 33, 44499, ((cantidad*precio_art)-(cantidad*precio_art)*0.15)),
	(3, 3, 78, 22, 54999, ((cantidad*precio_art)-(cantidad*precio_art)*0.15)),
	(3, 3, 79, 23, 75999, ((cantidad*precio_art)-(cantidad*precio_art)*0.15)),
	(3, 3, 80, 29, 91999, ((cantidad*precio_art)-(cantidad*precio_art)*0.15)),
	(3, 3, 81, 15, 96999, ((cantidad*precio_art)-(cantidad*precio_art)*0.15)),
	(3, 3, 82, 35, 105999, ((cantidad*precio_art)-(cantidad*precio_art)*0.15)),
	(3, 3, 83, 21, 126999, ((cantidad*precio_art)-(cantidad*precio_art)*0.15)),
	(3, 3, 84, 46, 126999, ((cantidad*precio_art)-(cantidad*precio_art)*0.15)),
	(3, 3, 85, 60, 163999, ((cantidad*precio_art)-(cantidad*precio_art)*0.15)),
	(3, 3, 86, 20, 184999, ((cantidad*precio_art)-(cantidad*precio_art)*0.15)),
	(3, 3, 87, 32, 30499, ((cantidad*precio_art)-(cantidad*precio_art)*0.15)),
	(3, 3, 88, 23, 57999, ((cantidad*precio_art)-(cantidad*precio_art)*0.15)),
	(3, 3, 89, 49, 105999, ((cantidad*precio_art)-(cantidad*precio_art)*0.15)),
	(3, 3, 90, 58, 83999, ((cantidad*precio_art)-(cantidad*precio_art)*0.15)),
	(3, 3, 91, 29, 136999, ((cantidad*precio_art)-(cantidad*precio_art)*0.15)),
	(3, 3, 92, 23, 178999, ((cantidad*precio_art)-(cantidad*precio_art)*0.15)),
	(3, 3, 93, 18, 189999, ((cantidad*precio_art)-(cantidad*precio_art)*0.15)),
    (4, 4, 132, 78, 4279, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(4, 4, 133, 231, 6399, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(4, 4, 134, 147, 5999, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(4, 4, 135, 155, 5999, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(4, 4, 136, 180, 6099, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(4, 4, 137, 218, 9799, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(4, 4, 138, 208, 9999, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(4, 4, 139, 32, 14799, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(4, 4, 140, 67, 10299, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(4, 4, 141, 98, 10899, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(4, 4, 142, 86, 14799, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(4, 4, 143, 106, 25499, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(4, 4, 144, 220, 56999, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(4, 4, 145, 45, 1789, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(4, 4, 146, 98, 2849, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(4, 4, 147, 67, 2999, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(4, 4, 148, 78, 1899, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(4, 4, 149, 72, 2739, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(4, 4, 150, 43, 5599, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
    (5, 5, 160, 56, 99000, ((cantidad*precio_art)-(cantidad*precio_art)*0.10)),
	(5, 5, 161, 34, 199999, ((cantidad*precio_art)-(cantidad*precio_art)*0.10)),
	(5, 5, 162, 23, 168999, ((cantidad*precio_art)-(cantidad*precio_art)*0.10)),
	(5, 5, 163, 12, 91999, ((cantidad*precio_art)-(cantidad*precio_art)*0.10)),
	(5, 5, 164, 10, 287999, ((cantidad*precio_art)-(cantidad*precio_art)*0.10)),
	(5, 5, 165, 23, 367999, ((cantidad*precio_art)-(cantidad*precio_art)*0.10)),
	(5, 5, 166, 15, 97999, ((cantidad*precio_art)-(cantidad*precio_art)*0.10)),
	(5, 5, 167, 19, 94999, ((cantidad*precio_art)-(cantidad*precio_art)*0.10)),
	(5, 5, 168, 13, 55999, ((cantidad*precio_art)-(cantidad*precio_art)*0.10)),
	(5, 5, 169, 14, 64999, ((cantidad*precio_art)-(cantidad*precio_art)*0.10)),
	(5, 5, 170, 16, 86999, ((cantidad*precio_art)-(cantidad*precio_art)*0.10)),
	(5, 5, 171, 18, 62999, ((cantidad*precio_art)-(cantidad*precio_art)*0.10)),
	(5, 5, 172, 23, 66999, ((cantidad*precio_art)-(cantidad*precio_art)*0.10)),
    (6, 6, 151, 17, 80999, ((cantidad*precio_art)-(cantidad*precio_art)*0.10)),
	(6, 6, 152, 19, 80999, ((cantidad*precio_art)-(cantidad*precio_art)*0.10)),
	(6, 6, 153, 24, 80999, ((cantidad*precio_art)-(cantidad*precio_art)*0.10)),
	(6, 6, 154, 47, 82999, ((cantidad*precio_art)-(cantidad*precio_art)*0.10)),
	(6, 6, 155, 22, 86999, ((cantidad*precio_art)-(cantidad*precio_art)*0.10)),
	(6, 6, 156, 18, 102999, ((cantidad*precio_art)-(cantidad*precio_art)*0.10)),
	(6, 6, 157, 11, 125999, ((cantidad*precio_art)-(cantidad*precio_art)*0.10)),
	(6, 6, 158, 12 , 74999, ((cantidad*precio_art)-(cantidad*precio_art)*0.10)),
	(6, 6, 159 ,23 , 111999, ((cantidad*precio_art)-(cantidad*precio_art)*0.10)),
    (7, 7, 173, 45, 1579, ((cantidad*precio_art)-(cantidad*precio_art)*0.5)),
	(7, 7, 174, 33, 1119, ((cantidad*precio_art)-(cantidad*precio_art)*0.5)),
	(7, 7, 175, 27, 1659, ((cantidad*precio_art)-(cantidad*precio_art)*0.5)),
	(7, 7, 176, 53, 2839, ((cantidad*precio_art)-(cantidad*precio_art)*0.5)),
	(7, 7, 177, 82, 3549, ((cantidad*precio_art)-(cantidad*precio_art)*0.5)),
	(7, 7, 178, 25, 3729, ((cantidad*precio_art)-(cantidad*precio_art)*0.5)),
	(7, 7, 179, 53, 3929, ((cantidad*precio_art)-(cantidad*precio_art)*0.5)),
	(7, 7, 180, 102, 6399, ((cantidad*precio_art)-(cantidad*precio_art)*0.5)),
	(7, 7, 181, 58, 209, ((cantidad*precio_art)-(cantidad*precio_art)*0.5)),
	(7, 7, 182, 56, 419, ((cantidad*precio_art)-(cantidad*precio_art)*0.5)),
	(7, 7, 183, 87, 419, ((cantidad*precio_art)-(cantidad*precio_art)*0.5)),
	(7, 7, 184, 32, 419, ((cantidad*precio_art)-(cantidad*precio_art)*0.5)),
	(7, 7, 185, 45, 529, ((cantidad*precio_art)-(cantidad*precio_art)*0.5)),
	(7, 7, 186, 27, 629, ((cantidad*precio_art)-(cantidad*precio_art)*0.5)),
	(7, 7, 187, 53, 689, ((cantidad*precio_art)-(cantidad*precio_art)*0.5)),
	(7, 7, 188, 32, 1369, ((cantidad*precio_art)-(cantidad*precio_art)*0.5)),
	(7, 7, 189, 97, 2639, ((cantidad*precio_art)-(cantidad*precio_art)*0.5)),
	(7, 7, 190, 69, 4219, ((cantidad*precio_art)-(cantidad*precio_art)*0.5)),
	(8, 8, 1, 50, 8500, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(8, 8, 2, 50, 18500, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(8, 8, 3, 30, 30500, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(8, 8, 4, 30, 25500, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(8, 8, 5, 50, 17500, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(8, 8, 6, 35, 25500, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(8, 8, 7, 25, 53500, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(8, 8, 8, 50, 8500,  ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(8, 8, 9, 35, 19500, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(8, 8, 10, 50, 17800, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(8, 8, 11, 50, 10500, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(8, 8, 12, 45, 69500, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(8, 8, 13, 35, 69500, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(8, 8, 14, 30, 11000, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(8, 8, 15, 50, 29500, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(8, 8, 16, 30, 12000, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(8, 8, 17, 50, 19500, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(8, 8, 18, 50, 17500, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(8, 8, 19, 50, 22500, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(8, 8, 20, 25, 70500, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(8, 8, 21, 15, 23500, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(8, 8, 22, 25, 62500, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(8, 8, 23, 25, 15500, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(8, 8, 24, 24, 11200, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(8, 8, 25, 34, 15500, ((cantidad*precio_art)-(cantidad*precio_art)*0.18)),
	(9, 9, 112, 21, 41999, ((cantidad*precio_art)-(cantidad*precio_art)*0.12)),
	(9, 9, 113, 35, 57999, ((cantidad*precio_art)-(cantidad*precio_art)*0.12)),
	(9, 9, 114, 50, 84999, ((cantidad*precio_art)-(cantidad*precio_art)*0.12)),
	(9, 9, 115, 17, 99999, ((cantidad*precio_art)-(cantidad*precio_art)*0.12)),
	(9, 9, 116, 23, 101999, ((cantidad*precio_art)-(cantidad*precio_art)*0.12)),
	(9, 9, 117, 19, 126999, ((cantidad*precio_art)-(cantidad*precio_art)*0.12)),
	(9, 9, 118, 45, 131999, ((cantidad*precio_art)-(cantidad*precio_art)*0.12)),
	(9, 9, 119, 56, 168999, ((cantidad*precio_art)-(cantidad*precio_art)*0.12)),
	(9, 9, 120, 72, 210999, ((cantidad*precio_art)-(cantidad*precio_art)*0.12)),
	(9, 9, 121, 18, 411999, ((cantidad*precio_art)-(cantidad*precio_art)*0.12)),
	(10, 10, 105, 80, 15299, ((cantidad*precio_art)-(cantidad*precio_art)*0.6)),
	(10, 10, 106, 52, 28499, ((cantidad*precio_art)-(cantidad*precio_art)*0.6)),
	(10, 10, 107, 79, 28500, ((cantidad*precio_art)-(cantidad*precio_art)*0.6)),
	(10, 10, 108, 90, 28999, ((cantidad*precio_art)-(cantidad*precio_art)*0.6)),
	(10, 10, 109, 66, 31499, ((cantidad*precio_art)-(cantidad*precio_art)*0.6)),
	(10, 10, 110, 122, 11499, ((cantidad*precio_art)-(cantidad*precio_art)*0.6)),
	(10, 10, 111, 165, 28499, ((cantidad*precio_art)-(cantidad*precio_art)*0.6)),
    (11, 11, 46, 20, 15499, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(11, 11, 47, 15, 16699, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(11, 11, 48, 24, 16899, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(11, 11, 49, 20, 17299, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(11, 11, 50, 40, 17299, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(11, 11, 51, 36, 18500, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(11, 11, 52, 21, 21500, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(11, 11, 53, 12, 30999, ((cantidad*precio_art)-(cantidad*precio_art)*0.8)),
	(11, 11, 54, 17, 61999, ((cantidad*precio_art)-(cantidad*precio_art)*0.8));	
    
INSERT INTO clientes (nombre, apellido, dni, direccion, telefono, email) VALUES 
	('Salvador', 'Sánchez', 42628774, NULL, 950254837, 'pedroheller56@gmail.com'),
	('Juan', 'Saez', 236548228, NULL, 618253876, 'juansaez61@hotmail.com'),
	('Zoe', 'Ramirez', 127593002, 'Avenida Gaona 1819', 618223476, NULL),
	('Pedro', 'Heller', 44562887, NULL, 618223876, NULL),
	('David', 'Schmidt', 43617110, 'Avenida Juan Bautista Alberdi 1823', 678516294, NULL),
	('José', 'Koss', 33437667, NULL, 628349590, 'josekross@gmail.com'),
	('Ismael', 'Strosin', 22987667, NULL, 679447625, NULL),
	('Cristina', 'Lemke', 323984774, NULL, 669162534, NULL),
	('Ramón', 'Herzog', 2376655, 'Avenida Tte. Gral. Donato Álvarez 1675', 626351429, NULL),
	('Esther', 'Spencer', 4275885, NULL, 679837456, NULL),
	('Marco', 'Guevara', 21674559, 'Paso 551 ', 46747650, NULL),
	('Silvana', 'Gomez', 40876442, NULL, 43466100, NULL),
	('Roman', 'Vilchez', 28764335, NULL, 46745321, 'romanvilchez11@gmail.com'),
	('Juan Pablo', 'Caballero', 340987112, 'Valle Grande 421', 45672187, NULL),
	('Valentina', 'Tellez', 36715664, 'Av. Olivos 4109', 46823461, NULL),
	('Abril', 'Muñoz', 24761881, 'Zapiola 1125', 47743267, NULL),
    ('Luciano', 'Martinez', 38767117, NULL, 48325469, NULL),
    ('Tamara', 'Figueroa', 42618994, NULL, 46398763, 'tamfigue@outlook.es');

INSERT INTO ventas (id_cliente, id_comprobante, id_tipo_pago, fecha_venta) VALUES (1, 1, 1, NOW() ),
	(2, 1, 2, NOW() ),
	(3, 2, 3, NOW() ),
	(4, 2, 4, NOW() ),
	(5, 2, 5, NOW() ),
	(6, 1, 4, NOW() ),
	(7, 2, 3, NOW() ),
	(8, 1, 2, NOW() ),
	(9, 1, 1, NOW() ),
	(10, 2, 1, NOW() ),
    (11, 2, 5, NOW() ),
    (12, 2, 3, NOW() ),
    (13, 1, 5, NOW() ),
    (14, 2, 3, NOW() ),
    (15, 1, 1, NOW() ),
    (16, 1, 1, NOW() ),
    (17, 2, 3, NOW() ),
    (18, 2, 4, NOW() );

INSERT INTO ventas_detalles (id_venta, id_articulo, id_empleado, cantidad, precio_unitario, precio_total) VALUES
	(1, 68, 5, 1, 41999, (cantidad*precio_unitario)),
	(2, 76, 5, 1, 36999, (cantidad*precio_unitario)),
	(3, 34, 7, 5, 17900, (cantidad*precio_unitario)),
	(3, 26, 7, 5, 14999, (cantidad*precio_unitario)),
	(4, 27, 8, 2, 30000, (cantidad*precio_unitario)),
	(5, 89, 6, 1, 105999, (cantidad*precio_unitario)),
	(6, 165, 6, 2, 367999, (cantidad*precio_unitario)),
	(7, 144, 5, 6, 56999, (cantidad*precio_unitario)),
	(8, 25, 7, 1, 15500, (cantidad*precio_unitario)),
	(9, 23, 7, 4, 15500, (cantidad*precio_unitario)),
	(10, 189, 8, 1, 2639, (cantidad*precio_unitario)),
    (11, 141, 8, 2, 10899, (cantidad*precio_unitario)),
    (12, 147, 7, 1, 2999, (cantidad*precio_unitario)),
    (13, 32, 8, 1, 11059, (cantidad*precio_unitario)),
    (14, 87, 7, 1, 30499, (cantidad*precio_unitario)),
    (15, 54, 5, 1, 61999, (cantidad*precio_unitario)),
    (15, 63, 5, 1, 92999, (cantidad*precio_unitario)),
    (15, 86, 5, 1, 184999, (cantidad*precio_unitario)),
    (15, 103, 5, 1, 56999, (cantidad*precio_unitario)),
    (15, 120, 5, 1, 210999, (cantidad*precio_unitario)),
    (15, 111, 5, 1, 28499, (cantidad*precio_unitario)),
    (15, 131, 5, 1, 57999, (cantidad*precio_unitario)),
    (15, 139, 5, 1, 14799, (cantidad*precio_unitario)),
    (15, 141, 5, 2, 10899, (cantidad*precio_unitario)),
	(15, 157, 5, 1, 125999, (cantidad*precio_unitario)),
    (15, 161, 5, 1, 199999, (cantidad*precio_unitario)),
    (15, 2, 5, 1, 18500, (cantidad*precio_unitario)),
    (15, 27, 5, 1, 30000, (cantidad*precio_unitario)),
    (15, 38, 5, 1, 20442, (cantidad*precio_unitario)),
    (15, 44, 5, 1, 7699, (cantidad*precio_unitario)),
    (16, 140, 6, 2, 10299, (cantidad*precio_unitario)),
    (17, 95, 6, 1, 5799, (cantidad*precio_unitario)),
    (18, 158, 8, 1, 74999, (cantidad*precio_unitario));
    
select * from puestos_trabajo;
select * from empleados;
select * from proveedores;
select * from rubros;
select * from articulos;
select * from tipos_pagos;
select * from comprobantes;
select * from ingresos_articulos;
select * from ingresos_art_detalles;
select * from clientes;
select * from ventas;
select * from ventas_detalles;