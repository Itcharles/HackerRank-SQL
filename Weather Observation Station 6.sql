Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

Solution:

MYSQL Solution:
SELECT DISTINCT city
FROM station
WHERE city Like 'a%' OR city Like 'e%' OR city Like 'i%' OR city Like 'o%' OR city Like 'u%'

  
MS Server SQL Solution:
SELECT DISTINCT city
FROM station
WHERE CITY Like '[AEIOU]%
