--Consultas

--Equipos con ID entre 1 y 9.
SELECT * FROM equipo WHERE id_equipo<=9;

--Equipos de más del siglo pasado.
SELECT * FROM equipo WHERE fundacion<'2000-01-01';

--Los distintos deportes que hay.
SELECT DISTINCT deporte FROM equipo;

--El número de localidades distintas que hay.
SELECT COUNT(DISTINCT localidad) FROM equipo;

--Las ciudades en las que se juega al balonmano.
SELECT DISTINCT localidad FROM equipo WHERE deporte='handball';

--Las ciudades en las que se juega al balonmano o al fútbol.
SELECT DISTINCT localidad FROM equipo WHERE deporte='handball' OR deporte='football';

--Los jugadores del equipo 6.
SELECT * FROM jugador WHERE equipo=6;

--Los jugadores del equipo 7 o del 9.
SELECT * FROM jugador WHERE equipo=7 OR equipo=9;

--Todos los jugadores que son porteros (dorsal 1).
SELECT * FROM jugador WHERE dorsal=1;

--Todos los jugadores que empiezan por P.
SELECT * FROM jugador WHERE nombre LIKE 'P%';

--Jugadores con dorsal 2.
SELECT * FROM jugador WHERE dorsal=2;

--Los jugadores cuyo apellido tiene una 'K' y su dorsal es el 9.
SELECT * FROM jugador WHERE ape1 LIKE '%k%' AND number=9 ;

