CREATE DATABASE Optica;

USE Optica;

CREATE TABLE Proveedores(
	IdProveedor INT NOT NULL AUTO_INCREMENT,
	NIF VARCHAR(45) NOT NULL,
    Nombre VARCHAR(45) NOT NULL,
    Telefono VARCHAR(45) NOT NULL,
    Fax VARCHAR(45),
    PRIMARY KEY(IdProveedor)
);

CREATE TABLE Clientes(
	IdCliente INT NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR(45) NOT NULL,
    Telefono VARCHAR(45) NOT NULL,
    Email VARCHAR(45) NOT NULL,
    FechaRegistro DATE NOT NULL,
    Recomendado INT,
    PRIMARY KEY(IdCliente)
);

CREATE TABLE Empleados(
	IdEmpleado INT NOT NULL AUTO_INCREMENT,
    NombreEmpleado VARCHAR(45) NOT NULL,
    PRIMARY KEY(IdEmpleado)
);

CREATE TABLE Anteojos(
	IdAnteojo INT NOT NULL AUTO_INCREMENT,
    Marca VARCHAR(45) NOT NULL, 
    GraduacionIzquierda DOUBLE NOT NULL,
    GraduacionDerecha DOUBLE NOT NULL,
    TipoMontura VARCHAR(45) NOT NULL,
    ColorMontura VARCHAR(45) NOT NULL,
    ColorLenteIzquierda VARCHAR(45) NOT NULL,
    ColorLenteDerecha VARCHAR(45) NOT NULL,
    Precio DOUBLE NOT NULL,
    IdProveedor INT NOT NULL,
    PRIMARY KEY(IdAnteojo),
    FOREIGN KEY(IdProveedor) REFERENCES Proveedores(IdProveedor)
);

CREATE TABLE DireccionesProveedores(
	IdProveedor INT NOT NULL,
    Calle VARCHAR(45) NOT NULL,
    Numero INT NOT NULL,
    Piso INT,
    Puerta INT,
    Ciudad VARCHAR(45) NOT NULL,
    CodigoPostal VARCHAR(45) NOT NULL,
    Pais VARCHAR(45) NOT NULL,
    PRIMARY KEY (IdProveedor),
    FOREIGN KEY(IdProveedor) REFERENCES Proveedores(IdProveedor)
);

CREATE TABLE DireccionCliente(
	IdClienteDireccion INT NOT NULL,
    Calle VARCHAR(45) NOT NULL,
    Numero INT NOT NULL,
    Piso INT,
    Puerta INT,
    Ciudad VARCHAR(45) NOT NULL,
	CodigoPostal VARCHAR(45) NOT NULL,
    Pais VARCHAR(45) NOT NULL,
    PRIMARY KEY(IdClienteDireccion),
    FOREIGN KEY(IdClienteDireccion) REFERENCES Clientes(IdCliente)
);

CREATE TABLE Ventas(
	IdVenta INT NOT NULL AUTO_INCREMENT,
    IdCliente INT NOT NULL,
    IdEmpleado INT NOT NULL,
    PrecioVenta DOUBLE NOT NULL,
    IdAnteojo INT NOT NULL,
    PRIMARY KEY(IdVenta),
    FOREIGN KEY(IdCliente) REFERENCES Clientes(IdCliente),
    FOREIGN KEY(IdEmpleado) REFERENCES Empleados(IdEmpleado)
);

INSERT INTO Proveedores(IdProveedor, NIF, Nombre, Telefono, Fax)
	VALUES(1, "04907222B", "Optica Universitaria", "699452133", NULL),
    (2, "14295296Z", "Alain Afflelou", "155032419", "46519077"),
    (3, "94555484T", "General Optica", "934791432", "911732487"),
    (4, "01037092E", "Vista Optica", "711430882", "4669870"),
    (5, "99958236Y", "Optica Sanabre", "934814045", "934771902");

INSERT INTO Clientes(Nombre, Telefono, Email, FechaRegistro)
	VALUES("Pablo Garcia", "655150917", "pgarciabarros86@gmail.com", NOW()),
    ("Julian Perez", "44415672", "julianPerez@gmail.com", NOW()),
    ("Ruben Hernandez", "46514089", "rubenHernandez@gmail.com", NOW()),
    ("Jorge Fernandez", "48032189", "jorgeFernandez@gmail.com", NOW()),
    ("Esteban Gutierrez", "47659903", "estebanGutierrez@hotmail.com", NOW());
    
INSERT INTO DireccionCliente(IdClienteDireccion, Calle, Numero, Piso, Puerta, Ciudad, CodigoPostal, Pais)
	VALUES(1, "Carrer de Vinto", 15, 2, 1, "Barcelona", "08030", "España"),
    (2, "Carrer de Princesa", 23,1, 1, "Barcelona", "08011", "España"),
    (3, "Carrer de Sant Jacint", 11, 1, 3, "Barcelona", "08023", "España"),
    (4, "Carrer de Ausias March", 25,3, 2, "Barcelona", "08010", "España"),
    (5, "Carrer de L'Alzina", 52, 4, 2, "Barcelona", "08021", "España");

INSERT INTO Anteojos(Marca, GraduacionIzquierda, GraduacionDerecha, TipoMontura, ColorMontura, ColorLenteIzquierda, 
	ColorLenteDerecha, Precio, IdProveedor)
	VALUES("Rai-Ban", 0.5, 1.5, "Flotante", "Verde", "Transparente", "Transarente", 105.6, 3),
    ("Carrera", 0, 2.0, "Metalica", "Azul", "Marron", "Marron", 210.50, 2),
    ("Polaroid", 2.0, 0.5, "Pasta", "Rojo", "Negro", "Negro", 150.60, 1),
    ("Oakley", 1.0, 1.0, "Flotante", "Negro", "Polarizado", "Polarizado", 105.40, 3),
    ("Prada", 0.0, 0.25, "Pasta", "Amarillo", "Violeta", "Violeta", 250.60, 1);

INSERT INTO Empleados(NombreEmpleado)
	VALUES("Pedro Suarez"),
    ("Sebastian Lopez"),
    ("Gustavo Barros"),
    ("Anabel Fontan"),
    ("Elizabeth Amaro");

INSERT INTO DireccionesProveedores(IdProveedor, Calle, Numero, Piso, Puerta, Ciudad, CodigoPostal, Pais)
	VALUES(1, "Paseo de San Antonio", 20, NULL, NULL, "Tarragona", "43002", "España"),
    (2, "Carrer dels Tallers", 522, 3, 1, "Barcelona", "08030", "España"),
    (3, "Lexington Avenue", 328, NULL, 5, "Nueva York", "10012", "Estados Unidos"),
    (4, "Calle de las Teterias", 44, 6, 3, "Andalucia", "41209", "España"),
    (5, "Friedrichstrasse", 5, 1, 1, "Berlin", "10178", "Alemania");

INSERT INTO Ventas(IdCliente, IdEmpleado, IdAnteojo, PrecioVenta)
	VALUES(3, 1, 2, 250.60),
    (4, 1, 3, 110.00),
    (5, 3, 5, 233.00),
    (3, 5, 4, 100.00),
    (1, 2, 2, 150.00);
    
INSERT INTO clientes(Nombre, Telefono, Email, FechaRegistro, Recomendado)
	VALUES("Alex Andam", "912345900", "alexAndam@gmail.com",NOW(), 4);
    
INSERT INTO DireccionCliente(IdClienteDireccion, Calle, Numero, Piso, Puerta, Ciudad, CodigoPostal, Pais)
	VALUES(6, "Carrer de Lleida", 21, NULL, NULL, "Barcelona", "08010", "España");
    
SELECT * FROM empleados as emp
	INNER JOIN  ventas as v
    ON emp.IdEmpleado = v.IdEmpleado;

    
	
    