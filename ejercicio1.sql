
CREATE DATABASE custom;
use custom;
CREATE TABLE CURSO (codigo integer PRIMARY KEY, nombre varchar(255) NOT NULL,
descripcion varchar(255), turno varchar(255));
ALTER TABLE CURSO ADD column cupo INTEGER;
insert into CURSO(codigo, nombre, descripcion, turno, cupo)
VALUES (101, "Algoritmos", "Algoritmos y Estructura de datos", "Mañana", 35);
INSERT into CURSO VALUES (102, "Matemática
Discreta","","Tarde",30);
INSERT into CURSO VALUES (3, NULL, NULL, "Tarde", 45);
INSERT into CURSO VALUES (102, "Quimica", "", "Noche", 20);
UPDATE CURSO SET cupo = 25;
DELETE FROM CURSO WHERE nombre = "Algoritmos"