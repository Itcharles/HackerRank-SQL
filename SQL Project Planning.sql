You are given a table, Projects, containing three columns: Task_ID, Start_Date and End_Date. It is guaranteed that the difference between the End_Date and the Start_Date is equal to 1 day 
for each row in the table.

If the End_Date of the tasks are consecutive, then they are part of the same project. Samantha is interested in finding the total number of different projects completed.

Write a query to output the start and end dates of projects listed by the number of days it took to complete the project in ascending order.
If there is more than one project that have the same number of completion days, then order by the start date of the project.

Solution:

WITH table1 AS(SELECT x.start_date, ROW_NUMBER() OVER (ORDER BY x.start_date) AS rowsnumber FROM (SELECT *,  LAG(end_date, 1) OVER(ORDER BY end_date) AS legso
FROM projects) x
WHERE  x.start_date NOT IN (x.legso) OR  x.legso IS NULL),

table2 AS (SELECT y.end_date, ROW_NUMBER() OVER (ORDER BY y.end_date) AS rowsnumber2 FROM (SELECT end_date, LAG(start_date, 1) OVER(ORDER BY start_date) AS legso, 
  CASE WHEN end_date IN (SELECT LAG(start_date, 1) OVER(ORDER BY start_date)
FROM projects) THEN 'YES' ELSE 'NO' END AS outcome
FROM projects) y
WHERE y.outcome = 'NO')

SELECT table1.start_date, table2.end_date
FROM table1 JOIN table2 ON table1.rowsnumber=table2.rowsnumber2
ORDER BY table2.end_date-table1.start_date, table1.start_date
