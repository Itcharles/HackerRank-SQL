Query the smallest Northern Latitude (LAT_N) from STATION that is greater than . Round your answer to  decimal places.

Solution:

SELECT ROUND(MIN(LAT_N),4)
FROM station
WHERE LAT_N > 38.7780
