Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

Solution:

SELECT ci.name
FROM city ci JOIN country co ON ci.countrycode=co.code
WHERE co.continent='Africa'
