------------------------------------------------------------------------------------------------------------
-- Escriba una consulta que devuelva la cantidad de profesores que dictan más de un curso en el turno Noche.
------------------------------------------------------------------------------------------------------------


-- profesores en el turno noche
SELECT PROFESOR_id
FROM CURSO
WHERE turno = "noche"

-- profesores que dictan mas de un curso en el turno noche
SELECT PROFESOR_id, COUNT(*)
FROM CURSO
WHERE turno = "noche"
GROUP BY PROFESOR_id HAVING COUNT(*)>1

-- cantidad de profesores que dictan mas de un curso
SELECT PROFESOR_id, COUNT(*)
FROM(
  SELECT PROFESOR_id, COUNT(*)
  FROM CURSO
  WHERE turno = "noche"
  GROUP BY PROFESOR_id HAVING COUNT(*)>1
)

------------------------------------------------------------------------------------------------------------
-- Escriba una consulta para obtener la información de todos los estudiantes que no realizan el curso con código 105.
------------------------------------------------------------------------------------------------------------

-- todas los legajos de estudiante menos el
-- que esta inscripto en el curso 105
SELECT ESTUDIANTE_legajo
FROM INSCRIPCION
WHERE CURSO_codigo != 105

-- datos de estudiantes
SELECT *
FROM ESTUDIANTE
WHERE legajo IN (
  SELECT ESTUDIANTE_legajo
  FROM INSCRIPCION
  WHERE CURSO_codigo != 105
);

