
CREATE DATABASE custom;
use custom;

CREATE TABLE PROFESOR (
  id integer PRIMARY KEY,
  nombre varchar(255) NOT NULL,
  apellido varchar(255), 
  salario integer
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

insert into PROFESOR (id, nombre, apellido, salario)
VALUES
(1, "Juan", "Perez", 55000),
(2, "Maria Emilia", "Paz", 72000),
(3, "Martin", "Correa", 63000),
(4, "Lucia", "Dias", 45000),
(5, "Raul", "Martinez", 85000),
(6, "Mabel", "Rios", 83000);

insert into CURSO
VALUES 
(101, "Algoritmos", "", 20, "Mañana", 1),
(102, "Matematica Discreta", "", 20, "Tarde", 2),
(103, "Programacion Java", "", 20, "Noche", 4),
(104, "Programacion Web", "", 20, "Noche", 5),
(105, "Programacion C#", "", 20, "Noche", 6);


SELECT PROFESOR.Apellido , CURSO.Nombre, CURSO.turno
FROM PROFESOR LEFT JOIN CURSO ON PROFESOR.id = CURSO.PROFESOR_id;