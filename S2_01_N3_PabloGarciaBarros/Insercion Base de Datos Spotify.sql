USE Spotify;

INSERT INTO Usuarios(Premium, Email, Contraseña, NombreUsuario, FechaNacimiento, Sexo, Pais, CodigoPostal)
	VALUES(TRUE, "email1@email1", "Contraseña1", "NombreUsuario1", "1990/10/24", "Hombre", "Pais1", 1001),
    (TRUE, "email2@email2", "Contraseña2", "NombreUsuario2", "1990/10/24", "Hombre", "Pais2", 1001),
    (FALSE, "email3@email3", "Contraseña3", "NombreUsuario3", "1989/10/24", "Mujer", "Pais3", 1001),
    (FALSE, "email4@email4", "Contraseña4", "NombreUsuario4", "1988/10/24", "Hombre", "Pais4", 1001),
    (TRUE, "email5@email5", "Contraseña5", "NombreUsuario5", "1987/10/24", "Hombre", "Pais5", 1001),
    (FALSE, "email6@email6", "Contraseña6", "NombreUsuario6", "1990/10/24", "Mujer", "Pais6", 1001),
    (TRUE, "email7@email7", "Contraseña7", "NombreUsuario7", "2000/10/24", "Mujer", "Pais7", 1001),
    (TRUE, "email8@email8", "Contraseña8", "NombreUsuario8", "2001/10/24", "Hombre", "Pais8", 1001),
    (TRUE, "email9@email9", "Contraseña9", "NombreUsuario9", "1998/10/24", "Mujer", "Pais9", 1001),
    (FALSE, "email10@email10", "Contraseña10", "NombreUsuario10", "1987/10/24", "Hombre", "Pais10", 1001),
    (TRUE, "email11@email11", "Contraseña11", "NombreUsuario11", "1994/10/24", "Hombre", "Pais11", 1001),
    (FALSE, "email12@email12", "Contraseña12", "NombreUsuario12", "1995/10/24", "Hombre", "Pais12", 1001),
    (TRUE, "email13@email13", "Contraseña13", "NombreUsuario13", "2004/10/24", "Mujer", "Pais13", 1001),
    (TRUE, "email14@email14", "Contraseña14", "NombreUsuario14", "1984/10/24", "Mujer", "Pais14", 1001),
    (TRUE, "email15@email15", "Contraseña15", "NombreUsuario15", "1996/10/24", "Hombre", "Pais15", 1001),
    (FALSE, "email16@email16", "Contraseña16", "NombreUsuario16", "1995/10/24", "Hombre", "Pais16", 1001),
    (TRUE, "email17@email17", "Contraseña17", "NombreUsuario17", "1983/10/24", "Mujer", "Pais17", 1001),
    (FALSE, "email18@email18", "Contraseña18", "NombreUsuario18", "1999/10/24", "Hombre", "Pais18", 1001),
    (TRUE, "email19@email19", "Contraseña19", "NombreUsuario19", "1985/10/24", "Hombre", "Pais19", 1001),
    (TRUE, "email20@email20", "Contraseña20", "NombreUsuario20", "1988/10/24", "Mujer", "Pais20", 1001);
    
INSERT INTO Subscripcion(IdUsuario, FechaInicio, FechaRenovacion, TarjetaCredito)
	VALUES(1, "2021/04/21", "2021/05/21", TRUE),
    (2, "2021/06/21", "2021/07/21", FALSE),
    (5, "2021/09/21", "2021/10/21", FALSE),
    (7, "2021/01/21", "2021/02/21", TRUE),
    (8, "2021/08/21", "2021/09/21", TRUE),
    (9, "2021/07/21", "2021/08/21", TRUE),
    (11, "2021/05/21", "2021/06/21", FALSE),
    (13, "2021/11/21", "2021/12/21", TRUE),
    (14, "2021/10/21", "2021/11/21", TRUE),
    (15, "2021/02/21", "2021/03/21", FALSE),
    (17, "2021/12/21", "2022/01/21", TRUE),
    (19, "2021/03/21", "2021/04/21", FALSE),
    (20, "2021/04/17", "2021/05/17", TRUE);
    
INSERT INTO TarjetaCredito(IdUsuario, NroTarjeta, AñoCaducidad, MesCaducidad, CodigoSeguridad)
	VALUES(1, "4459137191904968", 2024, 05, 111),
    (7, "4150106387154177", 2025, 07, 222),
    (8, "4856103140325563", 2024, 10, 333),
    (9, "4539894155356197", 2023, 09, 444),
    (13, "4907271273069453", 2027, 07, 555),
    (14, "4548092976047025", 2022, 11, 666),
    (17, "4553823332772696", 2025, 04, 777),
    (20, "4259764189359624", 2024, 03, 888);

INSERT INTO PayPal(IdUsuario, NombreUsuarioPayPal)
	VALUES(2, "UsuarioPayPay2"),
    (5, "UsuarioPayPay5"),
    (11, "UsuarioPayPay11"),
    (15, "UsuarioPayPay15"),
    (19, "UsuarioPayPay19");
    
INSERT INTO PagosPremium(IdUsuario, FechaPago, ImportePagado)
	VALUES(1, "2022/10/11", 15),
    (2, "2022/10/11", 15),
    (5, "2022/10/11", 15),
    (7, "2022/10/11", 15),
    (8, "2022/10/11", 15),
    (9, "2022/10/11", 15),
    (11, "2022/10/11", 15),
    (13, "2022/10/11", 15),
    (14, "2022/10/11", 15),
    (15, "2022/10/11", 15),
    (17, "2022/10/11", 15),
    (19, "2022/10/11", 15),
    (20, "2022/10/11", 15),
    (1, "2022/11/11", 15),
    (5, "2022/11/11", 15),
    (11, "2022/11/11", 15),
    (14, "2022/11/11", 15),
    (19, "2022/11/11", 15),
    (19, "2022/12/11", 15);
    
INSERT INTO PlayList(IdUsuario, TituloPlaylist, FechaCreacion, Eliminada, FechaEliminacion)
	VALUES(1, "Playlist1", "2022/05/13", FALSE, NULL),
    (2, "Playlist2", "2022/05/13", FALSE, NULL),
    (5, "Playlist3", "2022/05/13", TRUE, "2022/07/11"),
    (7, "Playlist4", "2022/05/13", FALSE, NULL),
    (14, "Playlist5", "2022/05/13", FALSE, NULL),
    (1, "Playlist6", "2022/05/13", TRUE, "2022/10/21"),
    (3, "Playlist7", "2022/05/13", TRUE, "2022/11/18"),
    (5, "Playlist8", "2022/05/13", FALSE, NULL),
    (13, "Playlist9", "2022/05/13", FALSE, NULL),
    (1, "Playlist10", "2022/05/13", FALSE, NULL),
    (2, "Playlist11", "2022/05/13", FALSE, NULL),
    (7, "Playlist12", "2022/05/13", TRUE, "2022/11/17"),
    (9, "Playlist13", "2022/05/13", FALSE, NULL),
    (7, "Playlist14", "2022/05/13", TRUE, "2022/09/20"),
    (1, "Playlist15", "2022/05/13", TRUE, "2022/10/20"),
    (5, "Playlist16", "2022/05/13", FALSE, NULL),
    (20, "Playlist17", "2022/05/13", FALSE, NULL),
    (19, "Playlist18", "2022/05/13", FALSE, NULL),
    (3, "Playlist19", "2021/05/13", TRUE, "2022/01/15"),
    (7, "Playlist20", "2022/05/13", FALSE, NULL),
    (5, "Playlist21", "2022/05/13", FALSE, NULL);
    
INSERT INTO Artistas(NombreArtista, ImagenArtista)
	VALUES("Artista1", NULL),
    ("Artista2", NULL),
    ("Artista3", NULL),
    ("Artista4", NULL),
    ("Artista5", NULL),
    ("Artista6", NULL),
    ("Artista7", NULL),
    ("Artista8", NULL),
    ("Artista9", NULL),
    ("Artista10", NULL),
    ("Artista11", NULL),
    ("Artista12", NULL),
    ("Artista13", NULL);
    
INSERT INTO Albumes(IdArtista, TituloAlbum, AñoPublicacion, ImagenPortada)
	VALUES(1, "Album1", 2020, NULL),
    (5, "Album2", 2020, NULL),
    (3, "Album3", 2020, NULL),
    (2, "Album4", 2020, NULL),
    (7, "Album5", 2020, NULL),
    (11, "Album6", 2020, NULL),
    (13, "Album7", 2020, NULL),
    (1, "Album8", 2020, NULL),
    (5, "Album9", 2020, NULL),
    (7, "Album10", 2020, NULL),
    (10, "Album11", 2020, NULL),
    (11, "Album12", 2020, NULL),
    (6, "Album13", 2020, NULL),
    (13, "Album14", 2020, NULL),
    (5, "Album15", 2020, NULL),
    (1, "Album16", 2020, NULL);
    
INSERT INTO Canciones(TituloCancion, DuracionCancion, IdAlbum)
	VALUES("Cancion1", 3.14, 5),
    ("Cancion2", 3.14, 2),
    ("Cancion3", 3.14, 3),
    ("Cancion4", 3.14, 5),
    ("Cancion5", 3.14, 5),
    ("Cancion6", 3.14, 5),
    ("Cancion7", 3.14, 7),
    ("Cancion8", 3.14, 13),
    ("Cancion9", 3.14, 6),
    ("Cancion10", 3.14, 13),
    ("Cancion11", 3.14, 6),
    ("Cancion12", 3.14, 7),
    ("Cancion13", 3.14, 13),
    ("Cancion14", 3.14, 7),
    ("Cancion15", 3.14, 6),
    ("Cancion16", 3.14, 7),
    ("Cancion17", 3.14, 7),
    ("Cancion18", 3.14, 13),
    ("Cancion19", 3.14, 13),
    ("Cancion20", 3.14, 6),
    ("Cancion21", 3.14, 7);
    
INSERT INTO ReproduccionesCancion(IdUsuario, IdCancion, CantReproducciones)
	VALUES(4, 13, 9),
    (3, 10, 2),
    (7, 9, 5),
    (9, 13, 25),
    (15, 10, 5),
    (4, 5, 5),
    (13, 12, 5),
    (19, 5, 10),
    (3, 10, 10),
    (17, 9, 24),
    (19, 8, 33),
    (6, 9, 9),
    (8, 3, 3);
    
INSERT INTO CancionesFavoritas(IdUsuario, IdCancion)
	VALUES(9, 5),
    (3, 7),
    (5, 5),
    (7, 12),
    (14, 20),
    (19, 9),
    (20, 17),
    (6, 19),
    (7, 13),
    (5, 10),
    (6, 9),
    (7, 6),
    (11, 15),
    (10, 21);
    
INSERT INTO ArtistasSeguidos(IdUsuario, IdArtista)
	VALUES(3, 5),
    (2, 9),
    (3, 10),
    (5, 7),
    (1, 9),
    (10, 10),
    (11, 9),
    (6, 7),
    (9, 12),
    (8, 10),
    (7, 10),
    (7, 12),
    (14, 5);
    
INSERT INTO AlbumesFavoritos(IdUsuario, IdAlbum)
	VALUES(8, 7),
    (13, 5),
    (9, 3),
    (5, 8),
    (14, 13),
    (3, 10),
    (7, 11),
    (15, 6),
    (18, 5),
    (5, 5);
    
INSERT INTO ArtistaRelacionado(IdArtista, IdArtistarelacionado)
	VALUES(1, 10),
    (2, 8),
    (5, 4),
    (7, 5),
    (9, 1),
    (10, 3),
    (11, 7),
    (9, 9),
    (5, 2),
    (3, 5),
    (12, 7),
    (13, 3),
    (8, 7),
    (7, 12),
    (5, 13),
    (5, 6);
    
INSERT INTO PlaylistCompartida(IdPlaylist, IdUsuarioAgrega, FechaCancionAgregada, IdCancion)
	VALUES(1, 5, "2022/02/13", 1),
    (2, 9, "2022/02/13", 2),
    (5, 4, "2022/02/13", 3),
    (7, 1, "2022/02/13", 4),
    (8, 7, "2022/02/13", 5),
    (9, 9, "2022/02/13", 6),
    (11, 3, "2022/02/13", 7),
    (13, 20, "2022/02/13", 8),
    (14, 13, "2022/02/13", 9),
    (15, 10, "2022/02/13", 10),
    (17, 9, "2022/02/13", 11),
    (19, 5, "2022/02/13", 12),
    (20, 4, "2022/02/13", 13),
    (1, 5, "2022/02/13", 14),
    (7, 7, "2022/02/13", 15),
    (9, 3, "2022/02/13", 16),
    (13, 3, "2022/02/13", 17),
    (20, 7, "2022/02/13", 18),
    (3, 9, "2022/02/13", 19),
    (4, 10, "2022/02/13", 20),
    (17, 16, "2022/02/13", 21),
    (16, 12, "2022/02/13", 1),
    (21, 3, "2022/02/13", 2),
    (5, 7, "2022/02/13", 3),
    (1, 3, "2022/02/13", 4);
    
SELECT p.IdPlaylist, p.IdUsuario AS UsuarioCreador, COUNT(p.IdPlaylist) AS CantidadCanciones 
	FROM PlaylistCompartida AS pc, Playlist AS p, Canciones AS c
    WHERE c.IdCancion = pc.IdCancion
	AND p.IdPlaylist = pc.IdPlaylist
	AND p.IdPlaylist = 1;  
    
SELECT * FROM PlaylistCompartida AS pc
	INNER JOIN Canciones AS c
    ON pc.IdCancion = c.IdCancion
    WHERE pc.IdPlaylist = 5;
    
SELECT a.IdArtista, ar.IdArtistaRelacionado FROM ArtistaRelacionado AS ar, Artistas AS a
	WHERE ar.IdArtista = a.IdArtista
    AND a.IdArtista = 7;
    
SELECT artSeg.IdArtista, COUNT(artSeg.IdArtista) AS CantidadSeguidores
	FROM ArtistasSeguidos AS artSeg
    INNER JOIN Artistas AS a
    ON a.IdArtista = artSeg.IdArtista
    WHERE artSeg.IdArtista = 10;
    
SELECT c.IdCancion, c.TituloCancion, SUM(rc.CantReproducciones) AS CantidadReproducciones
	FROM Canciones AS c, ReproduccionesCancion AS rc
    WHERE c.IdCancion = rc.IdCancion
    AND c.IdCancion = 13;

    
SELECT *, SUM(pp.ImportePagado)
	FROM Usuarios AS u, PagosPremium AS pp, PayPal
    WHERE u.IdUsuario = pp.IdUsuario
	AND u.IdUsuario = PayPal.IdUsuario
    AND u.IdUsuario = 19;
    
SELECT *, COUNT(pl.IdUsuario) AS PlaylistCreadas
	FROM Usuarios AS u, Playlist AS pl
    WHERE u.IdUsuario = pl.IdUsuario
    AND u.IdUsuario = 7;
    
SELECT c.IdAlbum, a.IdArtista, a.IdAlbum, a.TituloAlbum, COUNT(c.IdAlbum) AS CantidadCanciones
	FROM Canciones AS c, Albumes AS a
    WHERE a.IdAlbum = c.IdAlbum
    AND c.IdAlbum = 5;
    
