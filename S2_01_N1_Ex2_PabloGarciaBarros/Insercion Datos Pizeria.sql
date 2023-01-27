USE Pizeria;

INSERT INTO Tiendas(Direccion, CodigoPostal, Localidad, Provincia)
	VALUES("Direccion1", "1001", "Barcelona", "Barcelona"),
    ("Direccion2", "1002", "Badalona", "Barcelona"),
    ("Direccion3", 1003, "Castelldefels", "Barcelona"),
    ("Direccion4", "1004", "Santa Coloma", "Barcelona"),
    ("Diraccion5", "1005", "Granollers", "Barcelona"),
    ("Direccion6", "1006", "Olot", "Girona"),
    ("Direccion7", "1007", "Palafrugell", "Girona"),
    ("Direccion8", "1008", "Palamos", "Girona"),
    ("Direccion9", "1009", "Tosa de Mar", "Girona"),
    ("Direccion10", "1010", "Begur", "Girona");
    
INSERT INTO Clientes(Nombre, Apellido, Direccion, CodigoPostal, Localidad, Provincia, Telefono)
	VALUES("Nombre1", "Apellido1", "DireccionCliente1", "1002", "Badalona", "Barcelona", "10101"),
    ("Nombre2", "Apellido2", "DireccionCliente2", "1003", "Castelldefels", "Barcelona", "10102"),
    ("Nombre3", "Apellido3", "DireccionCliente3", "1002", "Badalona", "Barcelona", "10103"),
    ("Nombre4", "Apellido4", "DireccionCliente4", "1003", "Castelldefels", "Barcelona", "10104"),
    ("Nombre5", "Apellido5", "DireccionCliente5", "1001", "Barcelona", "Barcelona", "10105"),
    ("Nombre6", "Apellido6", "DireccionCliente6", "1006", "Olot", "Girona", "10106"),
    ("Nombre7", "Apellido7", "DireccionCliente7", "1002", "Badalona", "Barcelona", "10107"),
    ("Nombre8", "Apellido8", "DireccionCliente8", "1008", "Palamos", "Girona", "10108"),
    ("Nombre9", "Apellido9", "DireccionCliente9", "1010", "Begur", "Girona", "10109"),
    ("Nombre10", "Apellido10", "DireccionCliente10", "1006", "Olot", "Girona", "101010");
    
INSERT INTO Empleados(IdTiendaTrabajador, NIF, Nombre, Apellido, Telefono, Repartidor)
	VALUES(1, "37955180M", "Trabajador1", "ApellidoT1", "22213450", TRUE),
    (1, "82037912V", "Trabajador2", "ApellidoT2", "22213450", FALSE),
    (2, "46659914K", "Trabajador3", "ApellidoT3", "22213450", TRUE),
    (2, "31503011A", "Trabajador4", "ApellidoT4", "22213450", FALSE),
    (3, "62658361J", "Trabajador5", "ApellidoT5", "22213450", TRUE),
    (3, "55150152Q", "Trabajador6", "ApellidoT6", "22213450", FALSE),
    (4, "69075017Z", "Trabajador7", "ApellidoT7", "22213450", TRUE),
    (4, "95251755S", "Trabajador8", "ApellidoT8", "22213450", FALSE),
    (5, "66894964Q", "Trabajador9", "ApellidoT9", "22213450", TRUE),
    (5, "13564077B", "Trabajador10", "ApellidoT10", "22213450", FALSE),
    (6, "19464433Q", "Trabajador11", "ApellidoT11", "22213450", TRUE),
    (6, "47049296J", "Trabajador12", "ApellidoT12", "22213450", FALSE),
    (7, "17950149Y", "Trabajador13", "ApellidoT13", "22213450", TRUE),
    (7, "93207797K", "Trabajador14", "ApellidoT14", "22213450", FALSE),
    (8, "54659448V", "Trabajador15", "ApellidoT15", "22213450", TRUE),
    (8, "57225086M", "Trabajador16", "ApellidoT16", "22213450", FALSE),
    (9, "55375948K", "Trabajador17", "ApellidoT17", "22213450", TRUE),
    (9, "52865074B", "Trabajador18", "ApellidoT18", "22213450", FALSE),
    (10, "73574415Z", "Trabajador19", "ApellidoT19", "22213450", TRUE),
    (10, "57505828D", "Trabajador20", "ApellidoT20","22213450", FALSE);
        
INSERT INTO TipoProducto(IdTipoProducto, Descripcion)
	VALUES(1, "Hamburguesa"),
    (2, "Piza"),
    (3, "Bebida");

INSERT INTO CategoriaPiza(Nombre)
	VALUES("Vegetariana"),
    ("Vegana"),
    ("Sin Gluten");
   
INSERT INTO Productos(IdProducto, Nombre, IdTipoProducto, Precio)
	VALUES(1, "Hamburguesa1", 1, 10),
    (2, "Hamburguesa2", 1, 7),
    (3, "Hamburguesa3", 1, 9),
    (4, "Hamburguesa4", 1, 12),
    (5, "Hamburguesa5", 1, 9),
    (6, "Piza1", 2, 8),
    (7, "Piza2", 2, 10),
    (8, "Piza3", 2, 15),
    (9, "Piza4", 2, 12),
    (10, "Piza5", 2, 13),
    (11, "Piza6", 2, 15),
    (12, "Bebida1", 3, 2),
    (13, "Bebida1", 3, 3),
    (14, "Bebida1", 3, 2),
    (15, "Bebida1", 3, 2),
    (16, "Bebida1", 3, 5);  
    
INSERT INTO Pizas(IdPiza, IdCategoriaPiza)
	VALUES(6, 1),
    (7, 1),
    (8, 2),
    (9, 2),
    (10, 3),
    (11, 3);
    
INSERT INTO Comandas(IdEmpleado, IdTienda, IdCliente, Dia, Hora, EntregaDomicilio)
	VALUES(1, 1, 1, "2022-03-24", "10:04", TRUE),
    (3, 2, 2, "2022-04-09", "4:02", TRUE),
    (5, 3, 3, "2022-11-25", "9:51", FALSE),
    (7, 4, 4, "2023-01-03", "9:14", FALSE),
    (9, 5, 5, "2022-04-09", "7:23", TRUE),
    (11, 6, 6, "2022-06-21", "2:32", TRUE),
    (13, 7, 7, "2022-10-19", "3:44", FALSE),
    (15, 8, 8, "2022-08-04", "4:21", FALSE),
    (17, 9, 9, "2023-01-06", "11:45", TRUE),
    (19, 10, 10, "2022-07-17", "12:31", TRUE);

SELECT * FROM Comandas;
    
INSERT INTO DetalleComanda(IdComanda, IdProducto, Cantidad)
	VALUES(1, 1, 3),
    (2, 6, 2),
    (3, 11, 4),
    (4, 10, 2),
    (5, 3, 1),
    (6, 7, 3),
    (7, 14, 3),
    (8, 2, 2),
    (9, 8, 1),
    (10, 12, 4),
    (1, 7, 4),
    (2, 3, 1),
    (3, 1, 3),
    (4, 15, 2),
    (5, 16, 2),
    (6, 16, 1),
    (7, 10, 3),
    (8, 5, 1),
    (9, 9, 4),
    (10, 8, 1),
    (1, 2, 4),
    (2, 5, 1),
    (3, 6, 1),
    (4, 2, 2),
    (5, 9, 2),
    (6, 3, 1),
    (7, 2, 5),
    (8, 8, 1),
    (9, 2, 5),
    (10, 1, 4);

SELECT c.IdEmpleado, c.IdCliente, c.Dia, c.Hora , SUM(dc.Cantidad * p.precio) AS "Precio Total"
	FROM Comandas AS c, DetalleComanda AS dc
    INNER JOIN productos AS p
    ON dc.IdProducto = p.IdProducto
    WHERE dc.IdComanda = c.IdComanda AND c.IdComanda = 1;