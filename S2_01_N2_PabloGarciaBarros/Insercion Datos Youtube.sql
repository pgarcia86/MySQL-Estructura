USE Youtube;

INSERT INTO Usuarios(Email, Contraseña, NombreUsuario, FechaNacimiento, Sexo, Pais, CodigoPostal)
	VALUES("email1@email1", "contraseña1", "Usuario1", "1986/03/24", "Hombre", "España", "1001"),
    ("email2@email2", "contraseña2", "Usuario2", "1986/03/24", "Mujer", "España", "1002"),
    ("email3@email3", "contraseña3", "Usuario3", "1986/03/24", "Hombre", "España", "1003"),
    ("email4@email4", "contraseña4", "Usuario4", "1986/03/24", "Mujer", "España", "1004"),
    ("email5@email5", "contraseña5", "Usuario5", "1986/03/24", "Hombre", "España", "1005"),
    ("email6@email6", "contraseña6", "Usuario6", "1986/03/24", "Mujer", "España", "1006"),
    ("email7@email7", "contraseña7", "Usuario7", "1986/03/24", "Hombre", "España", "1007"),
    ("email8@email8", "contraseña8", "Usuario8", "1986/03/24", "Mujer", "España", "1008"),
    ("email9@email9", "contraseña9", "Usuario9", "1986/03/24", "Hombre", "España", "1009"),
    ("email10@email10", "contraseña1", "Usuario10", "1986/03/24", "Mujer", "España", "1010");
    
INSERT INTO Videos(Titulo, Descripcion, Tamaño, NombreArchivo, Estado, CantidadReproducciones, IdUsuarioSubida)
	VALUES("Video1", "Este es el video 1", 1, "ArchivoVideo1", "Publico", 1, 1),
    ("Video2", "Este es el video 2", 2, "ArchivoVideo2", "Oculto", 2,  2),
    ("Video3", "Este es el video 3", 3, "ArchivoVideo3", "Privado", 3, 3),
    ("Video4", "Este es el video 4", 4, "ArchivoVideo4", "Publico", 4, 4),
    ("Video5", "Este es el video 5", 5, "ArchivoVideo5", "Oculto", 5, 5),
    ("Video6", "Este es el video 6", 6, "ArchivoVideo6", "Privado", 6, 6),
    ("Video7", "Este es el video 7", 7, "ArchivoVideo7", "Publico", 7, 7),
    ("Video8", "Este es el video 8", 8, "ArchivoVideo8", "Oculto", 8, 8),
    ("Video9", "Este es el video 9", 9, "ArchivoVideo9", "Privado", 9, 9),
    ("Video10", "Este es el video 10", 10, "ArchivoVideo10", "Publico", 10, 10),
    ("Video11", "Este es el video 11", 11, "ArchivoVideo11", "Oculto", 11, 1),
    ("Video12", "Este es el video 12", 12, "ArchivoVideo12", "Privado", 12, 2),
    ("Video13", "Este es el video 13", 13, "ArchivoVideo13", "Publico", 13, 3),
    ("Video14", "Este es el video 14", 14, "ArchivoVideo14", "Oculto", 14, 4),
    ("Video15", "Este es el video 15", 15, "ArchivoVideo15", "Privado", 15, 5),
    ("Video16", "Este es el video 16", 16, "ArchivoVideo16", "Publico", 16, 6),
    ("Video17", "Este es el video 17", 17, "ArchivoVideo17", "Oculto", 17, 7),
    ("Video18", "Este es el video 18", 18, "ArchivoVideo18", "Privado", 18, 8),
    ("Video19", "Este es el video 19", 19, "ArchivoVideo19", "Publico", 19, 9),
    ("Video20", "Este es el video 20", 20, "ArchivoVideo20", "Oculto", 1, 10),
    ("Video21", "Este es el video 21", 21, "ArchivoVideo21", "Privado", 2, 1),
    ("Vide22", "Este es el video 22", 22, "ArchivoVideo22", "Publico", 3, 2),
    ("Video23", "Este es el video 23", 23, "ArchivoVideo23", "Oculto", 4, 3),
    ("Video24", "Este es el video 24", 24, "ArchivoVideo24", "Privado", 5, 4),
    ("Video25", "Este es el video 25", 25, "ArchivoVideo25", "Publico", 6, 5),
    ("Video26", "Este es el video 26", 26, "ArchivoVideo26", "Oculto", 7, 6),
    ("Video27", "Este es el video 27", 27, "ArchivoVideo27", "Privado", 8, 7),
    ("Video28", "Este es el video 28", 28, "ArchivoVideo28", "Publico", 9, 8),
    ("Video29", "Este es el video 29", 29, "ArchivoVideo29", "Oculto", 10, 9),
    ("Video30", "Este es el video 30", 30, "ArchivoVideo30", "Privado", 11, 10);
    
INSERT INTO Canal(IdUsuarioCreador, NombreCanal, Descripcion, FechaCreacion)
	VALUES(1, "Canal1", "Este es el canal 1", "1995/10/26"),
    (2,"Canal2", "Este es el canal 2", "1995/10/26"),
    (3,"Canal3", "Este es el canal 3", "1995/10/26"),
    (4,"Canal4", "Este es el canal 4", "1995/10/26"),
    (5,"Canal5", "Este es el canal 5", "1995/10/26"),
    (6,"Canal6", "Este es el canal 6", "1995/10/26"),
    (7,"Canal7", "Este es el canal 7", "1995/10/26"),
    (8,"Canal8", "Este es el canal 8", "1995/10/26"),
    (9,"Canal9", "Este es el canal 9", "1995/10/26"),
    (10,"Canal10", "Este es el canal 10", "1995/10/26"),
    (1,"Canal11", "Este es el canal 11", "1995/10/26"),
    (2,"Canal12", "Este es el canal 12", "1995/10/26"),
    (3,"Canal13", "Este es el canal 13", "1995/10/26"),
    (4,"Canal14", "Este es el canal 14", "1995/10/26"),
    (5,"Canal15", "Este es el canal 15", "1995/10/26"),
    (6,"Canal16", "Este es el canal 16", "1995/10/26"),
    (7,"Canal17", "Este es el canal 17", "1995/10/26"),
    (8,"Canal18", "Este es el canal 18", "1995/10/26"),
    (9,"Canal19", "Este es el canal 19", "1995/10/26"),
    (10,"Canal20", "Este es el canal 20", "1995/10/26");

INSERT INTO Etiqueta(IdVideo, NombreEtiqueta)
	VALUES(1, "Etiqueta 1"),
    (2, "Etiqueta 2"),
    (3, "Etiqueta 3"),
    (4, "Etiqueta 4"),
    (5, "Etiqueta 5"),
    (9, "Etiqueta 2");
    
INSERT INTO Playlist(IdUsuario, NombrePlaylist, FechaCreacion, Visibilidad)
	VALUES(1, "Playlist 1", "2022/04/19", TRUE),
    (2, "Playlist 2", "2022/04/20", FALSE),
    (3, "Playlist 3", "2022/04/21", TRUE),
    (4, "Playlist 4", "2022/04/22", FALSE),
    (5, "Playlist 5", "2022/04/23", TRUE),
    (6, "Playlist 6", "2022/04/24", FALSE),
    (7, "Playlist 7", "2022/04/25", TRUE),
    (8, "Playlist 8", "2022/04/19", FALSE),
    (9, "Playlist 9", "2022/04/10", TRUE),
    (10, "Playlist 10", "2022/04/15", FALSE),
    (1, "Playlist 11", "2022/04/03", TRUE),
    (2, "Playlist 12", "2022/04/01", FALSE),
    (3, "Playlist 13", "2022/04/06", TRUE),
    (4, "Playlist 14", "2022/04/08", FALSE),
    (5, "Playlist 15", "2022/04/07", TRUE);
    
INSERT INTO SuscripcionCanal(IdUsuarioSuscriptor, IdCanal)
	VALUES(1, 20),
    (2, 19),
    (3, 18),
    (4, 17),
    (5, 16),
    (6, 15),
    (7, 14),
    (8, 13),
    (9, 12),
    (10, 11),
    (1, 10),
    (2, 9),
    (3, 8),
    (4, 7),
    (5, 6),
    (6, 5),
    (7, 4),
    (8, 3),
    (9, 2),
    (10, 1);
    
INSERT INTO MeGustaVideo(IdUsuarioLike, IdVideo, MeGustaV, FechaMeGustaVideo)
	VALUES(1, 30, TRUE, "2022/01/07"),
    (2, 29, TRUE, "2022/01/07"),
    (3, 14, FALSE, "2022/01/07"),
    (4, 27, TRUE, "2022/01/07"),
    (5, 26, TRUE, "2022/01/07"),
    (6, 25, FALSE, "2022/01/07"),
    (7, 24, FALSE, "2022/01/07"),
    (8, 23, TRUE, "2022/01/07"),
    (9, 22, FALSE, "2022/01/07"),
    (10, 21, TRUE, "2022/01/07"),
    (1, 20, TRUE, "2022/01/07"),
    (2, 19, TRUE, "2022/01/07"),
    (3, 1, TRUE, "2022/01/07"),
    (4, 17, TRUE, "2022/01/07"),
    (5, 16, TRUE, "2022/01/07"),
    (6, 15, TRUE, "2022/01/07"),
    (7, 14, TRUE, "2022/01/07"),
    (8, 13, TRUE, "2022/01/07"),
    (9, 12, TRUE, "2022/01/07"),
    (10, 11, FALSE, "2022/01/07"),
    (1, 10, TRUE, "2022/01/07"),
    (2, 9, TRUE, "2022/01/07"),
    (3, 8, TRUE, "2022/01/07"),
    (4, 7, TRUE, "2022/01/07"),
    (5, 6, TRUE, "2022/01/07"),
    (6, 5, TRUE, "2022/01/07"),
    (7, 4, FALSE, "2022/01/07"),
    (8, 3, TRUE, "2022/01/07"),
    (9, 2, FALSE, "2022/01/07"),
    (10, 1, TRUE, "2022/01/07"),
    (1, 30, TRUE, "2022/01/07"),
    (2, 29, TRUE, "2022/01/07"),
    (3, 28, TRUE, "2022/01/07"),
    (4, 27, TRUE, "2022/01/07"),
    (5, 26, FALSE, "2022/01/07"),
    (6, 25, TRUE, "2022/01/07"),
    (7, 24, FALSE, "2022/01/07"),
    (8, 23, TRUE, "2022/01/07"),
    (9, 22, TRUE, "2022/01/07"),
    (10, 21, FALSE, "2022/01/07"),
    (1, 20, TRUE, "2022/01/07"),
    (2, 19, TRUE, "2022/01/07"),
    (3, 18, TRUE, "2022/01/07"),
    (4, 17, TRUE, "2022/01/07"),
    (5, 16, TRUE, "2022/01/07"),
    (6, 15, TRUE, "2022/01/07"),
    (7, 14, TRUE, "2022/01/07"),
    (8, 13, FALSE, "2022/01/07"),
    (9, 12, TRUE, "2022/01/07"),
    (10, 11, TRUE, "2022/01/07"),
    (1, 10, TRUE, "2022/01/07"),
    (2, 9, TRUE, "2022/01/07"),
    (3, 2, FALSE, "2022/01/07"),
    (4, 7, FALSE, "2022/01/07"),
    (5, 6, FALSE, "2022/01/07"),
    (6, 5, TRUE, "2022/01/07"),
    (7, 4, TRUE, "2022/01/07"),
    (8, 3, TRUE, "2022/01/07"),
    (9, 2, FALSE, "2022/01/07"),
    (10, 1, FALSE, "2022/01/07");
    
INSERT INTO Comentarios(IdUsuarioComentario, IdVideo, TextoComentario, FechaComentario, HoraComentario)
	VALUES(10, 20, "Este es un comentario", "2022/03/17", "10:14"),
    (9, 14, "Este es un comentario", "2022/03/17", "10:14"),
    (8, 1, "Este es un comentario", "2022/03/17", "10:14"),
    (7, 22, "Este es un comentario", "2022/03/17", "10:14"),
    (6, 8, "Este es un comentario", "2022/03/17", "10:14"),
    (5, 10, "Este es un comentario", "2022/03/17", "10:14"),
    (4, 3, "Este es un comentario", "2022/03/17", "10:14"),
    (3, 5, "Este es un comentario", "2022/03/17", "10:14"),
    (2, 9, "Este es un comentario", "2022/03/17", "10:14"),
    (1, 6, "Este es un comentario", "2022/03/17", "10:14");
    
INSERT INTO MeGustaComentario(IdComentarioLike, IdUsuarioLikeComentario, FechaMeGustaComent, HoraMeGustaComent)
	VALUES(1, 4, "2022/09/25", "11:21"),
    (2, 9, "2022/09/25", "11:21"),
    (3, 1, "2022/09/25", "11:21"),
    (4, 5, "2022/09/25", "11:21"),
    (5, 2, "2022/09/25", "11:21"),
    (6, 3, "2022/09/25", "11:21"),
    (7, 8, "2022/09/25", "11:21"),
    (8, 6, "2022/09/25", "11:21"),
    (9, 10, "2022/09/25", "11:21"),
    (10, 7, "2022/09/25", "11:21"),
    (10, 3, "2022/09/25", "11:21"),
    (9, 7, "2022/09/25", "11:21"),
    (8, 6, "2022/09/25", "11:21"),
    (7, 1, "2022/09/25", "11:21"),
    (6, 4, "2022/09/25", "11:21"),
    (5, 9, "2022/09/25", "11:21"),
    (4, 2, "2022/09/25", "11:21"),
    (3, 8, "2022/09/25", "11:21"),
    (2, 5, "2022/09/25", "11:21"),
    (1, 10, "2022/09/25", "11:21");
    
SELECT * FROM Playlist AS p
	INNER JOIN Usuarios AS U
    ON u.IdUsuario = p.IdUsuario
    WHERE u.IdUsuario = 2;
    
SELECT *
	FROM Videos AS  v
    INNER JOIN Etiqueta AS e 
    ON e.IdVideo = v.IdVideo
    WHERE v.IdVideo = 9;
    
SELECT * 
	FROM Canal
    WHERE Canal.IdUsuarioCreador = 3;
    

SELECT * FROM Canal AS c
	INNER JOIN SuscripcionCanal AS sc
    ON c.IdCanal = sc.IdCanal
    WHERE sc.IdUsuarioSuscriptor = 4;
    
SELECT *, SUM(IF(MeGustaVideo.MeGustaV = TRUE, 1, 0)) AS CantidadLikes, 
	SUM(IF(MeGustaVideo.MeGustaV = FALSE, 1, 0)) AS CantidadDislikes
	FROM MeGustaVideo, Videos
    WHERE MeGustaVideo.IdVideo = Videos.IdVideo
    AND Videos.IdVideo = 6;

SELECT DISTINCT * FROM MeGustaVideo AS mg
	INNER JOIN Videos AS v
    ON mg.IdVideo = v.IdVideo
    WHERE mg.IdUsuarioLike = 3;
    
SELECT * FROM Usuarios, Comentarios
	INNER JOIN Videos
    ON Videos.IdVideo = Comentarios.IdVideo
	WHERE Usuarios.IdUsuario = Comentarios.IdUsuarioComentario
    AND Comentarios.IdUsuarioComentario = 3;
    
SELECT * FROM Comentarios, MeGustaComentario AS mgc
    WHERE mgc.IdUsuarioLikeComentario = 3
    AND Comentarios.IdComentario = mgc.IdComentarioLike;
    
    