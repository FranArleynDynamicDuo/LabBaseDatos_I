--------------------------------------------------------------------------------
------------------------ PRE TALLER 1 ------------------------------------------
--------------------------------------------------------------------------------

-- A. Liste los nombres de los departamentos en que alguna de las materias 
-- tiene un promedio de notas menor o igual a 3.5

	SELECT nomdpto
	FROM DEPARTAMENTO
	WHERE (iddepartamento = ASIGNATURA.iddepartamento)
		AND (ASIGNATURA.codasig = CURSA.codasig)
		AND (AVG(CURSA.nota) <= 3.5);

-- B. Liste el código, nombre y tipo de aquellas asignaturas tales que sus
-- estudiantes inscritos en el trimestre septiembre-diciembre 2014 tengan
-- índice promedio mayor a 3.5

	SELECT codasig,nomasig,tipo
	FROM ASIGNATURA
	WHERE (ASIGNATURA.codasig = CURSA.codasig)
		AND (CURSA.trimestre = 'SEPTIEMBRE')
		AND (CURSA.anio = 2014)
		AND (CURSA.carnet = ESTUDIANTE.carnet)
		AND (ESTUDIANTE.indice > 3.5);

-- C. Liste, por código de asignatura, el mínimo y máximo de notas obtenidas en
-- el trimestre septiembre-diciembre 2014, restringido a los estudiantes de la 
-- carrera ‘Ing. Mecanica’

	SELECT codasig
	FROM ASIGNATURA
	WHERE (ASIGNATURA.codasig = CURSA.codasig)
		AND (CURSA.trimestre = 'SEPTIEMBRE')
		AND (CURSA.anio = 2014)
		AND (CURSA.carnet = ESTUDIANTE.carnet)
		AND (ESTUDIANTE.idcarrera = CARRERA.idcarrera)
		AND (CARRERA.nombre = 'Ing. Mecanica')
		AND ((CURSO.NOTA = MAX(CURSO.NOTA)) OR (CURSO.NOTA = MIN(CURSO.NOTA));

-- D. Liste los carnets, nombres y apellidos de los estudiantes con menor 
-- índice de cada idcarrera

	SELECT idcarrera,carnet,nombres,apellidos
	FROM ESTUDIANTE
	WHERE (indice = MIN(indice))
	GROUP BY idcarrera; -- agrupar por su carrera
		
		
-- E. Liste las cedulas, nombres y apellidos de los profesores tales que todas
-- las asignaturas que dicta son de Laboratorio

	SELECT ciprof,nombres,apellidos
	FROM PROFESOR
	WHERE (ciprof = DICTA.ciprof)
	AND (DICTA.codasig = ASIGNATURA.codasig)
	AND (ASIGNATURA.tipo = 'Laboratorio');	

-- F. Liste carnet, nombres y apellidos de los estudiantes que han cursado
-- alguna vez la asignatura 'Analisis de la Pintura'

	SELECT DISTINCT carnet,nombres,apellidos
	FROM ESTUDIANTE
	WHERE (carnet = CURSA.carnet)
	AND (CURSA.nombre = 'Analisis de la Pintura'); 
	-- Pensar en una manera mas eficiente sin el DISTINCT
	
	
	
