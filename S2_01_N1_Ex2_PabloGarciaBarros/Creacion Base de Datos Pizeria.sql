DROP DATABASE IF EXISTS Pizeria;
CREATE DATABASE Pizeria;

USE Pizeria;
CREATE TABLE Tiendas(
	IdTienda INT NOT NULL AUTO_INCREMENT,
    Direccion VARCHAR(45) NOT NULL,
    CodigoPostal VARCHAR(45) NOT NULL,
    Localidad VARCHAR(45) NOT NULL,
    Provincia VARCHAR(45) NOT NULL,
    PRIMARY KEY(IdTienda)
);

CREATE TABLE Clientes(
	IdCliente INT NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR(45) NOT NULL,
    Apellido VARCHAR(45) NOT NULL,
    Direccion VARCHAR(60) NOT NULL,
    CodigoPostal VARCHAR(20) NOT NULL,
    Localidad VARCHAR(45) NOT NULL,
    Provincia VARCHAR(45) NOT NULL,
    Telefono VARCHAR(45) NOT NULL,
    PRIMARY KEY(IdCliente)
);

CREATE TABLE Empleados(
	IdEmpleado INT NOT NULL AUTO_INCREMENT,
    IdTiendaTrabajador INT NOT NULL,
    NIF VARCHAR(20) NOT NULL,
    Nombre VARCHAR(45) NOT NULL, 
    Apellido VARCHAR(45) NOT NULL,
    Telefono VARCHAR(20) NOT NULL,
    Repartidor BOOLEAN NOT NULL,
    PRIMARY KEY(IdEmpleado),
    FOREIGN KEY(IdTiendaTrabajador) REFERENCES Tiendas(IdTienda)
);

CREATE TABLE TipoProducto(
	IdTipoProducto INT NOT NULL AUTO_INCREMENT,
    Descripcion VARCHAR(20) NOT NULL,
    PRIMARY KEY(IdTipoProducto)
);

CREATE TABLE Productos(
	IdProducto INT NOT NULL,
    Nombre VARCHAR(20) NOT NULL, 
    IdTipoProducto INT NOT NULL,    
    Precio DOUBLE NOT NULL,
    Imagen BLOB,
    PRIMARY KEY(IdProducto),
    FOREIGN KEY (IdTipoProducto) REFERENCES TipoProducto(IdTipoProducto)
    );

CREATE TABLE CategoriaPiza(
	IdCategoria INT NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR(45) NOT NULL,
    PRIMARY KEY(IdCategoria)
);

CREATE TABLE Pizas(
	IdPiza INT NOT NULL,
    IdCategoriaPiza INT NOT NULL,
    PRIMARY KEY(IdPiza),
    FOREIGN KEY(IdPiza) REFERENCES Productos(IdProducto),
    FOREIGN KEY(IdCategoriaPiza) REFERENCES CategoriaPiza(IdCategoria)
);

CREATE TABLE Comandas(
	IdComanda INT NOT NULL AUTO_INCREMENT,
    IdEmpleado INT NOT NULL,
    IdTienda INT NOT NULL,
    IdCliente INT NOT NULL,
    Dia DATE NOT NULL,
    Hora TIME NOT NULL,
    EntregaDomicilio BOOLEAN,
    PRIMARY KEY(IdComanda), 
    CONSTRAINT FOREIGN KEY(IdEmpleado) REFERENCES Empleados(IdEmpleado),
    CONSTRAINT FOREIGN KEY(IdTienda) REFERENCES Tiendas(IdTienda),
    CONSTRAINT FOREIGN KEY(IdCliente) REFERENCES Clientes(IdCliente)
);

CREATE TABLE DetalleComanda(
	IdComanda INT NOT NULL,
    IdProducto INT,
    Cantidad INT,
    FOREIGN KEY(IdComanda) REFERENCES Comandas(IdComanda),
    FOREIGN KEY(IdProducto) REFERENCES Productos(IdProducto)
);

CREATE TABLE PedidosRepartidos(
	IdRepartidor INT NOT NULL,
    IdComanda INT NOT NULL,
    PRIMARY KEY (IdRepartidor),
    FOREIGN KEY (IdRepartidor) REFERENCES Empleados(IdEmpleado),
    FOREIGN KEY(IdComanda) REFERENCES Comandas(IdComanda)
);



