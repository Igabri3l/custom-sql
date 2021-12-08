-- Nombre, apellido y cursos que realiza cada estudiante
SELECT E.nombre, E.apellido, C.nombre
FROM INSCRIPCION I
INNER JOIN ESTUDIANTE E ON I.ESTUDIANTE_legajo = E.legajo
INNER JOIN CURSO C ON I.CURSO_codigo = C.codigo

-- Nombre, apellido y cursos que realiza cada estudiante, ordenados por el nombre del curso
SELECT E.nombre, E.apellido, C.nombre
FROM INSCRIPCION I
INNER JOIN ESTUDIANTE E ON I.ESTUDIANTE_legajo = E.legajo
INNER JOIN CURSO C ON I.CURSO_codigo = C.codigo
ORDER BY C.nombre

-- Nombre, apellido y cursos que dicta cada profesor
SELECT P.nombre, P.apellido, C.nombre
FROM CURSO C
INNER JOIN PROFESOR P ON C.PROFESOR_id = P.id

-- Nombre, apellido y cursos que dicta cada profesor, ordenados por el nombre del curso
SELECT P.nombre, P.apellido, C.nombre
FROM CURSO C
INNER JOIN PROFESOR P ON C.PROFESOR_id = P.id
ORDER BY C.nombre

-- Cupo disponible para cada curso (Si el cupo es de 35 estudiantes y hay 5 inscriptos, el cupo disponible será 30)
SELECT C.cupo, COUNT(I.ESTUDIANTE_legajo) CASE
WHEN C.cupo THEN C.cupo - COUNT(I.ESTUDIANTE_legajo)
END 'cupo disponible'
FROM INSCRIPTION I
INNER JOIN CURSO C ON I.CURSO_codigo = C.codigo
GROUP BY C.cupo

-- Cursos cuyo cupo disponible sea menor a 10
SELECT C.cupo, COUNT(I.ESTUDIANTE_legajo) CASE
WHEN (C.cupo - COUNT(I.ESTUDIANTE_legajo))<10 THEN C.cupo - COUNT(I.ESTUDIANTE_legajo)
ELSE 'cupo igual o mayor a 10'
END 'cupo disponible'
FROM INSCRIPTION I
INNER JOIN CURSO C ON I.CURSO_codigo = C.codigo
GROUP BY C.cupo