Query the Manhattan Distance between points  and  and round it to a scale of  decimal places.

Solution:

SELECT ABS(ROUND((MIN(LAT_N)-MAX(LAT_N))+(MIN(LONG_W)-MAX(LONG_W)), 4))
FROM station
