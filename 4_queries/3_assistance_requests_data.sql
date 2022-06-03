SELECT teachers.name as teacher, students.name as student, assignments.name as assignment, assistance_requests.completed_at as completed_at, assistance_requests.started_at as started_at
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
GROUP BY teachers.name, students.name, assignments.name, assistance_requests.completed_at, assistance_requests.started_at;