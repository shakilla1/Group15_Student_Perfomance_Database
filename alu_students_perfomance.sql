CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    intake_year YEAR NOT NULL,
);

CREATE TABLE linux_grades (
    course_id INT,
    course_name VARCHAR(50) NOT NULL,
    student_id INT,
    grade_obtained DECIMAL(5, 2),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

CREATE TABLE python_grades (
    course_id INT,
    course_name VARCHAR(50) NOT NULL,
    student_id INT,
    grade_obtained DECIMAL(5, 2),
    FOREIGN KEY (student_id) REFERENCES students(student_id) 
)

Insert the sample data 
-- Insert Students
INSERT INTO students VALUES
(1, 'Alice Mugenzi', 2023),
(2, 'Brian Uwimana', 2023),
(3, 'Cynthia Niyonsaba', 2024),
(4, 'David Habimana', 2023),
(5, 'Elise Uwase', 2024),
(6, 'Frank Nkurunziza', 2023),
(7, 'Grace Mukamana', 2024),
(8, 'Henry Mugisha', 2023),
(9, 'Irene Ishimwe', 2024),
(10, 'John Rukundo', 2023),
(11, 'Karen Uwera', 2023),
(12, 'Louis Nsengiyumva', 2024),
(13, 'Maria Nshuti', 2023),
(14, 'Peter Kamanzi', 2024),
(15, 'Queen Umutoni', 2023);

Insert Linux Grades (Some students only)
INSERT INTO linux_grades VALUES
(101, 'Linux Fundamentals', 1, 45.00),
(102, 'Linux Fundamentals', 2, 78.00),
(103, 'Linux Fundamentals', 3, 55.00),
(104, 'Linux Fundamentals', 4, 68.00),
(105, 'Linux Fundamentals', 5, 49.00),
(106, 'Linux Fundamentals', 7, 90.00),
(107, 'Linux Fundamentals', 8, 81.00),
(108, 'Linux Fundamentals', 10, 35.00),
(109, 'Linux Fundamentals', 12, 77.00),
(110, 'Linux Fundamentals', 15, 62.00);

Insert Python Grades (Some students only)
INSERT INTO python_grades VALUES
(201, 'Python Programming', 1, 67.00),
(202, 'Python Programming', 3, 84.00),
(203, 'Python Programming', 6, 40.00),
(204, 'Python Programming', 7, 95.00),
(205, 'Python Programming', 9, 59.00),
(206, 'Python Programming', 11, 72.00),
(207, 'Python Programming', 12, 88.00),
(208, 'Python Programming', 13, 53.00),
(209, 'Python Programming', 14, 49.00),
(210, 'Python Programming', 15, 75.00);

# Queries

-- Students with Linux grade below 50%
SELECT s.student_id, s.student_name, l.grade_obtained
FROM students s
JOIN linux_grades l ON s.student_id = l.student_id
WHERE l.grade_obtained < 50;

