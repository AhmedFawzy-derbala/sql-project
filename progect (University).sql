 
 CREATE TABLE  test4. students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(15),
    department_id INT,
    enrollment_date DATE
);
CREATE TABLE test4. departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100)
);
CREATE TABLE test4. professors (
    professor_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    department_id INT
);
CREATE TABLE test4. courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100),
    department_id INT,
    professor_id INT
);
CREATE TABLE test4.student_courses (
    id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    grade DECIMAL(4,2)
);
INSERT INTO  test4.departments (department_name) VALUES
('علوم الحاسوب'),
('الهندسة'),
('الرياضيات'),
('اللغة الإنجليزية');
INSERT INTO test4. students (first_name, last_name, email, phone, department_id, enrollment_date) VALUES
('أحمد', 'علي', 'ahmed.ali@example.com', '01123456789', 1, '2023-09-01'),
('سارة', 'محمد', 'sara.mohamed@example.com', '01234567890', 2, '2022-09-01');
INSERT INTO test4. professors (name, email, department_id) VALUES
('د. خالد يوسف', 'khaled.youssef@example.com', 1),
('د. هالة فوزي', 'hala.fawzy@example.com', 3);
INSERT INTO  test4.courses (course_name, department_id, professor_id) VALUES
('برمجة 1', 1, 1),
('تفاضل وتكامل', 3, 2),
('هياكل البيانات', 1, 1);
INSERT INTO test4. student_courses (student_id, course_id, grade) VALUES
(1, 1, 85.5),
(1, 3, 90.0),
(2, 2, 78.0);