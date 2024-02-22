You did such a great job helping Julia with her last coding contest challenge that she wants you to work on this one, too!

The total score of a hacker is the sum of their maximum scores for all of the challenges. Write a query to print the hacker_id, name, and total score of the hackers ordered by the descending
score. If more than one hacker achieved the same total score, then sort the result by ascending hacker_id. Exclude all hackers with a total score of  from your result.

Solution:

SELECT x.hacker_id, x.name, SUM(x.score) AS sum FROM (SELECT h.hacker_id, h.name, s.challenge_id, MAX(s.score) AS score
FROM hackers h JOIN submissions s ON h.hacker_id=s.hacker_id
GROUP BY h.hacker_id, h.name, s.challenge_id) x
GROUP BY x.hacker_id, x.name
HAVING sum>0
ORDER BY sum DESC, x.hacker_id
