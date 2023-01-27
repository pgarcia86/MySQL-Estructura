CREATE DATABASE Youtube;

USE Youtube;

CREATE TABLE Usuarios(
	IdUsuario INT NOT NULL AUTO_INCREMENT,
	Email VARCHAR(60) NOT NULL,
    Contraseña VARCHAR(20) NOT NULL,
    NombreUsuario VARCHAR(30) NOT NULL,
    FechaNacimiento	DATE NOT NULL,
    Sexo VARCHAR(10) NOT NULL,
    Pais VARCHAR(30) NOT NULL,
    CodigoPostal VARCHAR(10) NOT NULL,
    UNIQUE NomUsuario(NombreUsuario),
    PRIMARY KEY(IdUsuario)
);

CREATE TABLE Videos(
	IdVideo INT NOT NULL AUTO_INCREMENT,
	Titulo VARCHAR(100) NOT NULL,
    Descripcion TEXT NOT NULL,
    Tamaño INT NOT NULL,
    NombreArchivo VARCHAR(60) NOT NULL,
    Estado VARCHAR(15) NOT NULL,
    Thumbnail BLOB,
    CantidadReproducciones INT NOT NULL,
    IdUsuarioSubida INT NOT NULL,
    UNIQUE TVideo(Titulo),
    PRIMARY KEY(IdVideo),
    FOREIGN KEY(IdUsuarioSubida) REFERENCES Usuarios(IdUsuario)
);

CREATE TABLE Etiqueta(
	IdEtiqueta INT NOT NULL AUTO_INCREMENT,
    IdVideo INT NOT NULL,
    NombreEtiqueta VARCHAR(65) NOT NULL,
    PRIMARY KEY(IdEtiqueta),
    FOREIGN KEY(IdVideo) REFERENCES Videos(IdVideo)
);

CREATE TABLE Canal(
	IdCanal INT NOT NULL AUTO_INCREMENT,
    IdUsuarioCreador INT NOT NULL,
    NombreCanal VARCHAR(60) NOT NULL,
    Descripcion TEXT NOT NULL,
    FechaCreacion DATE NOT NULL,
    UNIQUE NomCanal(NombreCanal),
    PRIMARY KEY (IdCanal),
    FOREIGN KEY(IdUsuarioCreador) REFERENCES Usuarios(IdUsuario)
);

CREATE TABLE MeGustaVideo(
	IdUsuarioLike INT NOT NULL,
    IdVideo INT NOT NULL,
    MeGustaV BOOLEAN NOT NULL,
    FechaMeGustaVideo DATE NOT NULL,
    PRIMARY KEY (IdUsuarioLike),
    FOREIGN KEY(IdUsuarioLike) REFERENCES Usuarios(IdUsuario),
    FOREIGN KEY(IdVideo) REFERENCES Videos(IdVideo)
);

CREATE TABLE SuscripcionCanal(
	IdUsuarioSuscriptor INT NOT NULL,
    IdCanal INT NOT NULL,
    PRIMARY KEY (IdUsuarioSuscriptor),
    FOREIGN KEY(IdUsuarioSuscriptor) REFERENCES Usuarios(IdUsuario),
    FOREIGN KEY(IdCanal) REFERENCES Canal(IdCanal)
);

CREATE TABLE Playlist(
	IdPlaylist INT NOT NULL AUTO_INCREMENT,
    IdUsuario INT NOT NULL,
    NombrePlaylist VARCHAR(60) NOT NULL,
    FechaCreacion DATE NOT NULL,
    Visibilidad BOOLEAN NOT NULL,
    UNIQUE NomPlaylist(NombrePlaylist),
    PRIMARY KEY (IdPlaylist),
    FOREIGN KEY(IdUsuario) REFERENCES Usuarios(IdUsuario)
);

CREATE TABLE Comentarios(
	IdComentario INT NOT NULL AUTO_INCREMENT,
    IdUsuarioComentario INT NOT NULL,
    IdVideo INT NOT NULL,
    TextoComentario TEXT NOT NULL,
    FechaComentario DATE NOT NULL,
    HoraComentario TIME NOT NULL,
    PRIMARY KEY(IdComentario),
    FOREIGN KEY(IdUsuarioComentario) REFERENCES Usuarios(IdUsuario),
    FOREIGN KEY(IdVideo) REFERENCES Videos(IdVideo)
);

CREATE TABLE MegustaComentario(
	IdComentarioLike INT NOT NULL,
    IdUsuarioLikeComentario INT NOT NULL,
    FechaMeGustaComent DATE NOT NULL,
    HoraMeGustaComent TIME NOT NULL,
    PRIMARY KEY (IdComentarioLike),
    FOREIGN KEY(IdComentarioLike) REFERENCES Comentarios(IdComentario),
    FOREIGN KEY(IdUsuarioLikeComentario) REFERENCES Usuarios(IdUsuario)
);

