--Creamos la base de datos teams
CREATE SCHEMA teams;

--Usamos la base de datos
USE teams;

--Añadimos la tabla jugadores
CREATE TABLE player(idplayer INTEGER PRIMARY KEY, name VARCHAR(70) NOT NULL,surname1 VARCHAR(70) NOT NULL,surname2 VARCHAR(70),gender VARCHAR(5) NOT NULL, birthdate DATE NOT NULL, number INTEGER, team INTEGER NOT NULL);

--Añadimos la tabla equipos
CREATE TABLE team(idteam INTEGER PRIMARY KEY, name VARCHAR(70) NOT NULL,sport VARCHAR(70) NOT NULL,foundation DATE NOT NULL,city VARCHAR(70) NOT NULL);

--Añadimos la clave fornanea
ALTER TABLE player  ADD CONSTRAINT `fk_team`  FOREIGN KEY (`team`) REFERENCES `team` (`idteam`);

--Añadimos los equipos
INSERT INTO team (idteam, name, sport, foundation,city) VALUES (1,'Jaén Paraíso Interior','futsal','1987-01-01','Jaén');
INSERT INTO team (idteam, name, sport, foundation,city) VALUES (2,'Club Baloncesto Granada','basketball','1994-07-15','Granada');
INSERT INTO team (idteam, name, sport, foundation,city) VALUES (3,'Real Jaén Club de Futbol','football','1992-08-13','Jaén');
INSERT INTO team (idteam, name, sport, foundation,city) VALUES (4,'Club de Hockey Sierra Nevada','field hockey','2008-09-20','Granada');
INSERT INTO team (idteam, name, sport, foundation,city) VALUES (5,'Club Atletismo Jaén','athletics','1977-09-27','Jaén');
INSERT INTO team (idteam, name, sport, foundation,city) VALUES (6,'Jaén Rugby','rugby','2003-05-12','Jaén');
INSERT INTO team (idteam, name, sport, foundation,city) VALUES (7,'Grupo Amigos Balonmano Jaén','handball','1997-09-10','Jaén');
INSERT INTO team (idteam, name, sport, foundation,city) VALUES (8,'Club de Luchas Olimpicas Power','wrestling','1994-04-01','Torredelcampo');
INSERT INTO team (idteam, name, sport, foundation,city) VALUES (9,'Club Deportivo Hispania','football','2004-11-21','Torredelcampo');
INSERT INTO team (idteam, name, sport, foundation,city) VALUES (10,'Real Sociedad de Tenis de Granada','tennis','1917-08-20','Granada');

--Añadimos los jugadores de cada equipo

--Equipo 1
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (1, 'Aurea', 'Speedin', null, 'F', '1998-09-23', 1, 1);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (2, 'Ralph', 'Buche', null, 'M', '2004-01-29', 2, 1);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (3, 'Mayor', 'Geddis', 'Halladay', 'M', '1998-11-07', 3, 1);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (4, 'Brook', 'Jepensen', 'Willimot', 'F', '1997-03-25', 4, 1);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (5, 'Roseline', 'Curd', 'Gianotti', 'F', '2000-09-12', 5, 1);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (6, 'Marco', 'Duncan', null, 'M', '2002-03-13', 6, 1);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (7, 'Dew', 'Sperwell', null, 'M', '1999-07-25', 7, 1);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (8, 'Asa', 'Richards', 'Vanni', 'M', '1997-04-05', 8, 1);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (9, 'Eden', 'Threlkeld', null, 'F', '2001-09-25', 9, 1);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (10, 'Ellen', 'Lichtfoth', 'Matuskiewicz', 'F', '1998-09-11', 10, 1);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (11, 'Vivi', 'Gething', 'Charters', 'F', '1998-06-23', 11, 1);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (12, 'Aguistin', 'Berrycloth', 'Comizzoli', 'M', '1998-09-29', 12, 1);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (13, 'Jorry', 'Burgwyn', 'Ebrall', 'F', '2001-04-08', 13, 1);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (14, 'Wallache', 'McBlain', null, 'M', '1998-03-08', 14, 1);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (15, 'Mag', 'Docker', 'Olivier', 'F', '1998-07-10', 15, 1);
--Equipo 2
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (16, 'Marjie', 'Wendover', 'Bohea', 'F', '1992-05-04', 1, 2);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (17, 'Willi', 'Kalisz', null, 'M', '1994-08-11', 2, 2);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (18, 'Boote', 'Whitwood', 'Paskerful', 'M', '1992-09-10', 3, 2);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (19, 'Putnem', 'Etheridge', 'Mabbutt', 'M', '1987-02-13', 4, 2);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (20, 'Giana', 'Nelligan', 'Lanfear', 'F', '1989-11-11', 5, 2);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (21, 'Karol', 'McCritchie', null, 'F', '1993-10-25', 6, 2);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (22, 'Ennis', 'Cooch', 'Watman', 'M', '1988-03-21', 7, 2);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (23, 'Janaya', 'Bachshell', 'Swire', 'F', '1988-05-18', 8, 2);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (24, 'Durward', 'Vasiltsov', 'Saxon', 'M', '1997-01-11', 9, 2);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (25, 'Elroy', 'Alison', 'Lamzed', 'M', '1992-11-05', 10, 2);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (26, 'Anita', 'Deveraux', 'Cardus', 'F', '1986-10-28', 11, 2);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (27, 'Dulciana', 'Ghost', 'Faiers', 'F', '1995-11-09', 12, 2);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (28, 'Humbert', 'Witherow', 'Vinden', 'M', '1991-09-04', 13, 2);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (29, 'Carolan', 'Kirtley', 'Dutson', 'F', '1989-01-26', 14, 2);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (30, 'Danny', 'De Santos', null, 'M', '1988-05-21', 15, 2);
--Equipo 3
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (31, 'Hilton', 'Hathorn', 'St. Quintin', 'M', '1996-09-04', 1, 3);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (32, 'Biddie', 'Gooke', 'Chevins', 'F', '1986-11-07', 2, 3);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (33, 'Nil', 'Comazzo', 'Pitkins', 'M', '1990-08-06', 3, 3);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (34, 'Wallace', 'Snowball', 'Blakeman', 'M', '2001-06-16', 4, 3);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (35, 'Chaddie', 'Ferenczy', 'Chstney', 'M', '1999-04-24', 5, 3);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (36, 'Thatcher', 'Antoons', 'Spelsbury', 'M', '1991-07-29', 6, 3);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (37, 'Florette', 'Tremlett', 'Bernadot', 'F', '1988-04-22', 7, 3);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (38, 'Tani', 'Alderwick', 'Reidie', 'F', '1995-02-02', 8, 3);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (39, 'Madeleine', 'Jerzak', 'Dundin', 'F', '1986-10-20', 9, 3);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (40, 'Creight', 'Blasdale', null, 'M', '1981-12-21', 10, 3);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (41, 'Kristopher', 'Meriott', 'Corcut', 'M', '1988-02-25', 11, 3);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (42, 'Correy', 'Andrioletti', null, 'M', '1991-02-04', 12, 3);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (43, 'Arv', 'Pippard', 'Goford', 'M', '1988-08-26', 13, 3);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (44, 'Janel', 'Jellico', 'Rooson', 'F', '1989-12-29', 14, 3);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (45, 'Putnem', 'McDermott', 'Carragher', 'M', '1981-03-30', 15, 3);
--Equipo 4
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (46, 'Jamima', 'Storre', null, 'F', '2001-10-14', 1, 4);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (47, 'Pierrette', 'Arcase', 'Byrkmyr', 'F', '1992-06-27', 2, 4);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (48, 'Verene', 'Boydle', 'Haye', 'F', '2000-03-18', 3, 4);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (49, 'Salvador', 'Putnam', 'Clappison', 'M', '1994-12-06', 4, 4);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (50, 'Maura', 'Gozzett', 'Lindblom', 'F', '2001-01-31', 5, 4);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (51, 'Bord', 'Vaissiere', null, 'M', '2001-03-29', 6, 4);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (52, 'Jarrod', 'Pauwel', null, 'M', '2001-12-25', 7, 4);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (53, 'Catie', 'Lambrick', 'Shepton', 'F', '1995-10-08', 8, 4);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (54, 'Madeleine', 'Milner', 'Peat', 'F', '2000-08-23', 9, 4);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (55, 'Eryn', 'Sedgeman', null, 'F', '1996-03-26', 10, 4);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (56, 'Karlene', 'Salthouse', null, 'F', '1991-02-06', 11, 4);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (57, 'Ruby', 'Blenkiron', 'Titmus', 'M', '1994-06-18', 12, 4);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (58, 'Carlita', 'McComiskey', 'Gant', 'F', '1998-12-04', 13, 4);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (59, 'Harwilll', 'Stollwerk', 'Dabbes', 'M', '2002-08-05', 14, 4);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (60, 'Ignacius', 'Acklands', 'Preskett', 'M', '1997-03-18', 15, 4);