-- Students who's average time to complete an assignment is less than
-- the average estimated time to complete an assignment

SELECT students.name as student, AVG(assignment_submissions.duration) as average_assignment_duration, AVG(assignments.duration) as average_estimated_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
WHERE students.end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration
LIMIT 4;

