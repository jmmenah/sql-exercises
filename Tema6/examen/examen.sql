-- Ejercicio 1 y 2

CREATE TABLE piezas(referencia INT AUTO_INCREMENT PRIMARY KEY,
serie ENUM('Fenrir','Flaga','Fomorians','Rubezal'),
alto INT DEFAULT 50,
ancho INT DEFAULT 50,
precio FLOAT(5,2) DEFAULT 2.99,
color ENUM('blanco','marrón','negro') DEFAULT 'blanco',
fabricado DATE,
CONSTRAINT comp_alto CHECK(alto>0 AND alto<100),
CONSTRAINT comp_ancho CHECK(ancho>0 AND ancho<80),
CONSTRAINT comp_fabricado CHECK(fabricado>'2018-12-31')
);
-- Ejercicio 3(Supongo que los valores en blanco son NULL)
-- a

INSERT INTO piezas VALUES(1,'Fenrir',75,53,DEFAULT,'negro','2019-09-04');
INSERT INTO piezas VALUES(2,'Flaga',5,30,DEFAULT,'negro','2019-12-13');
INSERT INTO piezas VALUES(3,'Rubezal',52,16,DEFAULT,'negro','2020-02-07');
INSERT INTO piezas VALUES(4,'Flaga',null,71,DEFAULT,'marrón','2019-04-07');

-- b

INSERT INTO piezas VALUES(DEFAULT,'Rubezal',63,72,DEFAULT,'marrón','2019-05-26');
INSERT INTO piezas VALUES(DEFAULT,'Rubezal',14,31,DEFAULT,DEFAULT,'2019-03-21');
INSERT INTO piezas VALUES(DEFAULT,'Fenrir',18,12,DEFAULT,DEFAULT,'2020-02-07');
INSERT INTO piezas VALUES(DEFAULT,'Flaga',DEFAULT,43,DEFAULT,DEFAULT,'2019-09-12');

-- c

INSERT INTO piezas SET serie='Flaga', alto=91, ancho=58, color='marrón',fabricado='2019-09-12';
INSERT INTO piezas SET serie='Rubezal', alto=20, ancho=29, color='marrón',fabricado='2019-02-20';
INSERT INTO piezas SET serie='Rubezal', alto=96, ancho=5, color='marrón',fabricado='2019-09-18';
INSERT INTO piezas SET serie='Fomorians', alto=44, ancho=30, color='marrón',fabricado='2019-03-12';

-- d

INSERT INTO piezas VALUES(DEFAULT,'Rubezal',null,37,DEFAULT,'negro','2019-08-24');
INSERT INTO piezas VALUES(DEFAULT,'Rubezal',53,68,DEFAULT,'negro','2019-04-05');

-- Ejercicio 4

REPLACE piezas VALUES(14,'Rubezal',DEFAULT,68,DEFAULT,'negro','2019-04-05');

-- Ejercicio 5

UPDATE piezas SET alto=DEFAULT WHERE alto IS NULL;

-- Ejercicio 6

DELETE FROM piezas WHERE (alto-ancho)>75;

-- Ejercicio 7

UPDATE piezas SET alto=alto*1.05 WHERE serie='Rubezal';

-- Ejercicio 8

ALTER TABLE piezas MODIFY COLUMN serie ENUM('Fenrir','Flaga','Fomorians','Rubezal','Myling');
UPDATE piezas SET serie='Myling' WHERE serie='Fenrir';

-- Ejercicio 9

CREATE TABLE superficie(referencia INT AUTO_INCREMENT PRIMARY KEY,
superficie INT
); 
INSERT INTO superficie(referencia,superficie) SELECT referencia,ancho*alto FROM piezas;
