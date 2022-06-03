-- Retrieve average duration of assistance requests for each cohort

SELECT cohorts.name, AVG(completed_at - started_at) as average_assistance_time
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time ASC;

-- Line 5: Pull data where students.id in students table matching
-- exactly as student_id data from assistance_requests table.
