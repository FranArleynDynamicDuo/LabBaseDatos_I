/*
 *  Archivo: examen02hora12.sql
 *
 *  Autor: Prof. Leonid Tineo
 *
 *  Fecha: 26 de noviembre de 2014
 */

/*
    A.  Mediante una operación de SQL se quiere calcular y almacenar
        el número de estudiantes que tiene cada carrera.
*/
ALTER TABLE CARRERA ADD COLUMN
    cantest NUMERIC(4) DEFAULT 0; -- Cantidad de Estudiantes

UPDATE    CARRERA c 
SET cantest = (
        SELECT    COUNT(*)
        FROM    ESTUDIANTE e
        WHERE (
            e.idcarrera = c.idcarrera
        )
);

/*
    Para mostrar que se hizo bien la operación,
    luego de la misma ejecute la consulta:
*/
SELECT idcarrera, cantest 
FROM CARRERA;

/*  
    B.  Dar pares de códigos idcarrera y codasig
	tales que las asignatura pertenece a la carrera
	y todos los estudiantes de la carrera la han cursado
	(sin importar el estado)
*/
SELECT
    p.idcarrera, p.codasig
FROM
    PERTENECE p
WHERE
    NOT EXISTS (
        SELECT    * 
        FROM    ESTUDIANTE e
        WHERE
            e.idcarrera = p.idcarrera AND
            NOT EXISTS (
                SELECT    *
                FROM    CURSA c
                WHERE
                    c.carnet = e.carnet AND
                    c.codasig = p.codasig
            )
    )
;
    
/*
    C.  Cree una vista que, para cada profesor, año y trimestre calcule 
        la cantidad total de estudiantes que reprobaron con el profesor
		(este total no discrimina aasiganturas ni secciones, es general)
        Los atributos de la vista serían simplemente
        cédula, año, trimestre y cantidad de reprobados.
*/        
CREATE OR REPLACE VIEW REPROBADOS
AS (
    SELECT
        d.ciprof, d.anio, d.trimestre, COUNT(*) AS cantidad
    FROM
        DICTA d, CURSA c 
    WHERE
        d.codasig = c.codasig AND
        d.trimestre = c.trimestre AND
        d.anio = c.anio AND
        d.nroseccion = c.nroseccion AND
        c.estado = 'REPROBADO'
    GROUP BY
        d.ciprof, d.anio, d.trimestre
);

/*
    Para mostrar que se hizo bien la operación, 
    luego de la misma ejecute la consulta: 
*/
SELECT * FROM REPROBADOS;

/*
    D.  Haciendo uso de la vista del ejercicio anterior, liste los profesores
        que tienen el mayor número de estudiantes reprobados en cada trimestre.
        Incluya el nombre completo del profesor y los atributos de la vista,
		Use el operador IN con una consulta anidada no correlacionada.
*/
SELECT
    p.nombres, p.apellidos, r.ciprof, r.anio, r.trimestre, r.cantidad
FROM
    PROFESOR p, REPROBADOS r
WHERE
    p.ciprof = r.ciprof AND
    (r.anio, r.trimestre, r.cantidad) IN (
        SELECT anio, trimestre, MAX(cantidad)
        FROM REPROBADOS
        GROUP BY anio, trimestre
    )
;

/*
    E.  Implemente la función maxCursadas que recibe un año 
		y retorna el número máximo de asignaturas cursadas ese año 
		(sin importar el estado) de entre todos los estudiantes.
        La función no puede hacer uso de vistas ni consultas anidadas. 
*/
CREATE OR REPLACE FUNCTION maxCursadas (
    pf_anio    SECCION.anio%TYPE
) RETURNS NUMERIC AS $$
DECLARE
    cursadas CURSOR (
        pc_anio    SECCION.anio%TYPE
    ) IS (
        SELECT    COUNT(*) AS cantidad
        FROM    CURSA 
        WHERE
            anio = pc_anio
        GROUP BY
            carnet
    );
    v_max    NUMERIC    := 0;
BEGIN
    FOR v_cant IN cursadas(pf_anio) LOOP
        IF (v_cant.cantidad > v_max) THEN
            v_max := v_cant.cantidad;
        END IF;
    END LOOP;
    RETURN v_max;
END;
$$ LANGUAGE plpgsql;

/*
    Para mostrar que se hizo bien la funcion ejecute la consulta
*/
SELECT
    maxCursadas(2011),
    maxCursadas(2012)
;

/*
    F.	Implemente esta regla: 
        'Cuando un estudiante cambia de carrera,
        el número total de estudiantes debe actualizarse
        decrementando en la carrera de origen
        aumentando en la carrera destino
*/

CREATE OR REPLACE FUNCTION actualizarCantEst(
) RETURNS TRIGGER AS $actualizarCantEst$
BEGIN

    UPDATE  CARRERA
    SET     cantest = cantest-1 
    WHERE   idcarrera = OLD.idcarrera;

    UPDATE  CARRERA
    SET     cantest = cantest+1 
    WHERE   idcarrera = NEW.idcarrera;

	RETURN NEW;
END;
$actualizarCantEst$ LANGUAGE plpgsql;

CREATE TRIGGER actualizarCantEst 
AFTER UPDATE OF idcarrera ON ESTUDIANTE 
FOR EACH ROW 
WHEN (NEW.idcarrera <> OLD.idcarrera )
EXECUTE PROCEDURE actualizarCantEst();

/*
    Para probar esta regla, ejecute las instrucciones
*/   
SELECT * FROM CARRERA;
UPDATE ESTUDIANTE SET idcarrera = 0008 WHERE carnet LIKE '00%';
SELECT * FROM CARRERA;
