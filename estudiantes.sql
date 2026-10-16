--- eliminar tabla ---
DROP TABLE estudiantes;
--- crear tabla y llave primaria---
CREATE TABLE estudiantes(
    id_estudiante INT PRIMARY KEY,
    nombres VARCHAR(50),
    apellidos VARCHAR(50),
    edad INT,
    curso VARCHAR(50),
    fecha_registro VARCHAR(10)
);
-- insert datos --

INSERT INTO estudiantes VALUES (1,'Luis','Carrillo',31,'Base de Datos','2026-01-10', 'luis@gmail.com'); 
INSERT INTO estudiantes VALUES (2,'Gustavo','Carrillo',32,'Programacion','2026-01-15', 'gustavo@gmail.com' );
INSERT INTO estudiantes VALUES (3,'Kathy','Lopez',24,'Redes','2026-02-10', 'kathy@gmail.com'); 
INSERT INTO estudiantes VALUES (4,'Andres','Ullauri',31,'Programacion','2026-02-15', 'andres@gmail.com'); 
INSERT INTO estudiantes VALUES (5,'Erick','Zapata',23,'Base de Datos','2026-03-01', 'erick@gmail.com');
INSERT INTO estudiantes VALUES (6,'Lizbeth','Quinllin',22,'Inteligencia Artificial','2026-03-10');
INSERT INTO estudiantes VALUES (7,'Marcos','Alcivar',32,'Seguridad Informatica','2026-03-15');
INSERT INTO estudiantes VALUES (8,'Jhon','Bassantes',31,'Redes','2026-04-01'); 
INSERT INTO estudiantes VALUES (9,'Luis','Carrillo',31,'Programacion','2026-04-10'); 
INSERT INTO estudiantes VALUES (10,'Kathy','Lopez',24,'Base de Datos','2026-04-15'); 
INSERT INTO estudiantes VALUES (11,'Carlos','Perez',20,'Programacion','2026-05-01');
INSERT INTO estudiantes VALUES (12,'Maria','Gomez',19,'Redes','2026-05-05');
INSERT INTO estudiantes VALUES (13,'Daniel','Torres',26,'Base de Datos','2026-05-12');
INSERT INTO estudiantes VALUES (14,'Andrea','Vera',21,'Inteligencia Artificial','2026-05-20');
INSERT INTO estudiantes VALUES (15,'Kevin','Mora',18,'Programacion','2026-06-01');

-- consultas SELECT--

SELECT * FROM estudiantes;

SELECT nombres, curso FROM estudiantes;

SELECT * FROM estudiantes WHERE edad > 18;

SELECT * FROM estudiantes WHERE edad BETWEEN 18 AND 25;

SELECT * FROM estudiantes WHERE fecha_registro > '2026-03-01';

SELECT * FROM estudiantes WHERE fecha_registro BETWEEN '2026-01-01' AND '2026-04-30';

SELECT nombres, apellidos, correo FROM estudiantes;

SELECT * FROM estudiantes WHERE correo IS NOT NULL;

SELECT nombres, apellidos, curso, correo FROM estudiantes WHERE curso = 'Base de Datos';

SELECT nombres, correo, fecha_registro FROM estudiantes WHERE fecha_registro > '2026-03-01';

-- UPDATE --

UPDATE estudiantes SET curso = 'Inteligencia Artificial' WHERE id_estudiante = 1;

UPDATE estudiantes SET edad = 25 WHERE id_estudiante = 3;

UPDATE estudiantes SET fecha_registro = '2026-06-15' WHERE id_estudiante = 5;

UPDATE estudiantes SET edad = 33, curso ='Seguridad Informatica' WHERE id_estudiante = 7;

UPDATE estudiantes SET curso = 'Desarrollo web' WHERE curso = 'Programacion';

-- DELETE --

DELETE FROM estudiantes WHERE id_estudiante = 15;

DELETE FROM estudiantes WHERE edad = 18;

DELETE FROM estudiantes WHERE curso = 'Redes';

DELETE FROM estudiantes WHERE nombres = 'Carlos';

DELETE FROM estudiantes WHERE fecha_registro = '2026-01-15';

-- MODIFICACION DE LA TABLA --

ALTER TABLE estudiantes ADD COLUMN correo VARCHAR(100);

-- ACTUALIZACION DE SCRIPTS --

UPDATE estudiantes SET correo = 'luiscarrillo@hotmail.com' WHERE id_estudiante = 1; 

UPDATE estudiantes SET correo = 'andres.ullauri@gmail.com' WHERE id_estudiante = 4;

UPDATE estudiantes SET correo = 'erick.zapata@gmail.com' WHERE id_estudiante = 5;

-- CONSULTA DE FECHAS--

SELECT * FROM estudiantes WHERE fecha_registro > '2026-02-01';

SELECT * FROM estudiantes WHERE fecha_registro < '2026-05-01';

SELECT * FROM estudiantes WHERE fecha_registro BETWEEN '2026-02-01' AND '2026-04-30';

SELECT * FROM estudiantes WHERE fecha_registro = '2026-03-15';