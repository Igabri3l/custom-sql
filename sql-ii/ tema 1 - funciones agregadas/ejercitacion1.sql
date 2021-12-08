-- Escriba una consulta para saber cuántos estudiantes
-- son de la carrera Mecánica.
SELECT COUNT(ESTUDIANTE_LEGAJO)
FROM INSCRIPTION I INNER JOIN CURSO C
ON I.CURSO_codigo = C.codigo
WHERE C.nombre = 'Mecanica'

-- Escriba una consulta para saber, de la tabla PROFESOR, el
-- salario mínimo de los profesores nacidos en la década del 80.
SELECT MIN(salario)
FROM PROFESOR
WHERE fecha_nacimiento >='1980-00-00 00:00:00'
AND fecha_nacimiento <'1990-00-00 00:00:00'

-- Cantidad de pasajeros por país
SELECT idpais, COUNT(*)
FROM PASAJERO
GROUP BY idpais

-- Suma de todos los pagos realizados
SELECT SUM(monto)
FROM PAGO

-- Suma de todos los pagos que realizó un pasajero.
-- El monto debe aparecer con dos decimales
SELECT idpasajero, ROUND(SUM(monto), 2)
FROM PAGO
GROUP BY idpasajero

-- Promedio de los pagos que realizó un pasajero.
SELECT idpasajero, AVG(monto)
FROM PAGO
GROUP BY idpasajero