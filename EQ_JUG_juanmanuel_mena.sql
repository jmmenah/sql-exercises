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

insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (1, 'Jean', 'Carsberg', 'Furmenger', 'M', '1998-12-12', 1, 1);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (2, 'Antone', 'Guidetti', 'Burner', 'M', '1997-06-26', 1, 2);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (3, 'Elene', 'Pinwell', 'Wegner', 'F', '2002-11-28', 1, 3);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (4, 'Angelita', 'Thyer', 'Dodge', 'F', '1996-05-11', 1, 4);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (5, 'Aube', 'Schindler', 'Littleproud', 'M', '1998-11-27', 1, 5);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (6, 'Quintin', 'Drewson', 'Dalgleish', 'M', '2003-06-14', 1, 6);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (7, 'Dulsea', 'Myner', null, 'F', '2003-04-20', 1, 7);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (8, 'Nicki', 'Duiguid', 'Ferrillio', 'F', '2000-06-04', 1, 8);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (9, 'Hussein', 'Gullifant', 'Bodesson', 'M', '2001-08-27', 1, 9);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (10, 'Nollie', 'Pregel', 'Strathearn', 'F', '1991-08-04', 1, 10);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (11, 'Mildrid', 'Burborough', null, 'F', '2002-05-12', 2, 1);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (12, 'Kingston', 'Tuohy', 'Reinbech', 'M', '1993-06-08', 2, 2);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (13, 'Bron', 'Liger', null, 'M', '1998-10-25', 2, 3);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (14, 'Harman', 'Lebreton', 'Cobleigh', 'M', '1990-02-15', 2, 4);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (15, 'Arie', 'Grimbaldeston', null, 'M', '1997-05-07', 2, 5);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (16, 'Tara', 'Regis', 'Streader', 'F', '1999-08-20', 2, 6);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (17, 'Leroi', 'Borleace', null, 'M', '1995-09-08', 2, 7);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (18, 'Sharl', 'Catmull', 'Gehring', 'F', '1993-04-05', 2, 8);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (19, 'Mellisent', 'Bonifacio', null, 'F', '2003-08-28', 2, 9);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (20, 'Dory', 'Rowsell', 'Prendeville', 'F', '1995-04-21', 2, 10);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (21, 'Briana', 'Guisby', 'Strange', 'F', '1999-01-03', 3, 1);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (22, 'Malorie', 'Unwins', 'Gerald', 'F', '1991-06-14', 3, 2);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (23, 'Zuzana', 'Pieroni', null, 'F', '1990-07-23', 3, 3);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (24, 'See', 'Crummie', 'Braunds', 'M', '1991-11-16', 3, 4);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (25, 'Brose', 'Mundow', 'Roote', 'M', '1995-12-09', 3, 5);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (26, 'Neron', 'Stonhewer', null, 'M', '2001-07-04', 3, 6);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (27, 'Meta', 'Heilds', 'Thurlby', 'F', '2002-03-03', 3, 7);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (28, 'Jennifer', 'Hedan', 'Byfford', 'F', '1991-08-26', 3, 8);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (29, 'Willette', 'Milborn', 'Crocetti', 'F', '2000-08-20', 3, 9);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (30, 'Elias', 'Cankett', null, 'M', '1992-04-26', 3, 10);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (31, 'Nadine', 'Larmett', null, 'F', '1996-11-11', 4, 1);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (32, 'Rockey', 'McKeney', null, 'M', '1989-06-07', 4, 2);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (33, 'Guillemette', 'Claricoats', 'Patrono', 'F', '2002-03-29', 4, 3);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (34, 'Brien', 'Matteuzzi', 'Patsall', 'M', '2002-04-06', 4, 4);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (35, 'Haven', 'Vagg', 'Lugsdin', 'M', '1999-12-12', 4, 5);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (36, 'Shaw', 'Stebbings', 'Gatteridge', 'M', '2001-06-22', 4, 6);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (37, 'Fredericka', 'Hazeley', 'Govan', 'F', '1992-04-05', 4, 7);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (38, 'Ailene', 'Edmead', null, 'F', '1997-09-05', 4, 8);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (39, 'Rosa', 'Mackelworth', null, 'F', '1989-10-06', 4, 9);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (40, 'Thornton', 'Deveral', 'Stitle', 'M', '2003-09-28', 4, 10);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (41, 'Loy', 'Sennett', 'Hurll', 'M', '1991-01-26', 5, 1);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (42, 'Darwin', 'Wigglesworth', null, 'M', '1996-05-11', 5, 2);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (43, 'Julie', 'Cranson', null, 'F', '1996-12-15', 5, 3);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (44, 'Ellen', 'Quixley', null, 'F', '2000-12-26', 5, 4);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (45, 'Ring', 'Mushet', 'Musprat', 'M', '2002-09-21', 5, 5);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (46, 'Manny', 'Springall', 'Thynne', 'M', '1990-11-10', 5, 6);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (47, 'Fair', 'Kennon', 'McCarle', 'M', '1998-01-20', 5, 7);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (48, 'Odilia', 'Norquay', 'Partridge', 'F', '1994-03-02', 5, 8);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (49, 'Orland', 'McGrudder', 'Mac Giany', 'M', '1999-11-01', 5, 9);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (50, 'Caril', 'Scud', 'Yosevitz', 'F', '1992-08-31', 5, 10);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (51, 'Ettore', 'Gaudon', null, 'M', '1994-06-22', 6, 1);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (52, 'Jehanna', 'Veljes', null, 'F', '1996-02-24', 6, 2);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (53, 'Stevie', 'Climar', null, 'M', '2002-08-01', 6, 3);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (54, 'Bert', 'Marple', null, 'F', '1997-07-23', 6, 4);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (55, 'Ignatius', 'Yesipov', 'Samwyse', 'M', '2000-10-28', 6, 5);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (56, 'Selby', 'McInally', 'Poynzer', 'M', '1996-08-13', 6, 6);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (57, 'Riobard', 'Greenshiels', null, 'M', '1995-03-07', 6, 7);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (58, 'Aura', 'Macvey', 'Alibone', 'F', '1992-03-09', 6, 8);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (59, 'Welch', 'July', 'Filoniere', 'M', '1998-11-11', 6, 9);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (60, 'Noel', 'Barczewski', 'Borrie', 'M', '1998-05-15', 6, 10);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (61, 'Larisa', 'Chattelaine', 'Naton', 'F', '1997-09-18', 7, 1);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (62, 'Franni', 'Lalley', 'Culp', 'F', '1991-11-10', 7, 2);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (63, 'Waylon', 'Grishanin', null, 'M', '2000-07-15', 7, 3);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (64, 'Loella', 'Mocher', 'Hinckes', 'F', '1994-09-16', 7, 4);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (65, 'Carroll', 'Lesley', null, 'M', '1994-01-11', 7, 5);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (66, 'Amby', 'Mathelon', 'Manion', 'M', '1994-03-01', 7, 6);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (67, 'Krysta', 'Molyneaux', 'Regler', 'F', '1993-08-12', 7, 7);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (68, 'Isidro', 'Bugge', 'Derry', 'M', '1999-03-23', 7, 8);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (69, 'Eveline', 'Pringer', 'Berrey', 'F', '1997-05-30', 7, 9);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (70, 'Demetria', 'Ryam', 'Applegarth', 'F', '1999-10-26', 7, 10);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (71, 'Alexandro', 'Minghetti', null, 'M', '2003-02-19', 8, 1);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (72, 'Eda', 'Wilson', null, 'F', '1996-07-16', 8, 2);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (73, 'Joby', 'McKenna', 'Placide', 'F', '1999-11-05', 8, 3);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (74, 'Aubrie', 'Hucquart', 'Tungate', 'F', '2000-10-20', 8, 4);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (75, 'Alena', 'Polding', null, 'F', '1997-04-01', 8, 5);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (76, 'Broddie', 'Redparth', 'Kullmann', 'M', '2002-07-29', 8, 6);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (77, 'Tamiko', 'Lefridge', 'Sumner', 'F', '1991-12-09', 8, 7);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (78, 'Georgine', 'Reitenbach', null, 'F', '1994-03-10', 8, 8);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (79, 'Nicolea', 'Havvock', null, 'F', '1990-07-12', 8, 9);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (80, 'Shurlock', 'O''Halloran', 'Gaskill', 'M', '2000-01-30', 8, 10);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (81, 'Ursulina', 'Bonaire', 'Dhennin', 'F', '1994-01-19', 9, 1);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (82, 'Abrahan', 'McGuirk', 'Bessett', 'M', '1992-06-15', 9, 2);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (83, 'Yorker', 'Rudloff', 'Morcomb', 'M', '1999-09-07', 9, 3);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (84, 'Tab', 'Tansley', null, 'M', '1994-10-28', 9, 4);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (85, 'Marrilee', 'Bessant', null, 'F', '1999-03-11', 9, 5);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (86, 'Alberik', 'Pancast', 'Spier', 'M', '1991-10-14', 9, 6);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (87, 'Ofella', 'Sawdon', 'Adger', 'F', '1993-08-11', 9, 7);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (88, 'Aurilia', 'Michie', null, 'F', '1994-12-30', 9, 8);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (89, 'Corrie', 'Tatersale', null, 'M', '1992-02-15', 9, 9);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (90, 'Fair', 'Lghan', 'Argyle', 'M', '1992-09-22', 9, 10);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (91, 'Jacklin', 'Spinige', 'Legen', 'F', '1996-04-12', 10, 1);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (92, 'Morganica', 'Roebottom', null, 'F', '1997-03-11', 10, 2);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (93, 'Jamima', 'Storch', 'Bischoff', 'F', '2002-03-07', 10, 3);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (94, 'Shem', 'Crenshaw', null, 'M', '2002-04-22', 10, 4);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (95, 'Helene', 'Shirtliff', 'Sackur', 'F', '1996-03-30', 10, 5);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (96, 'Elwood', 'Brager', 'Connaughton', 'M', '1999-09-17', 10, 6);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (97, 'Florry', 'Servis', null, 'F', '1991-12-12', 10, 7);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (98, 'Emmi', 'Chrstine', 'Rudall', 'F', '2003-07-30', 10, 8);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (99, 'Zuzana', 'Goff', null, 'F', '1989-02-08', 10, 9);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (100, 'Tod', 'Chessman', null, 'M', '1989-01-24', 10, 10);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (101, 'Berna', 'Verecker', 'Turk', 'F', '1993-12-17', 11, 1);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (102, 'Star', 'Brimilcombe', 'Riddle', 'F', '1999-04-02', 11, 2);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (103, 'Daloris', 'Wingatt', 'Moodie', 'F', '1995-01-16', 11, 3);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (104, 'Cristi', 'Quantrell', 'Shafier', 'F', '2002-01-04', 11, 4);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (105, 'Chadwick', 'Hurtado', 'Cyseley', 'M', '2001-04-30', 11, 5);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (106, 'Blair', 'Jollye', null, 'M', '1995-10-30', 11, 6);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (107, 'Waylon', 'Vany', 'Tilsley', 'M', '2000-10-30', 11, 7);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (108, 'Rhys', 'Sanja', 'Kissock', 'M', '1991-12-13', 11, 8);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (109, 'Jeralee', 'Palley', null, 'F', '1996-09-23', 11, 9);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (110, 'Carmelina', 'Veysey', 'Joris', 'F', '1990-12-16', 11, 10);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (111, 'Tynan', 'Shemming', 'Bauldrey', 'M', '2003-06-17', 12, 1);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (112, 'Dave', 'Pindell', 'Upham', 'M', '1999-09-18', 12, 2);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (113, 'Cathy', 'Currall', null, 'F', '2001-05-05', 12, 3);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (114, 'Amble', 'Mattiussi', 'Boulstridge', 'M', '1994-07-07', 12, 4);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (115, 'Iggie', 'Cammock', 'Axe', 'M', '1993-07-19', 12, 5);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (116, 'Mureil', 'Eustis', 'Shireff', 'F', '1993-11-05', 12, 6);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (117, 'Bertram', 'Olcot', 'Paniman', 'M', '1990-08-14', 12, 7);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (118, 'Bennett', 'Verheijden', 'Hairyes', 'M', '1998-09-25', 12, 8);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (119, 'Fredericka', 'Readwing', 'Sylvaine', 'F', '2000-08-08', 12, 9);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (120, 'Lay', 'Ibbison', null, 'M', '1995-04-09', 12, 10);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (121, 'Torin', 'Rosso', 'Malia', 'M', '2002-01-04', 13, 1);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (122, 'Mandi', 'McKew', 'Stidson', 'F', '1989-09-01', 13, 2);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (123, 'Sharline', 'Duligal', 'Abarough', 'F', '2001-03-27', 13, 3);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (124, 'Terrill', 'Greenstead', 'Lynett', 'M', '2001-05-16', 13, 4);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (125, 'Alecia', 'Denge', 'Caplis', 'F', '2001-05-08', 13, 5);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (126, 'Etty', 'Swancott', 'Waker', 'F', '1992-06-02', 13, 6);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (127, 'Cosme', 'Adshad', 'Cawthorne', 'M', '1992-06-22', 13, 7);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (128, 'Rudolfo', 'Moncur', 'Batty', 'M', '1998-04-08', 13, 8);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (129, 'Traci', 'McDool', 'Yoslowitz', 'F', '1992-01-24', 13, 9);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (130, 'Neely', 'Lomasna', 'Bellenie', 'F', '2000-04-04', 13, 10);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (131, 'Winifred', 'Isaacs', null, 'F', '1989-09-17', 14, 1);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (132, 'Bobbette', 'O''Looney', 'Dowdam', 'F', '1992-09-16', 14, 2);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (133, 'Chandler', 'Mish', 'Caistor', 'M', '1998-09-29', 14, 3);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (134, 'Martie', 'Fealy', null, 'F', '1991-03-19', 14, 4);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (135, 'Sherye', 'Jillings', 'Irons', 'F', '2003-05-16', 14, 5);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (136, 'Francine', 'Kevern', null, 'F', '1989-08-27', 14, 6);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (137, 'Kearney', 'Sneaker', 'Horley', 'M', '2002-12-25', 14, 7);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (138, 'Frederik', 'Pirri', 'Clayal', 'M', '2003-05-18', 14, 8);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (139, 'Rozele', 'Basnall', 'Lambregts', 'F', '1996-06-29', 14, 9);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (140, 'Benoite', 'McCreery', 'Collacombe', 'F', '1998-03-02', 14, 10);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (141, 'Town', 'Pavy', 'Talks', 'M', '1994-04-02', 15, 1);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (142, 'Julius', 'Abramchik', 'Benedetti', 'M', '1990-02-16', 15, 2);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (143, 'Ignacio', 'Rosendahl', 'Cuesta', 'M', '2001-09-01', 15, 3);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (144, 'Marianne', 'Standering', null, 'F', '2003-04-05', 15, 4);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (145, 'Kingsly', 'Blakesley', 'Adan', 'M', '1995-08-29', 15, 5);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (146, 'Chaim', 'O''Hdirscoll', 'Patient', 'M', '2002-06-25', 15, 6);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (147, 'Aurora', 'Batsford', null, 'F', '1991-10-04', 15, 7);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (148, 'Vallie', 'Jakel', 'Woodfine', 'F', '2002-04-25', 15, 8);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (149, 'Jess', 'Doherty', 'Bartelot', 'F', '1999-05-26', 15, 9);
insert into player (idplayer, name, surname1, surname2, gender, birthdate, number, team) values (150, 'Wendel', 'Berrick', 'Lowrance', 'M', '1994-02-12', 15, 10);

--Eliminamos los dorsales de los deportes que no tienen
UPDATE player SET number=NULL WHERE team = 5 OR team = 8 OR team = 10;

--Consultas

--Equipos con ID entre 1 y 9.
SELECT * FROM team WHERE idteam<=9;

--Equipos de más del siglo pasado.
SELECT * FROM team WHERE foundation<'1900-01-01';

--Los distintos deportes que hay.
SELECT DISTINCT sport FROM team;

--El número de localidades distintas que hay.
SELECT COUNT(DISTINCT sport) FROM team;

--Las ciudades en las que se juega al balonmano.
SELECT DISTINCT city FROM team WHERE sport='handball';

--Las ciudades en las que se juega al balonmano o al fútbol.
SELECT DISTINCT city FROM team WHERE sport='handball' OR sport='football';

--Los jugadores del equipo 6.
SELECT * FROM player WHERE team=6;

--Los jugadores del equipo 7 o del 9.
SELECT * FROM player WHERE team=7 OR team=9;

--Todos los jugadores que son porteros (dorsal 1).
SELECT * FROM player WHERE number=1;

--Todos los jugadores que empiezan por P.
SELECT * FROM player WHERE name LIKE 'P%';

--Jugadores con dorsal 2.
SELECT * FROM player WHERE number=2;

--Los jugadores cuyo apellido tiene una 'K' y su dorsal es el 9.
SELECT * FROM player WHERE surname1 LIKE 'K%' AND number=9 ;


