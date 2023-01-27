CREATE DATABASE Spotify;

USE Spotify;

CREATE TABLE Usuarios(
	IdUsuario INT NOT NULL AUTO_INCREMENT,
    Premium BOOLEAN NOT NULL,
    Email VARCHAR(65) NOT NULL,
    Contraseña VARCHAR(20) NOT NULL,
    NombreUsuario VARCHAR(20) NOT NULL,
    FechaNacimiento DATE NOT NULL,
    Sexo VARCHAR(20) NOT NULL,
    Pais VARCHAR(30) NOT NULL,
    CodigoPostal VARCHAR(10) NOT NULL,
    UNIQUE EmailU(Email, NombreUsuario),
    UNIQUE NomUsuario(NombreUsuario),
    PRIMARY KEY (IdUsuario)
);

CREATE TABLE Subscripcion(
	IdUsuario INT NOT NULL,
    FechaInicio DATE NOT NULL,
    FechaRenovacion DATE NOT NULL,
    TarjetaCredito BOOLEAN NOT NULL,
    FOREIGN KEY(IdUsuario) REFERENCES Usuarios(IdUsuario)
);

CREATE TABLE TarjetaCredito(
	IdUsuario INT NOT NULL,
	NroTarjeta VARCHAR(30) NOT NULL,
    AñoCaducidad INT NOT NULL,
    MesCaducidad INT NOT NULL,
    CodigoSeguridad INT NOT NULL,
    PRIMARY KEY (IdUsuario),
    CONSTRAINT FOREIGN KEY (IdUsuario) REFERENCES Usuarios(IdUsuario)
);

CREATE TABLE PayPal(
	IdUsuario INT NOT NULL,
    NombreUsuarioPayPal VARCHAR(30) NOT NULL,
    UNIQUE NomUsPayPal(NombreUsuarioPayPal),
    PRIMARY KEY (IdUsuario),
    CONSTRAINT FOREIGN KEY(IdUsuario) REFERENCES Usuarios(IdUsuario)
);

CREATE TABLE PagosPremium(
	IdPago INT NOT NULL AUTO_INCREMENT,
	IdUsuario INT NOT NULL,
    FechaPago DATE NOT NULL,
    ImportePagado FLOAT NOT NULL,
    PRIMARY KEY (IdPago),
    FOREIGN KEY(IdUsuario) REFERENCES Usuarios(IdUsuario)
);

CREATE TABLE Playlist(
	IdPlaylist INT NOT NULL AUTO_INCREMENT,
    IdUsuario INT NOT NULL,
    TituloPlaylist VARCHAR(30) NOT NULL,
    FechaCreacion DATE NOT NULL,
    Eliminada BOOLEAN,
    FechaEliminacion DATE,
    UNIQUE (TituloPlaylist),
    PRIMARY KEY(IdPlaylist),
    FOREIGN KEY(IdUsuario) REFERENCES Usuarios(IdUsuario)
);

CREATE TABLE Artistas(
	IdArtista INT NOT NULL AUTO_INCREMENT,
    NombreArtista VARCHAR(60) NOT NULL,
    ImagenArtista BLOB,
    UNIQUE (NombreArtista),
    PRIMARY KEY(IdArtista)
);

CREATE TABLE Albumes(
	IdAlbum INT NOT NULL AUTO_INCREMENT,
    IdArtista INT NOT NULL,
    TituloAlbum VARCHAR(60) NOT NULL,
    AñoPublicacion INT NOT NULL, 
    ImagenPortada BLOB,
    UNIQUE (TituloAlbum),
    PRIMARY KEY (IdAlbum),
    CONSTRAINT FOREIGN KEY(IdArtista) REFERENCES Artistas(IdArtista)
);

CREATE TABLE Canciones(
	IdCancion INT NOT NULL AUTO_INCREMENT,
    TituloCancion VARCHAR(60) NOT NULL,
    DuracionCancion FLOAT NOT NULL,
    IdAlbum INT NOT NULL,
    PRIMARY KEY(IdCancion),
    CONSTRAINT FOREIGN KEY(IdAlbum) REFERENCES Albumes(IdAlbum)
);

CREATE TABLE ReproduccionesCancion(
	IdUsuario INT NOT NULL,
    IdCancion INT NOT NULL,
    CantReproducciones INT NOT NULL,
    PRIMARY KEY (IdUsuario),
    FOREIGN KEY(IdUsuario) REFERENCES Usuarios(IdUsuario),
    FOREIGN KEY(IdCancion) REFERENCES Canciones(IdCancion)
);

CREATE TABLE ArtistasSeguidos(
	IdUsuario INT NOT NULL,
    IdArtista INT NOT NULL,
    PRIMARY KEY (IdUsuario),
    FOREIGN KEY(IdUsuario) REFERENCES Usuarios(IdUsuario),
    FOREIGN KEY(IdArtista) REFERENCES Artistas(IdArtista)
);

CREATE TABLE ArtistaRelacionado(
	IdArtista INT NOT NULL,
    IdArtistaRelacionado INT NOT NULL,
    PRIMARY KEY (IdArtista),
    FOREIGN KEY (IdArtista) REFERENCES Artistas(IdArtista),
    FOREIGN KEY (IdArtistaRelacionado) REFERENCES Artistas(IdArtista)
);

CREATE TABLE CancionesFavoritas(
	IdUsuario INT NOT NULL,
    IdCancion INT NOT NULL,
    PRIMARY KEY (IdUsuario),
    FOREIGN KEY(IdUsuario) REFERENCES Usuarios(IdUsuario),
    FOREIGN KEY(IdCancion) REFERENCES Canciones(IdCancion)
);

CREATE TABLE AlbumesFavoritos(
	IdUsuario INT NOT NULL,
    IdAlbum INT NOT NULL,
    PRIMARY KEY (IdUsuario),
    FOREIGN KEY(IdUsuario) REFERENCES Usuarios(IdUsuario),
    FOREIGN KEY(IdAlbum) REFERENCES Albumes(IdAlbum)
);

CREATE TABLE PlaylistCompartida(
	IdPlaylist INT NOT NULL,
    IdUsuarioAgrega INT NOT NULL,
    FechaCancionAgregada DATE NOT NULL,
    IdCancion INT NOT NULL,
    PRIMARY KEY(IdPlaylist),
    FOREIGN KEY(IdPlaylist) REFERENCES Playlist(IdPlaylist),
    FOREIGN KEY(IdUsuarioAgrega) REFERENCES Usuarios(IdUsuario),
    FOREIGN KEY(IdCancion) REFERENCES Canciones(IdCancion)
);

