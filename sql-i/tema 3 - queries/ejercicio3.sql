
SELECT nombre, apellido, fecha_nacimiento FROM PROFESOR ORDER BY
fecha_nacimiento;

SELECT * FROM PROFESOR WHERE salario >= 65000;

SELECT * FROM PROFESOR WHERE fecha_nacimiento between "1980-01-01" and
"1989-12-31";

SELECT * FROM PROFESOR LIMIT 5;

SELECT * FROM PROFESOR WHERE apellido LIKE "P%";

SELECT * FROM PROFESOR WHERE fecha_nacimiento between "1980-01-01" and
"1989-12-31" AND salario > 80000;