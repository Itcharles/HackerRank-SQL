Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

+-------------+------------+
| Field       |   Type     |
+-------------+------------+
| ID          | INTEGER    |
| CITY        | VARCHAR(21)|
| STATE       | VARCHAR(2) |
| LAT_N       | NUMERIC    |
| LONG_W      | NUMERIC    |
+-------------+------------+

Solution:
SELECT DISTINCT city
FROM station
WHERE (city NOT LIKE '%a' AND city NOT LIKE '%e' AND city NOT LIKE '%i' AND city NOT LIKE '%o' AND city NOT LIKE '%u') 
OR (city NOT LIKE 'a%' AND city NOT LIKE 'e%' AND city NOT LIKE 'i%' AND city NOT LIKE 'o%' AND city NOT LIKE 'u%')
ORDER BY city
