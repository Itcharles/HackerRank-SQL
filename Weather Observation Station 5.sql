Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). 
If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.

Soution:

(SELECT city, LENGTH(city)  AS num
FROM station
ORDER BY num DESC, city
LIMIT 1)
UNION ALL
(SELECT city, LENGTH(city)  AS numi
FROM station
ORDER BY numi, city
LIMIT 1)
