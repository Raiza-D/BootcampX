SELECT SUM(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON student_id = students.id
WHERE students.name = 'Ibrahim Schimmel';

/*
SUM(assignment_submission.duration) vs. SUM(duration)
Both will produce the same result.
By specifying which table duration belongs to, it's more clear at first glance.
In certain situations (e.g. new junior dev joined the company), having the
table specified will be more clear. Method 1 has better readability.

To someone who knows the database and its tables well, the table that
duration belongs to in Method 2 will be obvious.
*/