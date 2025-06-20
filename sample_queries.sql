USE lms_db;

-- USERS
INSERT INTO Users (username, email, password_hash, role) VALUES
('johndoe', 'john@example.com', 'hashedpwd1', 'student'),
('janedoe', 'jane@example.com', 'hashedpwd2', 'instructor'),
('alice99', 'alice@example.com', 'hashedpwd3', 'student');

-- COURSES
INSERT INTO Courses (title, description, category) VALUES
('MySQL Basics', 'Introductory MySQL course', 'Database'),
('Web Development', 'Frontend + Backend Basics', 'Programming');

-- LESSONS
INSERT INTO Lessons (course_id, title, content) VALUES
(1, 'Introduction to MySQL', 'Overview of MySQL'),
(1, 'SQL Queries', 'Writing SELECT, INSERT, etc.'),
(2, 'HTML & CSS', 'Learn the basics of web design');

-- ENROLLMENTS
INSERT INTO Enrollments (user_id, course_id, enrollment_date) VALUES
(1, 1, '2024-06-01'),
(3, 1, '2024-06-02'),
(1, 2, '2024-06-10');

-- PROGRESS
INSERT INTO Progress (user_id, lesson_id, completion_status, completion_date) VALUES
(1, 1, 'completed', '2024-06-03'),
(1, 2, 'completed', '2024-06-04'),
(3, 1, 'in-progress', NULL);

-- QUIZZES
INSERT INTO Quizzes (course_id, title, total_marks) VALUES
(1, 'Quiz #1', 100),
(1, 'Quiz #2', 100),
(2, 'Web Quiz', 50);

-- QUIZ ATTEMPTS
INSERT INTO QuizAttempts (user_id, quiz_id, score, attempt_date) VALUES
(1, 1, 85.5, '2024-06-05'),
(1, 2, 80.0, '2024-06-06'),
(3, 1, 55.0, '2024-06-07');

-- GRADES
INSERT INTO Grades (user_id, course_id, final_grade, pass_fail_status) VALUES
(1, 1, 85.5, 'pass'),
(3, 1, 55.0, 'fail');
