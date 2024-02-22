Julia asked her students to create some coding challenges. Write a query to print the hacker_id, name, and the total number of challenges created by each student. 
Sort your results by the total number of challenges in descending order. If more than one student created the same number of challenges, then sort the result by hacker_id. 
If more than one student created the same number of challenges and the count is less than the maximum number of challenges created, then exclude those students from the result.

Solution:

WITH table1 AS (SELECT x.num AS chal, COUNT(x.num) FROM (SELECT hacker_id, COUNT(challenge_id) AS num
FROM challenges
GROUP BY hacker_id
ORDER BY num DESC, hacker_id) x
GROUP BY x.num
HAVING COUNT(x.num) > 1 AND  x.num < (SELECT MAX(num) FROM (SELECT hacker_id, COUNT(challenge_id) AS num FROM challenges GROUP BY hacker_id) AS temp))

SELECT h.hacker_id, h.name, COUNT(c.challenge_id) AS num
FROM hackers h JOIN challenges c ON h.hacker_id=c.hacker_id
GROUP BY h.hacker_id, h.name
HAVING num NOT IN (SELECT chal FROM table1)
ORDER BY num DESC, h.hacker_id
