DROP TABLE AMONESTA;
DROP TABLE ANOTA_GOL;	(LISTO)
DROP TABLE ARBITRO;		(LISTO)
DROP TABLE COPA;		(LISTO)
DROP TABLE COPA_PAISES;
DROP TABLE COPA_ETAPA;
DROP TABLE CLUB;		(LISTO)
DROP TABLE ESTADIO;		(LISTO)
DROP TABLE JUEGA;
DROP TABLE JUGADOR;     (LISTO)
DROP TABLE LIGA;        
DROP TABLE MODERADO;	(LISTO)
DROP TABLE PARTIDO;		(LISTO)


% NOTA LE FALTA EL ID (PENDIENTE DE ARREGLAR)
CREATE TABLE AMONESTA(

AMONESTA_NOMBRE_ARBITRO VARCHAR(14),
AMONESTA_NOMBRE_JUGADOR VARCHAR(14),
AMONESTA_AMARILLA/ROJA VARCHAR(14) CONSTRAINT DOM_AMONESTA_TARGETA CHECK 
										(AMONESTA_AMARILLA/ROJA IN ('AMARILLA','ROJA')),
AMONESTA_MINUTO TIMESTAMP,			

CONSTRAINT FK_AMONESTA_ARBITRO FOREIGN KEY 
			(AMONESTA_NOMBRE_ARBITRO)
			REFERENCES ARBITRO,

CONSTRAINT FK_AMONESTA_JUGADOR FOREIGN KEY 
			(AMONESTA_NOMBRE_JUGADOR)
			REFERENCES JUGADOR
);

CREATE TABLE ANOTA_GOL(
	
AG_NOMBRE_JUGADOR 			VARCHAR(20),
AG_ID_PARTIDO				INT(3),
AG_N_TROFEO					VARCHAR(14),
AG_TEMPORADA				VARCHAR(9),
AG_MINUTO					TIMESTAMP,
AG_TIPO						VARCHAR(20) CONSTRAINT DOM_AG_TIPO CHECK 
											(AG_TIPO IN ('PIERNA DERECHA','PIERNA IZQUIERDA','DE CABEZA',
														 'DE PENALTI','DE TIRO LIBRE','EN PROPIA PUERTA')),
AG_ASISTENTE				VARCHAR(20),

CONSTRAINT FK_ANOTA_GOL_JUGADOR FOREIGN KEY 
			(AG_NOMBRE_JUGADOR),
			REFERENCES JUGADOR,
CONSTRAINT FK_ANOTA_GOL_PARTIDO FOREIGN KEY 
			(AG_ID_PARTIDO,AG_NOMBRE_COPA,AG_TEMPORADA)
			REFERENCES PARTIDO,		

CHECK(AG_NOMBRE_JUGADOR <> AG_ASISTENTE)

);

CREATE TABLE ARBITRO(

AR_NOMBRE					VARCHAR(20) CONSTRAINT PK_ARBITRO PRIMARY KEY,
AR_NACIONALIDAD				VARCHAR(20),
AR_ID						INT(3),
AR_NOMBREC					VARCHAR(20),
AR_TEMPORADA				VARCHAR(9)

);

CREATE TABLE COPA(

CO_NOMBRE					VARCHAR(14) CONSTRAINT PK_COPA PRIMARY KEY,
CO_TEMPORADA				VARCHAR(9) CONSTRAINT PK_COPA PRIMARY KEY,
CO_N_TROFEO					VARCHAR(14),
CO_ORGANIZACION				VARCHAR(14),
CO_CAMPEON					VARCHAR(14),
CO_ETAPA					VARCHAR(14) CONSTRAINT DOM_CO_ETAPA CHECK 
											(CO_ETAPA IN ('FASE PREVIA','PRIMERA FASE','OCTAVOS DE FINAL',
														 'CUARTOS DE FINAL','SEMIFINAL','FINAL')),
);

CREATE TABLE COPA_PAISES(

COPA_PAISES					VARCHAR(40) 
);

CREATE TABLE COPA_ETAPA( 
);

CREATE TABLE CLUB(
CL_NOMBRE_C					VARCHAR(40) CONSTRAINT PK_CLUB PRIMARY KEY,
CL_CIUDAD					VARCHAR(12),
CL_AÑO_F					NUMERIC(4),
CL_PAIS						VARCHAR(12),
CL_NOMBRE_ENT 				VARCHAR(40),
CL_F_INICIO_ENT 			TIMESTAMP,
CL_F_FINAL_ENT				TIMESTAMP,

CHECK (CL_F_INICIO_ENT <= CL_F_FINAL_ENT)
);

CREATE TABLE ESTADIO(

ES_NOMBRE 					VARCHAR(20) CONSTRAINT PK_ESTADIO PRIMARY KEY,
ES_NOMBRE_CLUB 				VARCHAR(20) CONSTRAINT FK_ESTADIO_CLUB REFERENCES CLUB,
ES_CAPACIDAD INT(6),

CHECK(ES_CAPACIDAD > 0)
);

CREATE TABLE JUEGA(


JA_NOMBRE					VARCHAR(20),
JA_ID						INT(3),
JA_N_TROFEO					VARCHAR(20),
JA_TEMPORADA				VARCHAR(9),
JA_JORNADA_P				VARCHAR(20),
JA_ETAPA_P					INT(3) CONSTRAINT DOM_JA_ETAPA_P CHECK 
											(JA_ETAPA_P IN ('FASE PREVIA','PRIMERA FASE','OCTAVOS DE FINAL',
														 'DCUARTOS DE FINAL','SEMIFINAL','FINAL')),,
JA_I_MINUTO					TIMESTAMP,
JA_F_MINUTO					TIMESTAMP,
JA_POSICION					VARCHAR(20),

CONSTRAINT FK_JUEGA_JUGADOR FOREIGN KEY 
			(JA_NOMBRE)
			REFERENCES JUGADOR,

CONSTRAINT FK_JUEGA_PARTIDO FOREIGN KEY 
			(JA_ID,JA_NOMBRE_COPA,JA_TEMPORADA)
			REFERENCES PARTIDO,
			
CHECK(JA_I_MINUTO < JA_F_MINUTO)	

);

CREATE TABLE JUGADOR(

JR_NOMBRE					VARCHAR(20) CONSTRAINT PK_JUGADOR 
							PRIMARY KEY,
JR_NOMBRE_CLUB 				VARCHAR(20) CONSTRAINT FK_JUGADOR_CLUB
							REFERENCES CLUB,
JR_ESTATURA					INT(2),
JR_DIE_ZUR					VARCHAR(10) CONSTRAINT DOM_JR_DIE_ZUR CHECK 
											(JR_DIE_ZUR IN ('DIESTRO','ZURDO','AMBIDIESTRO')),
JR_NACIONALIDAD				VARCHAR(20),
JR_PESO						INT(3),
JR_F_INICIO					TIMESTAMP,
JR_F_FINAL					TIMESTAMP,
JR_RECISION					INT(10),
JR_SALARIO					INT(10),

CHECK(JR_PESO > 0),
CHECK(JR_ESTATURA > 0),
CHECK(JR_F_INICIO < JR_F_FINAL)
 
);

CREATE TABLE LIGA(
LG_NOMBRE					VARCHAR(14),
LG_TEMPORADA				VARCHAR(9),
LG_N_TROFEO					VARCHAR(14),
LG_ORGANIZACION				VARCHAR(14),
LG_CAMPEON					VARCHAR(14),
LG_NUMERO_ETAPA				INT(2),
LG_PAIS						VARCHAR(14),

CONSTRAINT PK_LIGA PRIMARY KEY(LG_NOMBRE, LG_TEMPORADA)

);

CREATE TABLE MODERADO(

MD_NOMBRE_ARBITRO			VARCHAR(20),
MD_ID						INT(3),
MD_N_TROFEO					VARCHAR(14),
MD_TEMPORADA				VARCHAR(9)

);

CREATE TABLE PARTIDO(

PD_ID						INT(3),
PD_N_TROFEO					VARCHAR(14),
PD_TEMPORADA				INT(4),
PD_NOMBRE_LOCAL				VARCHAR(20) CONSTRAINT FK_PARTIDO_CLUB
										REFERENCES CLUB,
PD_NOMBRE_VISITANTE			VARCHAR(20) CONSTRAINT FK_PARTIDO_CLUB
										REFERENCES CLUB,
PD_GANADOR					VARCHAR(20),
PD_MARCADOR					VARCHAR(4),
PD_FECHA					TIMESTAMP,
PD_ASISTENCIA				INT(6),
PD_NOMBRE_ARBITRO			VARCHAR(20) CONSTRAINT FK_PARTIDO_ARBITRO
										REFERENCES ARBITRO,

CONSTRAINT PK_PARTIDO PRIMARY KEY(PD_ID),
CONSTRAINT FK_PARTIDO_COMPETENCIA FOREIGN KEY 
				(PD_N_TROFEO,PD_TEMPORADA)
					REFERENCES COMPETENCIA,

CHECK(PD_NOMBRE_LOCAL <> PD_NOMBRE_VISITANTE),
CHECK(PD_GANADOR = PD_NOMBRE_LOCAL or PD_GANADOR = PD_NOMBRE_VISITANTE)
 
);