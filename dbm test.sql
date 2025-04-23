-- CREATE DATABASE tblstudent

-- (a)(i)
-- CREATE DATABASE tblFinance
CREATE TABLE finance (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    tuition_fee DECIMAL(10, 2) NOT NULL,
    administration_fee DECIMAL(10, 2) NOT NULL,
    exam_fee DECIMAL(10, 2) NOT NULL,
    medical_fee DECIMAL(10, 2) NOT NULL

);



-- (ii)

SELECT 
    student.student_id,
    student.name,
    student.class,
    finance.tuition_fee
FROM students 
WHERE student.class = 'Y1S1';
 
 -- (iii)
SELECT student_id,studentname AS student_name,year,financialtuition_fee
FROM students 
WHERE financialtuition_fee >= 30000;

-- (iv)
INSERT INTO students (studentname, birthdate, year, phone)
VALUES ('Dan', '2001-04-20', 'Y1S2', '0723456123');

-- (v)
UPDATE students
SET name = 'Nelson'
WHERE student_id = 26;

-- (vi)
SELECT 
    MAX(tuition_fee) AS highest_amount,
    MIN(tuition_fee) AS lowest_amount
FROM 
    finance;



