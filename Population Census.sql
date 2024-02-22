Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

Solution:

SELECT SUM(ci.population)
FROM city ci JOIN country co ON ci.countrycode=co.code
WHERE co.continent = 'Asia'
