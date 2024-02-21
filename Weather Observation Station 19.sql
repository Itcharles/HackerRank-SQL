Query the Euclidean Distance between points  and  and format your answer to display  decimal digits.

Solution:

SELECT ROUND(SQRT(POWER(MAX(LAT_N) - MIN(LAT_N),2) + POWER(MAX(LONG_W) - MIN(LONG_W),2)), 4)
FROM station
