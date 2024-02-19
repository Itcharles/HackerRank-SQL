Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath 
its corresponding Occupation. 
The output column headers should be Doctor, Professor, Singer, and Actor, respectively.

Note: Print NULL when there are no more names corresponding to an occupation.

Solution:

WITH doctor AS (SELECT ROW_Number () OVER (ORDER BY name) AS num, name 
FROM occupations 
WHERE occupation = 'doctor'
ORDER BY name),

professor AS (SELECT ROW_Number () OVER (ORDER BY name) AS num, name 
FROM occupations 
WHERE occupation = 'professor'
ORDER BY name),

singer AS (SELECT ROW_Number () OVER (ORDER BY name) AS num, name 
FROM occupations 
WHERE occupation = 'singer'
ORDER BY name),

actor AS (SELECT ROW_Number () OVER (ORDER BY name) AS num, name 
FROM occupations 
WHERE occupation = 'actor'
ORDER BY name)

SELECT d.name, p.name, s.name, a.name
FROM professor p LEFT JOIN doctor d ON p.num=d.num LEFT JOIN singer s ON p.num=s.num LEFT JOIN actor a ON p.num=a.num
