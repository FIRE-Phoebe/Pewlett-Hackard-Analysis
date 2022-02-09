--check table
SELECT * FROM mentorship_eligibilty;
SELECT * FROM retiring_titles;
--mentorship count by title
SELECT COUNT(me.emp_no),me.title
INTO mentorship_count
FROM mentorship_eligibilty AS me
GROUP BY me.title
ORDER BY COUNT(me.emp_no) DESC;
SELECT * FROM mentorship_count;

--compare two tables
SELECT * FROM retiring_titles AS rtt
--INTO
FULL JOIN mentorship_count AS mt
ON (rtt.title = mt.title);