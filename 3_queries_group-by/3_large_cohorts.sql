-- My SQL query:
-- SELECT cohorts.name as cohort_name, COUNT(students.*) as student_count
-- FROM students
-- JOIN cohorts ON cohorts.id = cohort_id
-- GROUP BY cohorts.name
-- HAVING COUNT(students.*) >= 18
-- ORDER BY student_count;

-- Compass' SQL query:
SELECT cohorts.name as cohort_name, count(students.*) AS student_count 
FROM cohorts
JOIN students ON cohorts.id = cohort_id
GROUP BY cohort_name 
HAVING count(students.*) >= 18
ORDER BY student_count;

-- The lines from SELECT, FROM, to JOIN - What's the diff between
-- my code and Compass'? Both produce the same result. Which is better
-- and makes more sense?