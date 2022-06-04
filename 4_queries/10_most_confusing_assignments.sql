-- Retrieve assignments and their total assistance requests

SELECT assignments.id, name, day, chapter, COUNT(assistance_requests) as total_requests
FROM assignments
JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC;


-- My original query:
-- SELECT assignments.id, assignments.name, assignments.day, assignments.chapter, COUNT(assistance_requests.*) as total_requests
-- FROM assistance_requests
-- JOIN assignments ON assignments.id = assignment_id
-- GROUP BY assignments.id
-- ORDER BY total_requests DESC;