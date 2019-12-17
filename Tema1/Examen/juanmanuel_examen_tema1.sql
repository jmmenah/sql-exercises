--Accedemos a mySQL
--mysql -u admin -p
--Creamos la base de datos mudanzas
CREATE SCHEMA mudanzas;
--Creamos la tabla vehiculos
USE mudanzas;
CREATE TABLE vehiculo (matricula VARCHAR(11) NOT NULL PRIMARY KEY, tipo VARCHAR(20) NOT NULL, precio INTEGER NOT NULL);
--Insertamos los datos en la tabla vehiculo
insert into vehiculo (matricula, tipo, precio) values ('5071ULQ', 'FURGONETA', 100);
insert into vehiculo (matricula, tipo, precio) values ('2381PND', 'GRAN FURGONETA', 120);
insert into vehiculo (matricula, tipo, precio) values ('5342DGC', 'CAMION', 150);
insert into vehiculo (matricula, tipo, precio) values ('8236DJM', 'GRAN CAMIÓN', 250);
insert into vehiculo (matricula, tipo, precio) values ('0736PST', 'FURGONETA', 100);
insert into vehiculo (matricula, tipo, precio) values ('3383WPM', 'GRAN FURGONETA', 120);
insert into vehiculo (matricula, tipo, precio) values ('6983LRB', 'CAMION', 150);
insert into vehiculo (matricula, tipo, precio) values ('4352MZW', 'GRAN CAMIÓN', 250);
insert into vehiculo (matricula, tipo, precio) values ('9398GTW', 'FURGONETA', 100);
insert into vehiculo (matricula, tipo, precio) values ('7108CVM', 'GRAN FURGONETA', 120);
--Creamos la tabla mudanza
CREATE TABLE mudanza (id_mudanza INTEGER AUTO_INCREMENT PRIMARY KEY, fecha DATE NOT NULL, nif VARCHAR(15) NOT NULL, horas INTEGER NOT NULL, incidentes VARCHAR(80), matricula VARCHAR(11) NOT NULL);
--Añadimos la clave foranea
ALTER TABLE mudanza ADD CONSTRAINT `fk_mudanza`  FOREIGN KEY (`matricula`) REFERENCES `vehiculo` (`matricula`) ON DELETE CASCADE ON UPDATE CASCADE;
--Añadimos los datos de la tabla mudanza
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (1, '2019-05-18', '66411055E', 3, 'NO ESTABA EL CLIENTE', '8236DJM');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (2, '2016-12-02', '96440998J', 3, 'EL VEHÍCULO LLEGÓ TARDE', '7108CVM');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (3, '2019-07-15', '13214979E', 2, 'EL CLIENTE LLEGÓ TARDE', '5342DGC');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (4, '2016-05-18', '02908693K', 6, 'EL CLIENTE LLEGÓ TARDE', '7108CVM');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (5, '2017-12-16', '43580238B', 4, 'EL VEHÍCULO LLEGÓ TARDE', '4352MZW');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (6, '2015-11-04', '45925775W', 8, 'NO ESTABA EL CLIENTE', '0736PST');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (7, '2017-07-31', '84064143Q', 7, 'EL CLIENTE LLEGÓ TARDE', '5071ULQ');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (8, '2016-01-21', '94743745U', 2, null, '7108CVM');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (9, '2016-04-24', '37104917M', 6, 'NO ESTABA EL CLIENTE', '2381PND');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (10, '2019-09-04', '04202789W', 8, 'NO ESTABA EL CLIENTE', '7108CVM');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (11, '2016-12-04', '28730607Q', 4, null, '8236DJM');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (12, '2017-11-23', '16110151W', 6, 'NO ESTABA EL CLIENTE', '6983LRB');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (13, '2017-11-22', '47536031Z', 3, null, '7108CVM');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (14, '2019-07-04', '92481090G', 8, 'NO ESTABA EL CLIENTE', '8236DJM');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (15, '2019-05-13', '62725095D', 3, 'EL VEHÍCULO LLEGÓ TARDE', '5342DGC');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (16, '2019-03-18', '45476369A', 1, 'EL VEHÍCULO LLEGÓ TARDE', '0736PST');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (17, '2017-07-04', '92982384V', 3, 'NO ESTABA EL CLIENTE', '5342DGC');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (18, '2019-04-17', '71687482Q', 1, 'EL CLIENTE LLEGÓ TARDE', '4352MZW');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (19, '2019-01-08', '82548838I', 5, 'EL CLIENTE LLEGÓ TARDE', '2381PND');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (20, '2015-12-25', '29002822U', 4, 'EL VEHÍCULO LLEGÓ TARDE', '5071ULQ');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (21, '2016-05-07', '50826366J', 3, 'EL VEHÍCULO LLEGÓ TARDE', '5342DGC');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (22, '2018-11-03', '82158453H', 2, 'NO ESTABA EL CLIENTE', '2381PND');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (23, '2017-09-13', '87775205X', 4, 'EL VEHÍCULO LLEGÓ TARDE', '3383WPM');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (24, '2018-10-15', '03493926U', 5, 'EL VEHÍCULO LLEGÓ TARDE', '5071ULQ');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (25, '2018-10-07', '90817791W', 5, 'EL VEHÍCULO LLEGÓ TARDE', '5071ULQ');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (26, '2016-04-05', '81145009G', 5, 'NO ESTABA EL CLIENTE', '3383WPM');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (27, '2018-03-11', '76767912U', 7, 'EL VEHÍCULO LLEGÓ TARDE', '6983LRB');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (28, '2019-04-28', '90741988Y', 1, 'EL CLIENTE LLEGÓ TARDE', '0736PST');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (29, '2017-10-30', '25730880H', 7, 'EL VEHÍCULO LLEGÓ TARDE', '3383WPM');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (30, '2019-04-21', '85744200E', 3, 'EL CLIENTE LLEGÓ TARDE', '5342DGC');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (31, '2017-11-28', '37558596S', 4, 'EL VEHÍCULO LLEGÓ TARDE', '5342DGC');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (32, '2016-05-21', '79624701P', 1, 'EL VEHÍCULO LLEGÓ TARDE', '9398GTW');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (33, '2016-10-25', '58084879G', 3, 'EL VEHÍCULO LLEGÓ TARDE', '2381PND');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (34, '2018-05-02', '69923185F', 7, 'EL VEHÍCULO LLEGÓ TARDE', '9398GTW');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (35, '2015-12-31', '96986175Z', 2, 'EL VEHÍCULO LLEGÓ TARDE', '8236DJM');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (36, '2019-02-12', '08277102M', 1, 'EL CLIENTE LLEGÓ TARDE', '8236DJM');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (37, '2017-06-08', '10448360Y', 7, 'EL CLIENTE LLEGÓ TARDE', '3383WPM');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (38, '2019-04-06', '31459660A', 7, 'EL VEHÍCULO LLEGÓ TARDE', '9398GTW');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (39, '2018-06-19', '37821303I', 5, 'EL CLIENTE LLEGÓ TARDE', '3383WPM');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (40, '2018-01-27', '44937212B', 3, 'EL CLIENTE LLEGÓ TARDE', '6983LRB');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (41, '2019-04-09', '15001700Q', 7, 'EL VEHÍCULO LLEGÓ TARDE', '0736PST');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (42, '2016-05-17', '70154770C', 8, 'EL CLIENTE LLEGÓ TARDE', '8236DJM');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (43, '2017-02-19', '77797728B', 3, 'EL CLIENTE LLEGÓ TARDE', '6983LRB');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (44, '2018-01-17', '66281656A', 7, 'EL CLIENTE LLEGÓ TARDE', '7108CVM');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (45, '2018-11-26', '99113995B', 4, 'EL CLIENTE LLEGÓ TARDE', '5342DGC');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (46, '2017-12-06', '38207709W', 4, 'EL CLIENTE LLEGÓ TARDE', '6983LRB');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (47, '2017-04-10', '57340288Q', 3, 'EL CLIENTE LLEGÓ TARDE', '3383WPM');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (48, '2015-12-30', '99732874P', 3, 'EL VEHÍCULO LLEGÓ TARDE', '2381PND');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (49, '2018-12-13', '60369926F', 8, null, '0736PST');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (50, '2017-05-01', '42185619W', 1, 'EL CLIENTE LLEGÓ TARDE', '4352MZW');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (51, '2017-04-19', '18896130X', 5, null, '4352MZW');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (52, '2017-09-04', '82298444F', 5, 'NO ESTABA EL CLIENTE', '2381PND');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (53, '2017-11-09', '27530161S', 5, 'EL CLIENTE LLEGÓ TARDE', '4352MZW');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (54, '2019-10-18', '30678790R', 7, 'EL VEHÍCULO LLEGÓ TARDE', '9398GTW');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (55, '2018-09-07', '14743117U', 6, 'NO ESTABA EL CLIENTE', '2381PND');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (56, '2019-07-30', '13531042R', 5, 'NO ESTABA EL CLIENTE', '6983LRB');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (57, '2018-04-12', '49436640X', 3, 'EL CLIENTE LLEGÓ TARDE', '0736PST');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (58, '2016-01-02', '26701803U', 7, null, '5071ULQ');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (59, '2016-01-03', '49245978L', 5, 'EL CLIENTE LLEGÓ TARDE', '2381PND');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (60, '2017-06-17', '26964388E', 8, 'NO ESTABA EL CLIENTE', '7108CVM');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (61, '2015-11-22', '67563955G', 6, 'EL CLIENTE LLEGÓ TARDE', '8236DJM');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (62, '2016-03-18', '43837044J', 1, 'EL VEHÍCULO LLEGÓ TARDE', '4352MZW');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (63, '2017-03-22', '14093277T', 1, 'NO ESTABA EL CLIENTE', '5342DGC');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (64, '2019-05-22', '58351974G', 4, 'EL VEHÍCULO LLEGÓ TARDE', '3383WPM');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (65, '2019-07-17', '82409202R', 1, 'EL VEHÍCULO LLEGÓ TARDE', '0736PST');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (66, '2019-03-25', '36803864X', 5, null, '6983LRB');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (67, '2018-11-30', '32210434Y', 2, null, '5071ULQ');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (68, '2018-01-06', '62909120U', 6, 'EL CLIENTE LLEGÓ TARDE', '9398GTW');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (69, '2016-10-23', '39847357T', 8, 'NO ESTABA EL CLIENTE', '3383WPM');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (70, '2019-01-04', '05130396Q', 3, null, '7108CVM');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (71, '2018-06-05', '10121970E', 6, 'NO ESTABA EL CLIENTE', '9398GTW');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (72, '2016-05-20', '05635673D', 2, 'EL CLIENTE LLEGÓ TARDE', '9398GTW');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (73, '2017-09-30', '60643854O', 3, 'EL CLIENTE LLEGÓ TARDE', '5342DGC');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (74, '2017-11-26', '38926779J', 2, 'NO ESTABA EL CLIENTE', '8236DJM');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (75, '2017-10-04', '04188204G', 4, 'NO ESTABA EL CLIENTE', '7108CVM');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (76, '2017-04-17', '84164054S', 4, 'NO ESTABA EL CLIENTE', '3383WPM');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (77, '2016-12-30', '66834531C', 2, 'EL CLIENTE LLEGÓ TARDE', '8236DJM');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (78, '2017-06-07', '53460507T', 3, 'NO ESTABA EL CLIENTE', '3383WPM');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (79, '2017-12-09', '14940765M', 7, 'EL VEHÍCULO LLEGÓ TARDE', '7108CVM');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (80, '2018-12-27', '50824948U', 7, 'EL VEHÍCULO LLEGÓ TARDE', '4352MZW');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (81, '2019-03-18', '97039920Z', 5, 'EL CLIENTE LLEGÓ TARDE', '7108CVM');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (82, '2016-06-12', '86494858G', 1, 'EL CLIENTE LLEGÓ TARDE', '4352MZW');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (83, '2016-02-16', '31159322K', 8, 'NO ESTABA EL CLIENTE', '5342DGC');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (84, '2017-06-02', '97139296D', 3, 'NO ESTABA EL CLIENTE', '5342DGC');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (85, '2016-11-18', '79338217J', 8, 'EL CLIENTE LLEGÓ TARDE', '9398GTW');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (86, '2019-04-28', '78563216P', 4, 'EL VEHÍCULO LLEGÓ TARDE', '4352MZW');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (87, '2017-06-02', '56867811H', 7, 'EL VEHÍCULO LLEGÓ TARDE', '9398GTW');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (88, '2019-09-25', '03123320K', 1, 'EL VEHÍCULO LLEGÓ TARDE', '5342DGC');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (89, '2017-11-11', '90525896E', 8, 'EL CLIENTE LLEGÓ TARDE', '5071ULQ');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (90, '2016-05-30', '62144207X', 6, 'EL VEHÍCULO LLEGÓ TARDE', '7108CVM');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (91, '2018-03-03', '40284365O', 5, null, '2381PND');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (92, '2019-01-26', '61548668X', 4, 'EL VEHÍCULO LLEGÓ TARDE', '0736PST');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (93, '2017-03-25', '02316549B', 3, 'EL VEHÍCULO LLEGÓ TARDE', '0736PST');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (94, '2017-09-15', '18457535V', 7, 'EL CLIENTE LLEGÓ TARDE', '5071ULQ');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (95, '2018-05-24', '45218810D', 3, 'EL VEHÍCULO LLEGÓ TARDE', '4352MZW');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (96, '2016-01-11', '49509599W', 5, 'EL VEHÍCULO LLEGÓ TARDE', '9398GTW');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (97, '2016-10-16', '81283742A', 2, 'EL VEHÍCULO LLEGÓ TARDE', '5342DGC');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (98, '2018-01-24', '51993914A', 3, 'EL CLIENTE LLEGÓ TARDE', '5342DGC');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (99, '2018-12-06', '79416087V', 6, 'EL VEHÍCULO LLEGÓ TARDE', '6983LRB');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (100, '2017-10-23', '62185830P', 5, 'NO ESTABA EL CLIENTE', '8236DJM');

insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (null, '2017-03-12', '81283742A', 8, 'EL VEHÍCULO LLEGÓ TARDE', '0736PST');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (null, '2019-07-01', '92982384V', 2, null, '0736PST');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (null, '2017-08-16', '81283742A', 4, 'NO ESTABA EL CLIENTE', '7108CVM');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (null, '2017-07-10', '92982384V', 6, 'NO ESTABA EL CLIENTE', '8236DJM');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (null, '2018-04-15', '86494858G', 1, 'EL VEHÍCULO LLEGÓ TARDE', '4352MZW');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (null, '2016-01-28', '81283742A', 5, 'EL VEHÍCULO LLEGÓ TARDE', '7108CVM');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (null, '2016-09-24', '92982384V', 2, 'EL VEHÍCULO LLEGÓ TARDE', '6983LRB');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (null, '2016-07-06', '86494858G', 4, 'EL CLIENTE LLEGÓ TARDE', '9398GTW');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (null, '2019-06-20', '81283742A', 6, 'EL CLIENTE LLEGÓ TARDE', '4352MZW');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (null, '2018-06-22', '82298444F', 4, 'EL VEHÍCULO LLEGÓ TARDE', '0736PST');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (null, '2018-12-26', '14093277T', 2, 'EL CLIENTE LLEGÓ TARDE', '6983LRB');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (null, '2018-08-18', '92982384V', 5, null, '5342DGC');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (null, '2016-09-20', '81283742A', 6, 'NO ESTABA EL CLIENTE', '8236DJM');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (null, '2017-03-14', '81283742A', 3, null, '9398GTW');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (null, '2017-04-06', '81283742A', 5, 'EL VEHÍCULO LLEGÓ TARDE', '9398GTW');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (null, '2019-01-29', '82298444F', 1, 'EL CLIENTE LLEGÓ TARDE', '0736PST');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (null, '2016-04-14', '82298444F', 6, 'EL CLIENTE LLEGÓ TARDE', '2381PND');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (null, '2017-05-29', '82298444F', 1, 'EL VEHÍCULO LLEGÓ TARDE', '6983LRB');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (null, '2017-12-19', '81283742A', 7, 'EL VEHÍCULO LLEGÓ TARDE', '3383WPM');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (null, '2018-08-03', '82298444F', 8, 'EL VEHÍCULO LLEGÓ TARDE', '3383WPM');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (null, '2017-06-12', '14093277T', 1, 'EL CLIENTE LLEGÓ TARDE', '7108CVM');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (null, '2018-01-31', '82298444F', 7, 'NO ESTABA EL CLIENTE', '5342DGC');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (null, '2017-07-29', '14093277T', 4, 'NO ESTABA EL CLIENTE', '2381PND');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (null, '2017-08-17', '14093277T', 5, null, '7108CVM');
insert into mudanza (id_mudanza, fecha, nif, horas, incidentes, matricula) values (null, '2019-06-27', '14093277T', 3, 'NO ESTABA EL CLIENTE', '5071ULQ');
--Consultas

--Inserta un nuevo vehiculo
INSERT INTO vehiculo VALUES ('2273BC','CAMION',150);
--Inserta una nueva mudanza
INSERT INTO mudanza VALUES(null,'2019-11-04','77563706B',5,'NO ESTABA EL CLIENTE','2273BC');
--Selecciona las mudanzas del vehiculo 3383WPM
SELECT id_mudanza,fecha FROM mudanza WHERE matricula = '3383WPM';
--Selecciona el id con el alias "Mudanzas larga duracion" de todas las mudanzas entre 3 y 6 horas
SELECT id_mudanza 'Mudanzas larga duracion',horas  FROM mudanza WHERE horas>=3 AND horas<=6;
--Actualiza las matriculas que contengan la U. Cambiala por una V.
SELECT matricula FROM vehiculo WHERE matricula LIKE '%U%';
/*
+-----------+
| matricula |
+-----------+
| 5071ULQ   |
+-----------+
*/ 
UPDATE vehiculo SET matricula='5071VLQ' WHERE matricula='5071ULQ';
SELECT * FROM vehiculo WHERE matricula='5071VLQ';
/*
+-----------+-----------+--------+
| matricula | tipo      | precio |
+-----------+-----------+--------+
| 5071VLQ   | FURGONETA |    100 |
+-----------+-----------+--------+
*/
SELECT id_mudanza, matricula FROM mudanza WHERE matricula='5071VLQ';
/*
+------------+-----------+
| id_mudanza | matricula |
+------------+-----------+
|          7 | 5071VLQ   |
|         20 | 5071VLQ   |
|         24 | 5071VLQ   |
|         25 | 5071VLQ   |
|         58 | 5071VLQ   |
|         67 | 5071VLQ   |
|         89 | 5071VLQ   |
|         94 | 5071VLQ   |
|        125 | 5071VLQ   |
+------------+-----------+
*/
--Borra la mudanza 9
DELETE FROM mudanza WHERE id_mudanza=9;