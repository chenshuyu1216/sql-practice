-- SQL Practice: Basic Queries
-- Table used in these exercises: students
--
-- Assume the table structure is:
-- students(id, name, major, score, city)

-- 1. Select all columns from the students table.
SELECT *
FROM students;

-- 2. Select only student names and scores.
SELECT name, score
FROM students;

-- 3. Find students whose score is greater than 80.
SELECT *
FROM students
WHERE score > 80;

-- 4. Find students from Kuala Lumpur.
SELECT *
FROM students
WHERE city = 'Kuala Lumpur';

-- 5. Find AI students.
SELECT *
FROM students
WHERE major = 'Artificial Intelligence';

-- 6. Sort students by score from highest to lowest.
SELECT *
FROM students
ORDER BY score DESC;

-- 7. Show the top 5 students by score.
SELECT *
FROM students
ORDER BY score DESC
LIMIT 5;

-- 8. Count how many students are in the table.
SELECT COUNT(*) AS total_students
FROM students;

-- 9. Find the average score of all students.
SELECT AVG(score) AS average_score
FROM students;

-- 10. Count how many students are in each major.
SELECT major, COUNT(*) AS student_count
FROM students
GROUP BY major;