Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than . Truncate your answer to  decimal places.

Solution:

SELECT ROUND(MAX(LAT_N), 4)
FROM station
WHERE  LAT_N < 137.2345
