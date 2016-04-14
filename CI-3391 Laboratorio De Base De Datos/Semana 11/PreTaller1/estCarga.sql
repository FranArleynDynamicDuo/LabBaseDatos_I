/*
 *  Archivo: estCarga.sql
 *
 *  Contenido:
 *          Scrit de carga de la base de datos de estudiantes.
 *
 *  Creado por:
 *          Prof. Edna RUCKHAUS
 *          UNIVERSIDAD SIMÓN BOLÍVAR
 *  Fecha:  24 de Octubre de 2010
 *
 *  Modificado por:
 *          Prof. Leonid TINEO
 *          UNIVERSIDAD SIMÓN BOLÍVAR
 *  Fecha:  25 de noviembre de 2014
 */
 
/*     COMANDO PARA CAMBIAR EL FORMATO POR DEFECTO DE LA FECHA
ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD ';*/

/*
 *	Inserciones de tuplas de COORDINACION
 */

INSERT INTO COORDINACION VALUES ( '001','Coordinacion de Computacion');
INSERT INTO COORDINACION VALUES ( '002','Coordinacion de Electronica');
INSERT INTO COORDINACION VALUES ( '003','Coordinacion de Mecanica');

/*
 *	Inserciones de tuplas de DEPARTAMENTO
 */

INSERT INTO DEPARTAMENTO VALUES ( '101','Departamento de Computacion');
INSERT INTO DEPARTAMENTO VALUES ( '102','Departamento de Electronica');
INSERT INTO DEPARTAMENTO VALUES ( '103','Departamento de Mecanica');
INSERT INTO DEPARTAMENTO VALUES ( '104','Departamento de Sociales');

/*
 *     INSERCION DE CARRERAS
 */
INSERT INTO CARRERA VALUES ( 0008, 'Ing. Computacion','001');
INSERT INTO CARRERA VALUES ( 0009, 'Ing. Electronica','002');
INSERT INTO CARRERA VALUES ( 0010, 'Ing. Mecanica','003');

/*
 *	Inserciones de tuplas de ESTUDIANTE
 */

INSERT INTO ESTUDIANTE VALUES ('9711111', 'Millan', 'Gabriel', '1990-05-11', 3.75, 95, 0008, '2007-09-01');
INSERT INTO ESTUDIANTE VALUES ('9722222', 'Gomez', 'Luis', '1990-07-16', 4.01, 86, 0008, '2007-09-01');
INSERT INTO ESTUDIANTE VALUES ('9833333', 'Perez', 'Jose', '1992-08-21', 3.86, 78, 0008, '2009-09-01');
INSERT INTO ESTUDIANTE VALUES ('9944444', 'Rivas', 'Irene', '1992-10-31', 3.98, 95, 0008, '2009-09-01');
INSERT INTO ESTUDIANTE VALUES ('0055555', 'Sanchez', 'Marta', '1993-11-10', 4.12, 80, 0010, '2010-09-01');
INSERT INTO ESTUDIANTE VALUES ('0066666', 'Rojas', 'Miguel', '1993-12-01', 3.56, 75, 0008, '2010-09-01');
INSERT INTO ESTUDIANTE VALUES ('9777777', 'Millan', 'Rafael', '1990-01-05', 3.25, 78, 0009, '2007-09-01');
INSERT INTO ESTUDIANTE VALUES ('9788888', 'Salazar', 'Gustavo', '1990-02-02', 4.25, 96, 0009, '2007-09-01');
INSERT INTO ESTUDIANTE VALUES ('9899999', 'Saad', 'Gabriela', '1992-05-05', 4.36, 79, 0009, '2009-09-01');
INSERT INTO ESTUDIANTE VALUES ('9911122', 'Cortes', 'Santiago', '1992-07-01', 3.66, 85, 0009, '2009-09-01');
INSERT INTO ESTUDIANTE VALUES ('0022333', 'Sanchez', 'Andres', '1994-10-18', 3.92, 82, 0010, '2011-09-01');
INSERT INTO ESTUDIANTE VALUES ('0033444', 'Ponce', 'Camilo', '1994-12-20', 3.99, 72, 0009, '2011-09-01');
INSERT INTO ESTUDIANTE VALUES ('9712345', 'Pino', 'David', '1990-03-25', 4.00, 69, 0008, '2007-09-01');
INSERT INTO ESTUDIANTE VALUES ('9723456', 'Noriega', 'Domingo', '1990-09-14', 3.55, 99, 0008, '2007-09-01');
INSERT INTO ESTUDIANTE VALUES ('9834567', 'Garcia', 'Manuel', '1992-02-04', 3.23, 86, 0008, '2009-09-01');
INSERT INTO ESTUDIANTE VALUES ('9945678', 'Rovas', 'Ignacio', '1992-09-17', 3.89, 78, 0008, '2009-09-01');
INSERT INTO ESTUDIANTE VALUES ('0056789', 'Diaz', 'Ramon', '1994-03-22', 4.55, 69, 0008, '2011-09-01');
INSERT INTO ESTUDIANTE VALUES ('0067890', 'Vidal', 'Marina', '1994-10-25', 4.10, 80, 0010, '2011-09-01');
INSERT INTO ESTUDIANTE VALUES ('9778901', 'Peralto', 'Ricardo', '1990-11-27', 3.33, 72, 0009, '2007-09-01');
INSERT INTO ESTUDIANTE VALUES ('9789012', 'Salinas', 'Elvira', '1990-02-10', 4.44, 79, 0009, '2007-09-01');
INSERT INTO ESTUDIANTE VALUES ('9890123', 'Lopez', 'Carmen', '1992-05-01', 3.01, 78, 0009, '2009-09-01');
INSERT INTO ESTUDIANTE VALUES ('9901236', 'Alfonso', 'Irma', '1992-08-15', 4.75, 96, 0009, '2009-09-01');
INSERT INTO ESTUDIANTE VALUES ('0077889', 'Beltran', 'Alberto', '1994-09-21', 4.17, 72, 0010, '2011-09-01');
INSERT INTO ESTUDIANTE VALUES ('0088999', 'Valles', 'Enrique', '1994-11-13', 3.68, 86, 0009, '2011-09-01');

/*
 *	Inserciones de tuplas de ASIGNATURA
 */

INSERT INTO ASIGNATURA VALUES ( 'AA0001', 'Introduccion al Arte', 3, 3, '104','Teoria' );
INSERT INTO ASIGNATURA VALUES ( 'AA0002', 'Historia del Arte', 3, 3, '104','Teoria' );
INSERT INTO ASIGNATURA VALUES ( 'AA0003', 'Analisis de la Pintura', 3, 3, '104','Teoria' );
INSERT INTO ASIGNATURA VALUES ( 'AA0004', 'El Modernismo', 3, 4, '104','Teoria' );
INSERT INTO ASIGNATURA VALUES ( 'MM0001', 'Introduccion a la Computacion', 3, 5, '101','Teoria' );
INSERT INTO ASIGNATURA VALUES ( 'MM0002', 'Computacion I', 4, 6, '101','Teoria' );
INSERT INTO ASIGNATURA VALUES ( 'MM0003', 'Laboratorio de Algoritmos I', 3, 3, '101','Laboratorio' );
INSERT INTO ASIGNATURA VALUES ( 'MM0004', 'Laboratorio de Redes I', 3, 4, '102','Laboratorio' );
INSERT INTO ASIGNATURA VALUES ( 'PP0001', 'Redes II', 4, 6, '102','Teoria' );
INSERT INTO ASIGNATURA VALUES ( 'PP0002', 'Laboratorio de Termodinamica', 3, 3, '103','Laboratorio' );

/*
 *	Inserciones de tuplas de PERTENECE
 */
INSERT INTO PERTENECE VALUES ( 'AA0001', 0008, 'GENERAL');
INSERT INTO PERTENECE VALUES ( 'AA0001', 0009, 'GENERAL');
INSERT INTO PERTENECE VALUES ( 'AA0002', 0008, 'GENERAL');
INSERT INTO PERTENECE VALUES ( 'AA0002', 0009, 'GENERAL');
INSERT INTO PERTENECE VALUES ( 'AA0002', 0010, 'GENERAL');
INSERT INTO PERTENECE VALUES ( 'AA0003', 0008, 'GENERAL');
INSERT INTO PERTENECE VALUES ( 'AA0004', 0008, 'GENERAL');
INSERT INTO PERTENECE VALUES ( 'AA0004', 0009, 'GENERAL');
INSERT INTO PERTENECE VALUES ( 'MM0001', 0008, 'ELECTIVA');
INSERT INTO PERTENECE VALUES ( 'MM0001', 0009, 'OBLIGATORIA');
INSERT INTO PERTENECE VALUES ( 'MM0001', 0010, 'OBLIGATORIA');
INSERT INTO PERTENECE VALUES ( 'MM0002', 0008, 'ELECTIVA');
INSERT INTO PERTENECE VALUES ( 'MM0002', 0009, 'OBLIGATORIA');
INSERT INTO PERTENECE VALUES ( 'MM0003', 0008, 'OBLIGATORIA');
INSERT INTO PERTENECE VALUES ( 'MM0004', 0009, 'OBLIGATORIA');
INSERT INTO PERTENECE VALUES ( 'PP0001', 0009, 'OBLIGATORIA');
INSERT INTO PERTENECE VALUES ( 'PP0002', 0010, 'OBLIGATORIA');

/*
 *	Inserciones de tuplas DE SECCION
 */

INSERT INTO SECCION VALUES ('AA0001','ENERO',2011,1);
INSERT INTO SECCION VALUES ('AA0001','ENERO',2011,2);
INSERT INTO SECCION VALUES ('AA0002','ENERO',2011,1);
INSERT INTO SECCION VALUES ('AA0002','ENERO',2011,2);
INSERT INTO SECCION VALUES ('AA0003','ENERO',2011,1);
INSERT INTO SECCION VALUES ('AA0004','ENERO',2011,1);
INSERT INTO SECCION VALUES ('MM0001','ENERO',2011,1);
INSERT INTO SECCION VALUES ('MM0001','ENERO',2011,2);
INSERT INTO SECCION VALUES ('MM0002','ENERO',2011,1);
INSERT INTO SECCION VALUES ('MM0002','ENERO',2011,2);
INSERT INTO SECCION VALUES ('MM0003','ENERO',2011,1);
INSERT INTO SECCION VALUES ('MM0004','ENERO',2011,1);
INSERT INTO SECCION VALUES ('PP0001','ENERO',2011,1);
INSERT INTO SECCION VALUES ('PP0002','ENERO',2011,1);

INSERT INTO SECCION VALUES ('AA0001','ABRIL',2011,1);
INSERT INTO SECCION VALUES ('AA0001','ABRIL',2011,2);
INSERT INTO SECCION VALUES ('AA0002','ABRIL',2011,1);
INSERT INTO SECCION VALUES ('AA0002','ABRIL',2011,2);
INSERT INTO SECCION VALUES ('AA0003','ABRIL',2011,1);
INSERT INTO SECCION VALUES ('AA0004','ABRIL',2011,1);
INSERT INTO SECCION VALUES ('MM0001','ABRIL',2011,1);
INSERT INTO SECCION VALUES ('MM0001','ABRIL',2011,2);
INSERT INTO SECCION VALUES ('MM0002','ABRIL',2011,1);
INSERT INTO SECCION VALUES ('MM0002','ABRIL',2011,2);
INSERT INTO SECCION VALUES ('MM0003','ABRIL',2011,1);
INSERT INTO SECCION VALUES ('MM0004','ABRIL',2011,1);
INSERT INTO SECCION VALUES ('PP0001','ABRIL',2011,1);
INSERT INTO SECCION VALUES ('PP0002','ABRIL',2011,1);

INSERT INTO SECCION VALUES ('AA0001','SEPTIEMBRE',2011,1);
INSERT INTO SECCION VALUES ('AA0001','SEPTIEMBRE',2011,2);
INSERT INTO SECCION VALUES ('AA0002','SEPTIEMBRE',2011,1);
INSERT INTO SECCION VALUES ('AA0002','SEPTIEMBRE',2011,2);
INSERT INTO SECCION VALUES ('AA0003','SEPTIEMBRE',2011,1);
INSERT INTO SECCION VALUES ('AA0004','SEPTIEMBRE',2011,1);
INSERT INTO SECCION VALUES ('MM0001','SEPTIEMBRE',2011,1);
INSERT INTO SECCION VALUES ('MM0001','SEPTIEMBRE',2011,2);
INSERT INTO SECCION VALUES ('MM0002','SEPTIEMBRE',2011,1);
INSERT INTO SECCION VALUES ('MM0002','SEPTIEMBRE',2011,2);
INSERT INTO SECCION VALUES ('MM0003','SEPTIEMBRE',2011,1);
INSERT INTO SECCION VALUES ('MM0004','SEPTIEMBRE',2011,1);
INSERT INTO SECCION VALUES ('PP0001','SEPTIEMBRE',2011,1);
INSERT INTO SECCION VALUES ('PP0002','SEPTIEMBRE',2011,1);

INSERT INTO SECCION VALUES ('AA0001','ENERO',2012,1);
INSERT INTO SECCION VALUES ('AA0001','ENERO',2012,2);
INSERT INTO SECCION VALUES ('AA0002','ENERO',2012,1);
INSERT INTO SECCION VALUES ('AA0002','ENERO',2012,2);
INSERT INTO SECCION VALUES ('AA0003','ENERO',2012,1);
INSERT INTO SECCION VALUES ('AA0004','ENERO',2012,1);
INSERT INTO SECCION VALUES ('MM0001','ENERO',2012,1);
INSERT INTO SECCION VALUES ('MM0001','ENERO',2012,2);
INSERT INTO SECCION VALUES ('MM0002','ENERO',2012,1);
INSERT INTO SECCION VALUES ('MM0002','ENERO',2012,2);
INSERT INTO SECCION VALUES ('MM0003','ENERO',2012,1);
INSERT INTO SECCION VALUES ('MM0004','ENERO',2012,1);
INSERT INTO SECCION VALUES ('PP0001','ENERO',2012,1);
INSERT INTO SECCION VALUES ('PP0002','ENERO',2012,1);

/*
 *	Inserciones de tuplas DE CURSA
 */

INSERT INTO CURSA VALUES ('9944444','AA0001','ENERO',2011,1,'REPROBADO',NULL,2);
INSERT INTO CURSA VALUES ('0055555','AA0001','ENERO',2011,1,'APROBADO',NULL,5);
INSERT INTO CURSA VALUES ('0066666','AA0001','ENERO',2011,1,'REPROBADO',NULL,2);
INSERT INTO CURSA VALUES ('9945678','AA0001','ENERO',2011,2,'REPROBADO',NULL,1);
INSERT INTO CURSA VALUES ('0056789','AA0001','ENERO',2011,2,'REPROBADO',NULL,1);
INSERT INTO CURSA VALUES ('0067890','AA0001','ENERO',2011,2,'REPROBADO',NULL,2);
INSERT INTO CURSA VALUES ('9711111','AA0002','ENERO',2011,1,'REPROBADO',NULL,2);
INSERT INTO CURSA VALUES ('9722222','AA0002','ENERO',2011,1,'REPROBADO',NULL,2);
INSERT INTO CURSA VALUES ('9833333','AA0002','ENERO',2011,1,'APROBADO',NULL,5);
INSERT INTO CURSA VALUES ('9712345','AA0002','ENERO',2011,2,'REPROBADO',NULL,2);
INSERT INTO CURSA VALUES ('9723456','AA0002','ENERO',2011,2,'REPROBADO',NULL,2);
INSERT INTO CURSA VALUES ('9834567','AA0002','ENERO',2011,2,'REPROBADO',NULL,1);
INSERT INTO CURSA VALUES ('9711111','AA0003','ENERO',2011,1,'REPROBADO',NULL,1);
INSERT INTO CURSA VALUES ('9722222','AA0003','ENERO',2011,1,'APROBADO',NULL,5);
INSERT INTO CURSA VALUES ('9833333','AA0003','ENERO',2011,1,'APROBADO',NULL,5);
INSERT INTO CURSA VALUES ('9712345','AA0003','ENERO',2011,1,'REPROBADO',NULL,2);
INSERT INTO CURSA VALUES ('9723456','AA0003','ENERO',2011,1,'REPROBADO',NULL,2);
INSERT INTO CURSA VALUES ('9834567','AA0003','ENERO',2011,1,'REPROBADO',NULL,1);
INSERT INTO CURSA VALUES ('9711111','AA0004','ENERO',2011,1,'REPROBADO',NULL,2);
INSERT INTO CURSA VALUES ('9722222','AA0004','ENERO',2011,1,'REPROBADO',NULL,1);
INSERT INTO CURSA VALUES ('9833333','AA0004','ENERO',2011,1,'REPROBADO',NULL,1);
INSERT INTO CURSA VALUES ('9712345','AA0004','ENERO',2011,1,'REPROBADO',NULL,1);
INSERT INTO CURSA VALUES ('9723456','AA0004','ENERO',2011,1,'REPROBADO',NULL,2);
INSERT INTO CURSA VALUES ('9834567','AA0004','ENERO',2011,1,'REPROBADO',NULL,1);
INSERT INTO CURSA VALUES ('9911122','MM0001','ENERO',2011,1,'REPROBADO',NULL,1);
INSERT INTO CURSA VALUES ('0022333','MM0001','ENERO',2011,1,'REPROBADO',NULL,2);
INSERT INTO CURSA VALUES ('0033444','MM0001','ENERO',2011,1,'APROBADO',NULL,5);
INSERT INTO CURSA VALUES ('9901236','MM0001','ENERO',2011,2,'REPROBADO',NULL,1);
INSERT INTO CURSA VALUES ('0077889','MM0001','ENERO',2011,2,'REPROBADO',NULL,2);
INSERT INTO CURSA VALUES ('0088999','MM0001','ENERO',2011,2,'REPROBADO',NULL,2);
INSERT INTO CURSA VALUES ('9777777','MM0001','ENERO',2011,1,'REPROBADO',NULL,1);
INSERT INTO CURSA VALUES ('9777777','MM0002','ENERO',2011,1,'REPROBADO',NULL,1);
INSERT INTO CURSA VALUES ('9788888','MM0002','ENERO',2011,1,'REPROBADO',NULL,2);
INSERT INTO CURSA VALUES ('9899999','MM0002','ENERO',2011,1,'REPROBADO',NULL,2);
INSERT INTO CURSA VALUES ('9778901','MM0002','ENERO',2011,2,'REPROBADO',NULL,1);
INSERT INTO CURSA VALUES ('9789012','MM0002','ENERO',2011,2,'REPROBADO',NULL,2);
INSERT INTO CURSA VALUES ('9890123','MM0002','ENERO',2011,2,'REPROBADO',NULL,1);
INSERT INTO CURSA VALUES ('9777777','MM0003','ENERO',2011,1,'REPROBADO',NULL,2);
INSERT INTO CURSA VALUES ('9788888','MM0003','ENERO',2011,1,'REPROBADO',NULL,1);
INSERT INTO CURSA VALUES ('9899999','MM0003','ENERO',2011,1,'APROBADO',NULL,5);
INSERT INTO CURSA VALUES ('9778901','MM0003','ENERO',2011,1,'APROBADO',NULL,5);
INSERT INTO CURSA VALUES ('9789012','MM0003','ENERO',2011,1,'APROBADO',NULL,5);
INSERT INTO CURSA VALUES ('9890123','MM0003','ENERO',2011,1,'REPROBADO',NULL,1);
INSERT INTO CURSA VALUES ('9777777','MM0004','ENERO',2011,1,'APROBADO',NULL,5);
INSERT INTO CURSA VALUES ('9788888','MM0004','ENERO',2011,1,'REPROBADO',NULL,2);
INSERT INTO CURSA VALUES ('9899999','MM0004','ENERO',2011,1,'APROBADO',NULL,5);
INSERT INTO CURSA VALUES ('9778901','MM0004','ENERO',2011,1,'REPROBADO',NULL,2);
INSERT INTO CURSA VALUES ('9789012','MM0004','ENERO',2011,1,'REPROBADO',NULL,2);
INSERT INTO CURSA VALUES ('9890123','MM0004','ENERO',2011,1,'REPROBADO',NULL,1);

INSERT INTO CURSA VALUES ('9944444','AA0001','ABRIL',2011,1,'APROBADO',NULL,4);
-- INSERT INTO CURSA VALUES ('0055555','AA0001','ABRIL',2011,1,'APROBADO',NULL,5);
INSERT INTO CURSA VALUES ('0066666','AA0001','ABRIL',2011,1,'RETIRADO',NULL,NULL);
INSERT INTO CURSA VALUES ('9945678','AA0001','ABRIL',2011,2,'REPROBADO',NULL,1);
INSERT INTO CURSA VALUES ('0056789','AA0001','ABRIL',2011,2,'APROBADO',NULL,4);
INSERT INTO CURSA VALUES ('0067890','AA0001','ABRIL',2011,2,'RETIRADO',NULL,NULL);
INSERT INTO CURSA VALUES ('9711111','AA0002','ABRIL',2011,1,'REPROBADO',NULL,2);
INSERT INTO CURSA VALUES ('9722222','AA0002','ABRIL',2011,1,'APROBADO',NULL,4);
-- INSERT INTO CURSA VALUES ('9833333','AA0002','ABRIL',2011,1,'APROBADO',NULL,5);
INSERT INTO CURSA VALUES ('9712345','AA0002','ABRIL',2011,2,'RETIRADO',NULL,NULL);
INSERT INTO CURSA VALUES ('9723456','AA0002','ABRIL',2011,2,'REPROBADO',NULL,2);
INSERT INTO CURSA VALUES ('9834567','AA0002','ABRIL',2011,2,'APROBADO',NULL,4);
INSERT INTO CURSA VALUES ('9711111','AA0003','ABRIL',2011,1,'RETIRADO',NULL,NULL);
-- INSERT INTO CURSA VALUES ('9722222','AA0003','ABRIL',2011,1,'APROBADO',NULL,5);
-- INSERT INTO CURSA VALUES ('9833333','AA0003','ABRIL',2011,1,'APROBADO',NULL,5);
INSERT INTO CURSA VALUES ('9712345','AA0003','ABRIL',2011,1,'REPROBADO',NULL,2);
INSERT INTO CURSA VALUES ('9723456','AA0003','ABRIL',2011,1,'APROBADO',NULL,4);
INSERT INTO CURSA VALUES ('9834567','AA0003','ABRIL',2011,1,'RETIRADO',NULL,NULL);
INSERT INTO CURSA VALUES ('9711111','AA0004','ABRIL',2011,1,'REPROBADO',NULL,2);
INSERT INTO CURSA VALUES ('9722222','AA0004','ABRIL',2011,1,'APROBADO',NULL,4);
INSERT INTO CURSA VALUES ('9833333','AA0004','ABRIL',2011,1,'RETIRADO',NULL,NULL);
INSERT INTO CURSA VALUES ('9712345','AA0004','ABRIL',2011,1,'REPROBADO',NULL,1);
INSERT INTO CURSA VALUES ('9723456','AA0004','ABRIL',2011,1,'APROBADO',NULL,4);
INSERT INTO CURSA VALUES ('9834567','AA0004','ABRIL',2011,1,'RETIRADO',NULL,NULL);
INSERT INTO CURSA VALUES ('9911122','MM0001','ABRIL',2011,1,'REPROBADO',NULL,1);
INSERT INTO CURSA VALUES ('0022333','MM0001','ABRIL',2011,1,'APROBADO',NULL,4);
-- INSERT INTO CURSA VALUES ('0033444','MM0001','ABRIL',2011,1,'APROBADO',NULL,5);
INSERT INTO CURSA VALUES ('9901236','MM0001','ABRIL',2011,2,'RETIRADO',NULL,NULL);
INSERT INTO CURSA VALUES ('0077889','MM0001','ABRIL',2011,2,'REPROBADO',NULL,2);
INSERT INTO CURSA VALUES ('0088999','MM0001','ABRIL',2011,2,'APROBADO',NULL,4);
INSERT INTO CURSA VALUES ('9777777','MM0001','ABRIL',2011,1,'RETIRADO',NULL,NULL);
INSERT INTO CURSA VALUES ('9777777','MM0002','ABRIL',2011,1,'REPROBADO',NULL,1);
INSERT INTO CURSA VALUES ('9788888','MM0002','ABRIL',2011,1,'APROBADO',NULL,4);
INSERT INTO CURSA VALUES ('9899999','MM0002','ABRIL',2011,1,'RETIRADO',NULL,NULL);
INSERT INTO CURSA VALUES ('9778901','MM0002','ABRIL',2011,2,'REPROBADO',NULL,1);
INSERT INTO CURSA VALUES ('9789012','MM0002','ABRIL',2011,2,'APROBADO',NULL,4);
INSERT INTO CURSA VALUES ('9890123','MM0002','ABRIL',2011,2,'RETIRADO',NULL,NULL);
INSERT INTO CURSA VALUES ('9777777','MM0003','ABRIL',2011,1,'REPROBADO',NULL,2);
INSERT INTO CURSA VALUES ('9788888','MM0003','ABRIL',2011,1,'APROBADO',NULL,4);
-- INSERT INTO CURSA VALUES ('9899999','MM0003','ABRIL',2011,1,'APROBADO',NULL,5);
-- INSERT INTO CURSA VALUES ('9778901','MM0003','ABRIL',2011,1,'APROBADO',NULL,5);
-- INSERT INTO CURSA VALUES ('9789012','MM0003','ABRIL',2011,1,'APROBADO',NULL,5);
INSERT INTO CURSA VALUES ('9890123','MM0003','ABRIL',2011,1,'RETIRADO',NULL,NULL);
-- INSERT INTO CURSA VALUES ('9777777','MM0004','ABRIL',2011,1,'APROBADO',NULL,5);
INSERT INTO CURSA VALUES ('9788888','MM0004','ABRIL',2011,1,'REPROBADO',NULL,2);
-- INSERT INTO CURSA VALUES ('9899999','MM0004','ABRIL',2011,1,'APROBADO',NULL,5);
INSERT INTO CURSA VALUES ('9778901','MM0004','ABRIL',2011,1,'APROBADO',NULL,4);
INSERT INTO CURSA VALUES ('9789012','MM0004','ABRIL',2011,1,'RETIRADO',NULL,NULL);
INSERT INTO CURSA VALUES ('9890123','MM0004','ABRIL',2011,1,'REPROBADO',NULL,1);

-- INSERT INTO CURSA VALUES ('9944444','AA0001','SEPTIEMBRE',2011,1,'APROBADO',NULL,4);
-- INSERT INTO CURSA VALUES ('0055555','AA0001','SEPTIEMBRE',2011,1,'APROBADO',NULL,5);
INSERT INTO CURSA VALUES ('0066666','AA0001','SEPTIEMBRE',2011,1,'RETIRADO',NULL,NULL);
INSERT INTO CURSA VALUES ('9945678','AA0001','SEPTIEMBRE',2011,2,'REPROBADO',NULL,1);
-- INSERT INTO CURSA VALUES ('0056789','AA0001','SEPTIEMBRE',2011,2,'APROBADO',NULL,4);
INSERT INTO CURSA VALUES ('0067890','AA0001','SEPTIEMBRE',2011,2,'APROBADO',NULL,5);
INSERT INTO CURSA VALUES ('9711111','AA0002','SEPTIEMBRE',2011,1,'RETIRADO',NULL,NULL);
-- INSERT INTO CURSA VALUES ('9722222','AA0002','SEPTIEMBRE',2011,1,'APROBADO',NULL,4);
-- INSERT INTO CURSA VALUES ('9833333','AA0002','SEPTIEMBRE',2011,1,'APROBADO',NULL,5);
INSERT INTO CURSA VALUES ('9712345','AA0002','SEPTIEMBRE',2011,2,'REPROBADO',NULL,2);
INSERT INTO CURSA VALUES ('9723456','AA0002','SEPTIEMBRE',2011,2,'APROBADO',NULL,4);
-- INSERT INTO CURSA VALUES ('9834567','AA0002','SEPTIEMBRE',2011,2,'APROBADO',NULL,4);
INSERT INTO CURSA VALUES ('9711111','AA0003','SEPTIEMBRE',2011,1,'RETIRADO',NULL,NULL);
-- INSERT INTO CURSA VALUES ('9722222','AA0003','SEPTIEMBRE',2011,1,'APROBADO',NULL,5);
-- INSERT INTO CURSA VALUES ('9833333','AA0003','SEPTIEMBRE',2011,1,'APROBADO',NULL,5);
INSERT INTO CURSA VALUES ('9712345','AA0003','SEPTIEMBRE',2011,1,'REPROBADO',NULL,2);
-- INSERT INTO CURSA VALUES ('9723456','AA0003','SEPTIEMBRE',2011,1,'APROBADO',NULL,4);
INSERT INTO CURSA VALUES ('9834567','AA0003','SEPTIEMBRE',2011,1,'APROBADO',NULL,3);
INSERT INTO CURSA VALUES ('9711111','AA0004','SEPTIEMBRE',2011,1,'RETIRADO',NULL,NULL);
-- INSERT INTO CURSA VALUES ('9722222','AA0004','SEPTIEMBRE',2011,1,'APROBADO',NULL,4);
INSERT INTO CURSA VALUES ('9833333','AA0004','SEPTIEMBRE',2011,1,'REPROBADO',NULL,2);
INSERT INTO CURSA VALUES ('9712345','AA0004','SEPTIEMBRE',2011,1,'APROBADO',NULL,5);
-- INSERT INTO CURSA VALUES ('9723456','AA0004','SEPTIEMBRE',2011,1,'APROBADO',NULL,4);
INSERT INTO CURSA VALUES ('9834567','AA0004','SEPTIEMBRE',2011,1,'RETIRADO',NULL,NULL);
INSERT INTO CURSA VALUES ('9911122','MM0001','SEPTIEMBRE',2011,1,'REPROBADO',NULL,1);
-- INSERT INTO CURSA VALUES ('0022333','MM0001','SEPTIEMBRE',2011,1,'APROBADO',NULL,4);
-- INSERT INTO CURSA VALUES ('0033444','MM0001','SEPTIEMBRE',2011,1,'APROBADO',NULL,5);
INSERT INTO CURSA VALUES ('9901236','MM0001','SEPTIEMBRE',2011,2,'APROBADO',NULL,4);
INSERT INTO CURSA VALUES ('0077889','MM0001','SEPTIEMBRE',2011,2,'RETIRADO',NULL,NULL);
-- INSERT INTO CURSA VALUES ('0088999','MM0001','SEPTIEMBRE',2011,2,'APROBADO',NULL,4);
INSERT INTO CURSA VALUES ('9777777','MM0001','SEPTIEMBRE',2011,1,'REPROBADO',NULL,1);
INSERT INTO CURSA VALUES ('9777777','MM0002','SEPTIEMBRE',2011,1,'APROBADO',NULL,3);
-- INSERT INTO CURSA VALUES ('9788888','MM0002','SEPTIEMBRE',2011,1,'APROBADO',NULL,4);
INSERT INTO CURSA VALUES ('9899999','MM0002','SEPTIEMBRE',2011,1,'RETIRADO',NULL,NULL);
INSERT INTO CURSA VALUES ('9778901','MM0002','SEPTIEMBRE',2011,2,'REPROBADO',NULL,1);
-- INSERT INTO CURSA VALUES ('9789012','MM0002','SEPTIEMBRE',2011,2,'APROBADO',NULL,4);
INSERT INTO CURSA VALUES ('9890123','MM0002','SEPTIEMBRE',2011,2,'APROBADO',NULL,5);
INSERT INTO CURSA VALUES ('9777777','MM0003','SEPTIEMBRE',2011,1,'RETIRADO',NULL,NULL);
-- INSERT INTO CURSA VALUES ('9788888','MM0003','SEPTIEMBRE',2011,1,'APROBADO',NULL,4);
-- INSERT INTO CURSA VALUES ('9899999','MM0003','SEPTIEMBRE',2011,1,'APROBADO',NULL,5);
-- INSERT INTO CURSA VALUES ('9778901','MM0003','SEPTIEMBRE',2011,1,'APROBADO',NULL,5);
-- INSERT INTO CURSA VALUES ('9789012','MM0003','SEPTIEMBRE',2011,1,'APROBADO',NULL,5);
INSERT INTO CURSA VALUES ('9890123','MM0003','SEPTIEMBRE',2011,1,'REPROBADO',NULL,2);
-- INSERT INTO CURSA VALUES ('9777777','MM0004','SEPTIEMBRE',2011,1,'APROBADO',NULL,5);
INSERT INTO CURSA VALUES ('9788888','MM0004','SEPTIEMBRE',2011,1,'APROBADO',NULL,5);
-- INSERT INTO CURSA VALUES ('9899999','MM0004','SEPTIEMBRE',2011,1,'APROBADO',NULL,5);
-- INSERT INTO CURSA VALUES ('9778901','MM0004','SEPTIEMBRE',2011,1,'APROBADO',NULL,4);
INSERT INTO CURSA VALUES ('9789012','MM0004','SEPTIEMBRE',2011,1,'RETIRADO',NULL,NULL);
INSERT INTO CURSA VALUES ('9890123','MM0004','SEPTIEMBRE',2011,1,'REPROBADO',NULL,1);

-- INSERT INTO CURSA VALUES ('9944444','AA0001','ENERO',2012,1,'APROBADO',NULL,4);
-- INSERT INTO CURSA VALUES ('0055555','AA0001','ENERO',2012,1,'APROBADO',NULL,5);
INSERT INTO CURSA VALUES ('0066666','AA0001','ENERO',2012,1,'INSCRITO',NULL,5);
INSERT INTO CURSA VALUES ('9945678','AA0001','ENERO',2012,2,'INSCRITO',NULL,4);
-- INSERT INTO CURSA VALUES ('0056789','AA0001','ENERO',2012,2,'APROBADO',NULL,4);
-- INSERT INTO CURSA VALUES ('0067890','AA0001','ENERO',2012,2,'APROBADO',NULL,5);
INSERT INTO CURSA VALUES ('9711111','AA0002','ENERO',2012,1,'INSCRITO',NULL,3);
-- INSERT INTO CURSA VALUES ('9722222','AA0002','ENERO',2012,1,'APROBADO',NULL,4);
-- INSERT INTO CURSA VALUES ('9833333','AA0002','ENERO',2012,1,'APROBADO',NULL,5);
INSERT INTO CURSA VALUES ('9712345','AA0002','ENERO',2012,2,'INSCRITO',NULL,2);
-- INSERT INTO CURSA VALUES ('9723456','AA0002','ENERO',2012,2,'APROBADO',NULL,4);
-- INSERT INTO CURSA VALUES ('9834567','AA0002','ENERO',2012,2,'APROBADO',NULL,4);
INSERT INTO CURSA VALUES ('9711111','AA0003','ENERO',2012,1,'INSCRITO',NULL,1);
-- INSERT INTO CURSA VALUES ('9722222','AA0003','ENERO',2012,1,'APROBADO',NULL,5);
-- INSERT INTO CURSA VALUES ('9833333','AA0003','ENERO',2012,1,'APROBADO',NULL,5);
INSERT INTO CURSA VALUES ('9712345','AA0003','ENERO',2012,1,'INSCRITO',NULL,5);
-- INSERT INTO CURSA VALUES ('9723456','AA0003','ENERO',2012,1,'APROBADO',NULL,4);
-- INSERT INTO CURSA VALUES ('9834567','AA0003','ENERO',2012,1,'APROBADO',NULL,3);
INSERT INTO CURSA VALUES ('9711111','AA0004','ENERO',2012,1,'INSCRITO',NULL,4);
-- INSERT INTO CURSA VALUES ('9722222','AA0004','ENERO',2012,1,'APROBADO',NULL,4);
INSERT INTO CURSA VALUES ('9833333','AA0004','ENERO',2012,1,'INSCRITO',NULL,3);
-- INSERT INTO CURSA VALUES ('9712345','AA0004','ENERO',2012,1,'APROBADO',NULL,5);
-- INSERT INTO CURSA VALUES ('9723456','AA0004','ENERO',2012,1,'APROBADO',NULL,4);
INSERT INTO CURSA VALUES ('9834567','AA0004','ENERO',2012,1,'INSCRITO',NULL,2);
INSERT INTO CURSA VALUES ('9911122','MM0001','ENERO',2012,1,'INSCRITO',NULL,1);
-- INSERT INTO CURSA VALUES ('0022333','MM0001','ENERO',2012,1,'APROBADO',NULL,4);
-- INSERT INTO CURSA VALUES ('0033444','MM0001','ENERO',2012,1,'APROBADO',NULL,5);
-- INSERT INTO CURSA VALUES ('9901236','MM0001','ENERO',2012,2,'APROBADO',NULL,4);
INSERT INTO CURSA VALUES ('0077889','MM0001','ENERO',2012,2,'INSCRITO',NULL,5);
-- INSERT INTO CURSA VALUES ('0088999','MM0001','ENERO',2012,2,'APROBADO',NULL,4);
INSERT INTO CURSA VALUES ('9777777','MM0001','ENERO',2012,1,'INSCRITO',NULL,4);
-- INSERT INTO CURSA VALUES ('9777777','MM0002','ENERO',2012,1,'APROBADO',NULL,3);
-- INSERT INTO CURSA VALUES ('9788888','MM0002','ENERO',2012,1,'APROBADO',NULL,4);
INSERT INTO CURSA VALUES ('9899999','MM0002','ENERO',2012,1,'INSCRITO',NULL,3);
INSERT INTO CURSA VALUES ('9778901','MM0002','ENERO',2012,2,'INSCRITO',NULL,2);
-- INSERT INTO CURSA VALUES ('9789012','MM0002','ENERO',2012,2,'APROBADO',NULL,4);
-- INSERT INTO CURSA VALUES ('9890123','MM0002','ENERO',2012,2,'APROBADO',NULL,5);
INSERT INTO CURSA VALUES ('9777777','MM0003','ENERO',2012,1,'INSCRITO',NULL,1);
-- INSERT INTO CURSA VALUES ('9788888','MM0003','ENERO',2012,1,'APROBADO',NULL,4);
-- INSERT INTO CURSA VALUES ('9899999','MM0003','ENERO',2012,1,'APROBADO',NULL,5);
-- INSERT INTO CURSA VALUES ('9778901','MM0003','ENERO',2012,1,'APROBADO',NULL,5);
-- INSERT INTO CURSA VALUES ('9789012','MM0003','ENERO',2012,1,'APROBADO',NULL,5);
INSERT INTO CURSA VALUES ('9890123','MM0003','ENERO',2012,1,'INSCRITO',NULL,5);
-- INSERT INTO CURSA VALUES ('9777777','MM0004','ENERO',2012,1,'APROBADO',NULL,5);
-- INSERT INTO CURSA VALUES ('9788888','MM0004','ENERO',2012,1,'APROBADO',NULL,5);
-- INSERT INTO CURSA VALUES ('9899999','MM0004','ENERO',2012,1,'APROBADO',NULL,5);
-- INSERT INTO CURSA VALUES ('9778901','MM0004','ENERO',2012,1,'APROBADO',NULL,4);
INSERT INTO CURSA VALUES ('9789012','MM0004','ENERO',2012,1,'INSCRITO',NULL,4);
INSERT INTO CURSA VALUES ('9890123','MM0004','ENERO',2012,1,'INSCRITO',NULL,3);
-- NUEVAS TUPLAS PARA EL EXAMEN DEL 27/11/2014
INSERT INTO CURSA VALUES ('0055555','AA0002','ENERO',2012,2,'INSCRITO',NULL,2);
INSERT INTO CURSA VALUES ('0022333','AA0002','ENERO',2012,2,'INSCRITO',NULL,2);
INSERT INTO CURSA VALUES ('0067890','AA0002','ENERO',2012,2,'INSCRITO',NULL,2);
INSERT INTO CURSA VALUES ('0077889','AA0002','ENERO',2012,2,'INSCRITO',NULL,2);

/*
 *	Inserciones de tuplas DE PROFESOR
 */

INSERT INTO PROFESOR VALUES ('12345678','Perez','Pedro','1982-06-20','ASISTENTE','2007-09-15','101');
INSERT INTO PROFESOR VALUES ('11223344','Gomez','Maria','1976-08-04','AGREGADO','2003-09-15','104');
INSERT INTO PROFESOR VALUES ('11122333','Torres','Marco','1972-09-27','ASOCIADO','1999-09-15','102');
INSERT INTO PROFESOR VALUES ('87654321','Suarez','Pablo','1968-07-06','TITULAR','1991-09-15','103');

/*
 *	Inserciones de tuplas de DICTA
 */

INSERT INTO DICTA VALUES ('11223344','AA0001','ENERO',2011,1,30,2);
INSERT INTO DICTA VALUES ('11223344','AA0002','ENERO',2011,1,20,0);
INSERT INTO DICTA VALUES ('11223344','AA0002','ENERO',2011,2,10,3);
INSERT INTO DICTA VALUES ('11223344','AA0003','ENERO',2011,1,5,0);
INSERT INTO DICTA VALUES ('11223344','AA0004','ENERO',2011,1,6,0);
INSERT INTO DICTA VALUES ('12345678','MM0001','ENERO',2011,1,20,2);
INSERT INTO DICTA VALUES ('12345678','MM0001','ENERO',2011,2,22,4);
INSERT INTO DICTA VALUES ('12345678','MM0002','ENERO',2011,1,15,0);
INSERT INTO DICTA VALUES ('12345678','MM0002','ENERO',2011,2,15,1);
INSERT INTO DICTA VALUES ('12345678','MM0003','ENERO',2011,1,12,0);
INSERT INTO DICTA VALUES ('11122333','MM0004','ENERO',2011,1,20,2);
INSERT INTO DICTA VALUES ('11122333','PP0001','ENERO',2011,1,10,0);
INSERT INTO DICTA VALUES ('87654321','PP0002','ENERO',2011,1,30,0);

INSERT INTO DICTA VALUES ('11223344','AA0001','ABRIL',2011,1,30,2);
INSERT INTO DICTA VALUES ('11223344','AA0002','ABRIL',2011,1,20,0);
INSERT INTO DICTA VALUES ('11223344','AA0002','ABRIL',2011,2,10,3);
INSERT INTO DICTA VALUES ('11223344','AA0003','ABRIL',2011,1,5,0);
INSERT INTO DICTA VALUES ('11223344','AA0004','ABRIL',2011,1,6,0);
INSERT INTO DICTA VALUES ('12345678','MM0001','ABRIL',2011,1,20,2);
INSERT INTO DICTA VALUES ('12345678','MM0001','ABRIL',2011,2,22,4);
INSERT INTO DICTA VALUES ('12345678','MM0002','ABRIL',2011,1,15,0);
INSERT INTO DICTA VALUES ('12345678','MM0002','ABRIL',2011,2,15,1);
INSERT INTO DICTA VALUES ('12345678','MM0003','ABRIL',2011,1,12,0);
INSERT INTO DICTA VALUES ('11122333','MM0004','ABRIL',2011,1,20,2);
INSERT INTO DICTA VALUES ('11122333','PP0001','ABRIL',2011,1,10,0);
INSERT INTO DICTA VALUES ('87654321','PP0002','ABRIL',2011,1,30,0);

INSERT INTO DICTA VALUES ('11223344','AA0001','SEPTIEMBRE',2011,1,30,2);
INSERT INTO DICTA VALUES ('11223344','AA0002','SEPTIEMBRE',2011,1,20,0);
INSERT INTO DICTA VALUES ('11223344','AA0002','SEPTIEMBRE',2011,2,10,3);
INSERT INTO DICTA VALUES ('11223344','AA0003','SEPTIEMBRE',2011,1,5,0);
INSERT INTO DICTA VALUES ('11223344','AA0004','SEPTIEMBRE',2011,1,6,0);
INSERT INTO DICTA VALUES ('12345678','MM0001','SEPTIEMBRE',2011,1,20,2);
INSERT INTO DICTA VALUES ('12345678','MM0001','SEPTIEMBRE',2011,2,22,4);
INSERT INTO DICTA VALUES ('12345678','MM0002','SEPTIEMBRE',2011,1,15,0);
INSERT INTO DICTA VALUES ('12345678','MM0002','SEPTIEMBRE',2011,2,15,1);
INSERT INTO DICTA VALUES ('12345678','MM0003','SEPTIEMBRE',2011,1,12,0);
INSERT INTO DICTA VALUES ('11122333','MM0004','SEPTIEMBRE',2011,1,20,2);
INSERT INTO DICTA VALUES ('11122333','PP0001','SEPTIEMBRE',2011,1,10,0);
INSERT INTO DICTA VALUES ('87654321','PP0002','SEPTIEMBRE',2011,1,30,0);

INSERT INTO DICTA VALUES ('11223344','AA0001','ENERO',2012,1,30,2);
INSERT INTO DICTA VALUES ('11223344','AA0002','ENERO',2012,1,20,0);
INSERT INTO DICTA VALUES ('11223344','AA0002','ENERO',2012,2,10,3);
INSERT INTO DICTA VALUES ('11223344','AA0003','ENERO',2012,1,5,0);
INSERT INTO DICTA VALUES ('11223344','AA0004','ENERO',2012,1,6,0);
INSERT INTO DICTA VALUES ('12345678','MM0001','ENERO',2012,1,20,2);
INSERT INTO DICTA VALUES ('12345678','MM0001','ENERO',2012,2,22,4);
INSERT INTO DICTA VALUES ('12345678','MM0002','ENERO',2012,1,15,0);
INSERT INTO DICTA VALUES ('12345678','MM0002','ENERO',2012,2,15,1);
INSERT INTO DICTA VALUES ('12345678','MM0003','ENERO',2012,1,12,0);
INSERT INTO DICTA VALUES ('11122333','MM0004','ENERO',2012,1,20,2);
INSERT INTO DICTA VALUES ('11122333','PP0001','ENERO',2012,1,10,0);
INSERT INTO DICTA VALUES ('87654321','PP0002','ENERO',2012,1,30,0);
