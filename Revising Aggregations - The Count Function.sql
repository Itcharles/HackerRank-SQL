Query a count of the number of cities in CITY having a Population larger than 100 000 .

Solution:

SELECT COUNT(name)
FROM city
WHERE population > 100000
