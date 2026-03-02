SELECT
s.student_id,
s.first_name,
s.last_name,
ROUND(AVG(
CASE e.grade
WHEN 'A' THEN 4
WHEN 'A-' THEN 3.7
WHEN 'B+' THEN 3.3
WHEN 'B' THEN 3
WHEN 'B-' THEN 2.7
WHEN 'C+' THEN 2.3
WHEN 'C' THEN 2
ELSE 0
END
), 2) AS gpa
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
GROUP BY s.student_id;