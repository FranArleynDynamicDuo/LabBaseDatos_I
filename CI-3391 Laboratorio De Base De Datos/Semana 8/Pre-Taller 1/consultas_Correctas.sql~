--------------------------------------------------------------------------------
------------------------ PRE TALLER 2 ------------------------------------------
--------------------------------------------------------------------------------


---------------------------- PREGUNTA 1 ----------------------------------------

-- A.Liste los nombres de los departamentos en que alguna de las materias tiene
-- un promedio de notas menor o igual a 3.5

	SELECT d.nomdpto
	FROM DEPARTAMENTO d,CURSA c,ASIGNATURA a
	WHERE ((d.iddepartamento = a.iddepartamento)
		AND (c.codasig = a.codasig))
	GROUP BY nomdpto
	HAVING (AVG(c.nota) <= 3.5);

---------------------------- PREGUNTA 2 ----------------------------------------

-- B.Liste el código, nombre y tipo de aquellas asignaturas tales que sus
-- estudiantes inscritos en el trimestre septiembre-diciembre 2014 tengan
-- índice promedio mayor a 3.5

	SELECT a.codasig,a.nomasig,a.tipo
	FROM ASIGNATURA a,ESTUDIANTE e,CURSA c
	WHERE (a.codasig = c.codasig
		AND c.carnet = e.carnet
		AND c.trimestre = 'SEPTIEMBRE'
		AND c.anio = 2014)
	GROUP BY a.codasig,a.nomasig,a.tipo
	HAVING (AVG(e.indice) > 3.5);

---------------------------- PREGUNTA 3 ----------------------------------------

-- C.Liste, por código de asignatura, el mínimo y máximo de notas obtenidas en
-- el trimestre septiembre-diciembre 2014, restringido a los estudiantes de la
-- carrera ‘Ing. Mecanica’

	SELECT c.codasig,MIN(c.nota),MAX(c.nota)
	FROM ASIGNATURA a,ESTUDIANTE e,CURSA c,CARRERA ca
	WHERE (e.idcarrera = ca.idcarrera
		AND ca.nombre = 'Ing. Mecanica'
		AND c.anio = 2014
		AND c.trimestre = 'SEPTIEMBRE'
		AND e.carnet = c.carnet)
	GROUP BY c.codasig;

---------------------------- PREGUNTA 4 ----------------------------------------

-- D.Liste los carnets, nombres y apellidos de los estudiantes con menor índice
-- de cada idcarrera

	SELECT e.carnet,e.idcarrera,e.nombres,e.apellidos,MIN(e.indice)
	FROM ESTUDIANTE e
	GROUP BY e.idcarrera,e.carnet,e.idcarrera,e.nombres,e.apellidos;

---------------------------- PREGUNTA 5 ----------------------------------------	

-- E.Liste las cedulas, nombres y apellidos de los profesores tales que todas
-- las asignaturas que dicta son de Laboratorio

	SELECT p.ciprof,p.nombres,p.apellidos
	FROM PROFESOR p, DICTA d, ASIGNATURA a
	EXCEPT(
	SELECT p.ciprof,p.nombres,p.apellidos
	FROM PROFESOR p, DICTA d, ASIGNATURA a
	WHERE (p.ciprof = d.ciprof
		AND d.codasig = a.codasig
		AND a.tipo <> 'Laboratorio'));
	
---------------------------- PREGUNTA 6 ----------------------------------------		

-- F.Liste carnet, nombres y apellidos de los estudiantes que han cursado
-- alguna vez la asignatura 'Analisis de la Pintura'

	SELECT DISTINCT e.carnet,e.nombres,e.apellidos
	FROM ESTUDIANTE e,CURSA c,ASIGNATURA a
	WHERE (e.carnet = c.carnet
		AND c.codasig = a.codasig
		AND a.nomasig = 'Analisis de la Pintura');
		
		
		
