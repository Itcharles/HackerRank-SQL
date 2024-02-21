Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than . Round your answer to  decimal places.

Solution:

SELECT ROUND(LONG_W, 4)
FROM station
WHERE LAT_N = (SELECT MIN(LAT_N) FROM station WHERE LAT_N > 38.7780)
