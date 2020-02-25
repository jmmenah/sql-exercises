-- Número de ciudades de España
SELECT COUNT(*) AS "Numero de Ciudades de España" FROM city WHERE CountryCode='ESP';
-- País con mayor población
SELECT Name,Continent,Population,Capital FROM country ORDER BY Population DESC LIMIT 1;
-- Muestra los distintos idiomas que hay
SELECT DISTINCT Language FROM countrylanguage;
-- Cuenta los distintos idiomas que hay
SELECT DISTINCT COUNT(Language) AS "Numero de idiomas" FROM countrylanguage;
-- Muestra aquellos idiomas y su país que se hablen por menos del 10% de la población
SELECT Language FROM countrylanguage WHERE Percentage<10;
-- Número de países en los que el español sea lengua oficial
SELECT Count(*) AS "Paises español idioma oficial" from countrylanguage  WHERE Language='Spanish' AND IsOfficial='T';
-- Países en los que el español sea lengua oficial o cooficial
SELECT Count(*) AS "Paises que hablan español" FROM countrylanguage WHERE Language='Spanish';
-- Muestra las distintas formas de gobierno
SELECT DISTINCT GovernmentForm FROM country;
-- Muestra el nombre de los países en su lengua autóctona, su población, el nombre de su capital y la población de la capital.
SELECT LocalName,country.Population,city.Name,city.Population FROM country,city WHERE country.Capital=city.ID;
-- Muestra la esperanza de vida media en los países de Europa.
SELECT AVG(LifeExpectancy) AS "Vida Media" FROM country WHERE Continent='Europe';
-- Muestra la media de la esperanza de vida de las distintas regiones que sea mayor de 70 años.
SELECT Region, AVG(LifeExpectancy) AS "Vida Media" FROM country GROUP BY Region HAVING AVG(LifeExpectancy)>70;
