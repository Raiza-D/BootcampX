-- Retrieve the names of all the teachers who performed an assistance
-- request during a cohort

SELECT teachers.name as teacher
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
GROUP BY teachers.name
ORDER BY teachers.name;

-- SELECT COUNT(assistance_requests.*) as total_assistances, teachers.name
-- FROM assistance_requests
-- JOIN teachers ON teachers.id = teacher_id
-- GROUP BY teachers.name;
