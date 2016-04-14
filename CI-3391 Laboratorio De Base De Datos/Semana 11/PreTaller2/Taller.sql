-- A. Se quiere calcular y almacenar el número de estudiantes que tiene cada 
-- carrera. Para ello agregue un nuevo atributo al esquema, mediante la
-- instrucción: ALTER TABLE CARRERA ADD COLUMN cantest NUMERIC(4) DEFAULT 0;
-- luego realice una operación en SQL que calcule y almacene el valor de este 
-- atributo. Finalmente, para mostrar que hizo bien la operación, ejecute la 
-- consulta SELECT idcarrera, cantest FROM CARRERA;

	ALTER TABLE CARRERA ADD COLUMN cantest NUMERIC(4) DEFAULT 0;
	UPDATE    CARRERA c
	SET cantest = (
		SELECT    COUNT(e.carnet)
		FROM    ESTUDIANTE e
		WHERE e.idcarrera = c.idcarrera);	
	

-- B. Dar pares de códigos idcarrera y codasig tales que la asignatura 
-- pertenece a la carrera y todos los estudiantes de la carrera la han
-- cursado (sin importar el estado).

	SELECT p.idcarrera,p.codasig
	FROM PERTENECE p
	WHERE NOT EXISTS(
		SELECT *
		FROM ESTUDIANTE e
		WHERE  e.idcarrera = p.idcarrera
			AND NOT EXISTS (
				SELECT *
				FROM CURSA c
				WHERE c.carnet = e.carnet
					AND c.codasig = p.codasig));


-- C. Cree una vista que, para cada profesor, año y trimestre, calcule la 
-- cantidad total de estudiantes que reprobaron con el profesor (este total
-- no discrimina asignaturas ni secciones, es general). Los atributos de la
-- vista serían simplemente cédula, año, trimestre y cantidad de
-- reprobados. Para mostrar que definió bien la vista, ejecute la consulta: 
-- SELECT * FROM REPROBADOS;

	CREATE OR REPLACE VIEW REPROBADOS
	AS (
	    SELECT p.ciprof,c.trimestre,c.anio,COUNT(c.carnet) AS Raspados
	    FROM    CURSA c,PROFESOR p,DICTA d
	    WHERE(c.estado = 'REPROBADO'
		AND d.anio = c.anio
		AND d.trimestre = c.trimestre
		AND d.ciprof = p.ciprof
		AND d.codasig = c.codasig)
	    GROUP BY p.ciprof,c.trimestre,c.anio);

-- D. Haciendo uso de la vista del ejercicio anterior, liste los profesores que
-- tienen el mayor número de estudiantes reprobados en cada trimestre. Incluya
-- el nombre completo del profesor y los atributos de la vista. Use el operador
-- IN con una consulta anidada no correlacionada.

	SELECT
	    p.nombres,p.apellidos,p.ciprof,r.Raspados,r.trimestre,r.anio
	FROM
	    REPROBADOS r, PROFESOR p
	WHERE((r.Raspados >= ALL (SELECT r.Raspados FROM REPROBADOS r))
		AND p.ciprof IN (SELECT r.ciprof FROM REPROBADOS))
	;	

-- E. Implemente la función maxCursadas que recibe un año y retorna el número 
-- máximo de asignaturas cursadas ese año (sin importar el estado) de entre
-- todos los estudiantes. La función no puede hacer uso de vistas ni consultas
-- anidadas. Para mostrar que se hizo bien la función ejecute la consulta
-- SELECT maxCursadas(2011), maxCursadas(2012);

	CREATE OR REPLACE FUNCTION maxCursadas(
		pf_anio		CURSA.anio%TYPE
		)
	RETURNS NUMERIC AS $$
	
	DECLARE
	
    inscritas CURSOR (
        pc_anio		  CURSA.anio%TYPE
    ) IS (
        SELECT    COUNT(*) AS cantidad
        FROM    CURSA
        WHERE
			anio = pc_anio
        GROUP BY
            carnet
    );	
		v_max NUMERIC := 0;
	
	BEGIN
		
    FOR v_cant IN inscritas(pf_anio) LOOP
        IF (v_cant.cantidad > v_max) THEN
            v_max := v_cant.cantidad;
        END IF;
    END LOOP;
    RETURN v_max;
	END;
	$$ LANGUAGE plpgsql;

-- F. Implemente esta regla: 'Cuando un estudiante cambia de carrera, el número
-- total de estudiantes debe actualizarse decrementando en la carrera de origen
-- aumentando en la carrera destino. Para probar esta regla, ejecute las
-- instrucciones SELECT * FROM CARRERA; UPDATE ESTUDIANTE SET idcarrera = 0008
-- WHERE carnet LIKE '00%'; SELECT * FROM CARRERA;

	

