-- Retrieve average assistance request wait time

SELECT AVG(started_at - created_at) as average_wait_time
FROM assistance_requests;