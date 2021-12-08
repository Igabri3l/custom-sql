CREATE DATABASE custom;
use custom;
CREATE TABLE persona (
  id integer , 
  nombre varchar(255) NOT NULL
  );

INSERT INTO persona
VALUES 
(6, "maximilano"),
(1, "ivan"),
(2, "gabriel"),
(3, "juan"),
(7, "jorge")
;

SELECT * FROM persona;
ALTER TABLE persona ADD CONSTRAINT pk_id PRIMARY KEY(id);
SELECT * FROM persona;