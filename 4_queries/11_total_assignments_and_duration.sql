-- Retrieve total assignments per day and total duration of assignments
-- for each day

SELECT day, COUNT(*) as number_of_assignments, SUM(duration) as duration
FROM assignments
GROUP BY day
ORDER BY day;
