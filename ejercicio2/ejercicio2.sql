
CREATE DATABASE custom;
use custom;

CREATE TABLE PROFESOR (
  id integer PRIMARY KEY,
  nombre varchar(255) NOT NULL,
  apellido varchar(255), 
  salario integer,
  fecha_nacimiento DATE
);

CREATE TABLE CURSO (
  codigo integer PRIMARY KEY,
  nombre varchar(255) NOT NULL,
  descripcion varchar(255), 
  cupo integer,
  turno varchar(255),
  PROFESOR_id integer
);

ALTER TABLE CURSO
ADD CONSTRAINT FK_profesor_curso
FOREIGN KEY (PROFESOR_id) REFERENCES PROFESOR(id);

INSERT INTO PROFESOR (id, nombre, apellido, salario, fecha_nacimiento)
VALUES
(1, "Juan", "Perez", 55000, "1990-06-06"),
(2, "Maria Emilia", "Paz", 72000, "1984-07-15"),
(3, "Martin", "Correa", 63000, "1987-10-07"),
(4, "Lucia", "Dias", 45000, "1991-02-21"),
(5, "Raul", "Martinez", 85000, "1980-10-15"),
(6, "Mabel", "Rios", 83000, "1982-06-12");

INSERT INTO CURSO
VALUES 
(101, "Algoritmos", "", 20, "Mañana", 1),
(102, "Matematica Discreta", "", 20, "Tarde", 2),
(103, "Programacion Java", "", 20, "Noche", 4),
(104, "Programacion Web", "", 20, "Noche", 5),
(105, "Programacion C#", "", 20, "Noche", 6);


SELECT PROFESOR.Apellido , CURSO.Nombre, CURSO.turno
FROM PROFESOR LEFT JOIN CURSO ON PROFESOR.id = CURSO.PROFESOR_id;