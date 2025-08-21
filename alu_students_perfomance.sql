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
);
