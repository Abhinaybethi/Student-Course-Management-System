-- Students in CSE
SELECT * FROM students WHERE department = 'CSE';

-- Courses taken by student 1
SELECT s.name, c.course_name, e.grade
FROM enrollment e
JOIN students s ON e.student_id = s.student_id
JOIN courses c ON e.course_id = c.course_id
WHERE s.student_id = 1;

-- Students per course
SELECT c.course_name, COUNT(e.student_id) AS total_students
FROM courses c
LEFT JOIN enrollment e ON c.course_id = e.course_id
GROUP BY c.course_id;

-- Grade A students
SELECT s.name, c.course_name
FROM enrollment e
JOIN students s ON e.student_id = s.student_id
JOIN courses c ON e.course_id = c.course_id
WHERE e.grade = 'A';

-- Students with no course
SELECT s.*
FROM students s
LEFT JOIN enrollment e ON s.student_id = e.student_id
WHERE e.student_id IS NULL;
