INSERT INTO CLUB VALUES('REAL MADRID','MADRID',1902,'ESPAÑA','CARLOS ANCELOTI',2012,2015);
INSERT INTO CLUB VALUES('F.C. BARCELONA','BARCELONA',1899,'ESPAÑA','LUIS ENRIQUE MARTINEZ',2014,2020);
INSERT INTO CLUB VALUES('BAYERN MUNCHEN','MUNICH',1900,'ALEMANIA','JOSEP GUARDIOLA I SALA',2013,2018);
INSERT INTO CLUB VALUES('JUVENTUS F.C','TURIN',1897,'ITALIA','MASSIMILIANO ALLEGRI',2014,2019);
INSERT INTO CLUB VALUES('SPORT LISBOA E BENFICA','LISBOA',1904,'PORTUGAL','JORGE JESUS',2009,2015);
INSERT INTO CLUB VALUES('CHELSEA','LONDRES',1905,'INGLATERRA','JOSE MOURINHO',2013,2018);
INSERT INTO CLUB VALUES('BOCA JUNIORS','BUENOS AIRES',1905,'ARGENTNA','RODOLFO ARRUABARRENA',2014,2020);
INSERT INTO CLUB VALUES('CARACAS FUTBOL CLUB','CARACAS',1967,'VENEZUELA','EDUARDO SARAGO',2014,2019);
INSERT INTO CLUB VALUES('MANCHESTER UNITED','MANCHESTER',1878,'INGLATERRA','LOUIS VAN GAAL',2014,2020);
INSERT INTO CLUB VALUES('MILAN F.C','MILAN',1899,'ATALIA','FILIPPO INZAGHI','2014','2020');
INSERT INTO ESTADIO VALUES('SANTIAGO BERNABEU','REAL MADRID',81044);
INSERT INTO ESTADIO VALUES('CAMP NOU','F.C. BARCELONA',99354);
INSERT INTO ESTADIO VALUES('ALLIANZ ARENA','BAYERN MUNCHEN',71137);
INSERT INTO ESTADIO VALUES('JUVENTUS STADIUM','JUVENTUS F.C',41000);
INSERT INTO ESTADIO VALUES('ESTADIO DA LUZ','SPORT LISBOA E BENFICA',70000);
INSERT INTO ESTADIO VALUES('STAMFORD BRIDGE','CHELSEA',41837);
INSERT INTO ESTADIO VALUES('ESTADIO ALBERTO J. ARMANDO','BOCA JUNIORS',49000);
INSERT INTO ESTADIO VALUES('OLIMPICO DE LA UCV','CARACAS FUTBOL CLUB',24900);
INSERT INTO ESTADIO VALUES('OLD TRAFFORD','MANCHESTER UNITED',75765);
INSERT INTO ESTADIO VALUES('ESTADIO GIUSEPPE MEAZZA MILAN','MILAN F.C',80018);
INSERT INTO JUGADOR VALUES('IKER CASILLAS','REAL MADRID',1,85,'DIESTRO','ESPAÑOLA',84,1999,2020,2025,100000);
INSERT INTO JUGADOR VALUES('CRISTIAN RONALDO','REAL MADRID',1,85,'ZURDO','PORTUGUESA',80,2002,2025,2030,500000);
INSERT INTO JUGADOR VALUES('LIONEL MESSI','F.C. BARCELONA',1,69,'AMBIDIESTRO','ARGENTINO',67,2004,2020,2021,900000);
INSERT INTO JUGADOR VALUES('GERARD PIQUE','F.C. BARCELONA',1,92,'AMBIDIESTRO','ESPAÑOLA',85,2004,2020,2021,700000);
INSERT INTO JUGADOR VALUES('XABI ALONSO','BAYERN MUNCHEN',1,83,'DIESTRO','ESPAÑOLA',77,2005,2015,2017,600500);
INSERT INTO JUGADOR VALUES('DIDIER DROGBA','CHELSEA',1,88,'ZURDO','MARFILEÑ0',80,1998,2016,2020,700500);
INSERT INTO JUGADOR VALUES('ANGEL DI MARIA','MANCHESTER UNITED',1,80,'DIESTRO','ARGENTINO',70,2000,2016,2020,700500);
INSERT INTO JUGADOR VALUES('ROBIN VAN PERSIE','MANCHESTER UNITED',1,83,'ZURDO','HOLANDES',71,1998,2015,2021,100500);
INSERT INTO JUGADOR VALUES('REECE JAMES','MANCHESTER UNITED',1,80,'DIESTRO','ARGENTINO',70,2000,2016,2020,700500);


INSERT INTO COPA VALUES ('CAMPEONATO DEL REY',2014,'LA COPA DEL REY','RFEF','REAL MADRID','FINAL');
INSERT INTO COPA VALUES ('CAMPEONATO UEFA EUROPA ',2014,'UEFA EUROPA LEAGUE COPA','UEFA','F.C. BARCELONA','SEMIFINAL');


INSERT INTO PARTIDO VALUES (01,'UEFA EUROPA LEAGUE COPA',2014,'REAL MADRID','MANCHESTER UNITED','MANCHESTER UNITED',MARCADOR,
							TO_TIMESTAMP('20-SEP-2014'),40000,'HELLMUT KRUG');
INSERT INTO ARBITRO VALUES ('HELLMUT KRUG','ALEMANIA',01,'UEFA EUROPA LEAGUE COPA',2014);
INSERT INTO MODERADO VALUES ('HELLMUT KRUG',01,'UEFA EUROPA LEAGUE COPA',2014);

INSERT INTO ANOTA_GOL VALUES ('CRISTIAN RONALDO',01,'UEFA EUROPA LEAGUE COPA',2014,TO_TIMESTAMP('20-SEP-2014 30.00.00 min'),
							  'DE PENALTI',NULL);
INSERT INTO ANOTA_GOL VALUES ('ANGEL DI MARIA',01,'UEFA EUROPA LEAGUE COPA',2014,TO_TIMESTAMP('20-SEP-2014 40.00.00 min'),
							  'DE PENALTI','ROBIN VAN PERSIE');
INSERT INTO ANOTA_GOL VALUES ('REECE JAMES',01,'UEFA EUROPA LEAGUE COPA',2014,TO_TIMESTAMP('20-SEP-2014 40.00.00 min'),
							  'DE CABEZA','ROBIN VAN PERSIE');
INSERT INTO AMONESTA VALUES ('HELLMUT KRUG','CRISTIAN RONALDO','ROJA');
INSERT INTO AMONESTA VALUES ('HELLMUT KRUG','IKER CASILLAS','AMARILLA');
INSERT INTO AMONESTA VALUES ('HELLMUT KRUG','REECE JAMES','AMARILLA');


INSERT INTO PARTIDO VALUES (02,'UEFA EUROPA LEAGUE COPA',2014,'F.C. BARCELONA','BAYERN MUNCHEN','F.C. BARCELONA',MARCADOR,
							TO_TIMESTAMP('21-SEP-2014'),50000,'PIER LUIGGI COLLINA');
INSERT INTO ARBITRO VALUES ('PIER LUIGGI COLLINA','ITALIANO',02,'UEFA EUROPA LEAGUE COPA',2014);
INSERT INTO MODERADO VALUES ('PIER LUIGGI COLLINA',02,'UEFA EUROPA LEAGUE COPA',2014);

INSERT INTO ANOTA_GOL VALUES ('LIONEL MESSI',02,'UEFA EUROPA LEAGUE COPA',2014,TO_TIMESTAMP('21-SEP-2014 45.00.00 min'),
							  'DE PENALTI','GERARD PIQUE');
							  

INSERT INTO PARTIDO VALUES (02,'LA COPA DEL REY',2014,'REAL MADRID','F.C. BARCELONA','REAL MADRID',MARCADOR,
							TO_TIMESTAMP('22-OCT-2014'),1000000,'MARKUS MERK');
INSERT INTO ARBITRO VALUES ('MARKUS MERK','ALEMAN',03,'LA COPA DEL REY',2014);
INSERT INTO MODERADO VALUES ('MARKUS MERK',03,'LA COPA DEL REY',2014);