--check table
SELECT * FROM mentorship_eligibilty;

SELECT COUNT(me.emp_no),me.title
INTO mentorship_count
FROM mentorship_eligibilty AS me
GROUP BY me.title
ORDER BY COUNT(me.emp_no) DESC;
SELECT * FROM mentorship_count;