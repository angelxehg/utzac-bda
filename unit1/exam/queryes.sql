DESCRIBE country
INTO OUTFILE 'D:/angel/Descargas/results/r01.csv';

SELECT COUNT(ID) FROM city
INTO OUTFILE 'D:/angel/Descargas/results/r02.csv';

SELECT SUM(Population) FROM city
INTO OUTFILE 'D:/angel/Descargas/results/r03.csv';

-- por pais
SELECT country.Name, SUM(city.Population) FROM country, city WHERE country.Code = city.CountryCode GROUP BY country.Code
INTO OUTFILE 'D:/angel/Descargas/results/r04.csv';

SELECT Name, SUM(Population) FROM city GROUP BY Name ORDER BY SUM(Population) DESC LIMIT 1
INTO OUTFILE 'D:/angel/Descargas/results/r05.csv';

SELECT Name, SUM(Population) FROM city GROUP BY Name ORDER BY SUM(Population) ASC LIMIT 1
INTO OUTFILE 'D:/angel/Descargas/results/r06.csv';

SELECT Name, SUM(Population) FROM city WHERE Population>2000000 GROUP BY Name ORDER BY SUM(Population) DESC
INTO OUTFILE 'D:/angel/Descargas/results/r07.csv';

SELECT Name, SUM(Population) FROM city WHERE Name='Los Angeles' OR Name='Tokyo' OR Name='London' OR Name='Istanbul' OR Name='Ciudad de México' GROUP BY Name
INTO OUTFILE 'D:/angel/Descargas/results/r08.csv';

SELECT ID, Name, SUM(Population) FROM city WHERE Name='Los Angeles' OR Name='Tokyo' OR Name='London' OR Name='Istanbul' OR Name='Ciudad de México' GROUP BY Name
INTO OUTFILE 'D:/angel/Descargas/results/r09.csv';

SELECT city.Name, city.Population, countrylanguage.Language FROM city, countrylanguage WHERE countrylanguage.CountryCode=city.CountryCode AND city.Population>8000000 AND countrylanguage.IsOfficial='T' ORDER BY city.Population DESC
INTO OUTFILE 'D:/angel/Descargas/results/r10.csv';
