CREATE DATABASE post;

CREATE TABLE POST (
	Id SERIAL, 
	NomUsu VARCHAR(20), 
	FEC_CREACION DATE,
	CONTENIDO VARCHAR(20),
	DESCRIPCION VARCHAR(20),
	PRIMARY KEY (Id) 
);

INSERT INTO post (nomusu, fec_creacion, contenido, descripcion)
VALUES ('PAMELA', '22/06/2020','USUARIO DE PRUEBA 1', 'PRUEBA_AUX');

INSERT INTO post (nomusu, fec_creacion, contenido, descripcion)
VALUES ('PAMELA', '22/06/2020','USUARIO DE PRUEBA 1', 'PRUEBA_AUX');

INSERT INTO post (nomusu, fec_creacion, contenido, descripcion)
VALUES ('PAMELA', '25/06/2020','USUARIO DE PRUEBA 3', 'PRUEBA_AUX2');

SELECT * FROM POST

ALTER TABLE post ADD TITULO varchar(20);

UPDATE post SET titulo='INGENIERO INDUSTRIAL'
WHERE Id=1;

UPDATE post SET titulo='PUBLICIDAD'
WHERE Id=3;

INSERT INTO post (nomusu, fec_creacion, contenido, descripcion, titulo)
VALUES ('PEDRO', '20/05/2020','USUARIO DE PRUEBA 4', 'PRUEBA_AUX', 'PROFE ESTADO');

INSERT INTO post (nomusu, fec_creacion, contenido, descripcion, titulo)
VALUES ('PEDRO', '25/05/2020','USUARIO DE PRUEBA 4', 'PRUEBA_AUX', 'PROFE ESTADO');


DELETE FROM post WHERE nomusu='CARLOS';


INSERT INTO post (nomusu, fec_creacion, contenido, descripcion)
VALUES ('CARLOS', '25/06/2020','USUARIO DE PRUEBA 3', 'PRUEBA_AUX2', 'PUBLICIDAD');


******
PARTE 2
CREATE TABLE comentarios (
	Id SERIAL, 
	FEC_CREACION TIMESTAMP,
	CONTENIDO VARCHAR(20),
	IdPost INT,
	PRIMARY KEY (Id),
	FOREIGN KEY (IdPost) REFERENCES post(Id)
);

INSERT INTO comentarios (fec_creacion, contenido, IdPost)
VALUES ('20/05/2020 01:00:00','1 post de Pamela', '1');

INSERT INTO comentarios (fec_creacion, contenido, IdPost)
VALUES ('20/05/2020 01:00:00','2 post de Pamela', '1');

INSERT INTO comentarios (fec_creacion, contenido, IdPost)
VALUES ('20/05/2020 01:00:00','1 post de Carlos', '6');

INSERT INTO comentarios (fec_creacion, contenido, IdPost)
VALUES ('20/05/2020 01:00:00','2 post de Carlos', '6');

INSERT INTO comentarios (fec_creacion, contenido, IdPost)
VALUES ('20/05/2020 01:00:00','3 post de Carlos', '6');

INSERT INTO comentarios (fec_creacion, contenido, IdPost)
VALUES ('20/05/2020 01:00:00','4 post de Carlos', '6');



INSERT INTO post (nomusu, fec_creacion, contenido, descripcion, titulo)
VALUES ('MARGARITA', '25/06/2020','USUARIO DE PRUEBA 4', 'PRUEBA_AUX2', 'PUBLICIDAD');



INSERT INTO comentarios (fec_creacion, contenido, IdPost)
VALUES ('20/05/2020 01:00:00','1 post de Margarita', '7');

INSERT INTO comentarios (fec_creacion, contenido, IdPost)
VALUES ('20/05/2020 01:00:00','2 post de Margarita', '7');

INSERT INTO comentarios (fec_creacion, contenido, IdPost)
VALUES ('20/05/2020 01:00:00','3 post de Margarita', '7');

INSERT INTO comentarios (fec_creacion, contenido, IdPost)
VALUES ('20/05/2020 01:00:00','4 post de Margarita', '7');

INSERT INTO comentarios (fec_creacion, contenido, IdPost)
VALUES ('20/05/2020 01:00:00','5 post de Margarita', '7');




