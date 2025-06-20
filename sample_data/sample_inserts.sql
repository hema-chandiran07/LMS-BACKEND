USE lms_db;

-- USERS
INSERT INTO Users (username, email, password_hash, role)
VALUES
  ('alice123', 'alice@example.com', 'hashpwd1', 'student'),
  ('bob_instructor', 'bob@example.com', 'hashpwd2', 'instructor'),
  ('carol_admin', 'carol@example.com', 'hashpwd3', 'admin');

-- COURSES
INSERT INTO Courses (title, description, category)
VALUES
  ('MySQL for Beginners', 'Introductory course on MySQL', 'Databases'),
  ('Web Development 101', 'Learn HTML, CSS, JS', 'Programming');

-- ENROLLMENTS
INSERT INTO Enrollments (user_id, course_id)
VALUES
  (1, 1),  -- Alice in MySQL
  (1, 2),  -- Alice in Web Dev
  (2, 1);  -- Bob in MySQL (maybe as test)

-- LESSONS
INSERT INTO Lessons (course_id, title, content_type, content_url, order_index)
VALUES
  (1, 'Introduction to MySQL', 'video', 'https://cdn.com/mysql_intro.mp4', 1),
  (1, 'Basic SQL Queries', 'document', 'https://cdn.com/sql_basics.pdf', 2),
  (2, 'HTML Basics', 'video', 'https://cdn.com/html_basics.mp4', 1);

-- PROGRESS
INSERT INTO Progress (user_id, lesson_id, completion_status, completion_date)
VALUES
  (1, 1, TRUE, '2025-06-18'),
  (1, 2, FALSE, NULL),
  (1, 3, TRUE, '2025-06-19');

-- QUIZZES
INSERT INTO Quizzes (course_id, title)
VALUES
  (1, 'MySQL Quiz 1'),
  (2, 'Web Dev Basics Quiz');

-- QUESTIONS
INSERT INTO Questions (quiz_id, question_text)
VALUES
  (1, 'What does SQL stand for?'),
  (2, 'What does HTML stand for?');

-- OPTIONS
INSERT INTO Options (question_id, option_text, is_correct)
VALUES
  (1, 'Structured Query Language', TRUE),
  (1, 'Strong Question List', FALSE),
  (2, 'HyperText Markup Language', TRUE),
  (2, 'HighText Machine Language', FALSE);

-- QUIZ ATTEMPTS
INSERT INTO QuizAttempts (user_id, quiz_id, score)
VALUES
  (1, 1, 80),
  (1, 2, 90);

-- GRADES
INSERT INTO Grades (user_id, course_id, grade, status)
VALUES
  (1, 1, 8.5, 'pass'),
  (1, 2, 9.0, 'pass');

-- CERTIFICATES
INSERT INTO Certificates (user_id, course_id, certificate_url)
VALUES
(1, 1, 'https://certs.example.com/johndoe-mysql'),
(3, 1, 'https://certs.example.com/alice-mysql');

-- DISCUSSIONS
INSERT INTO Discussions (lesson_id, course_id, user_id, comment)
VALUES
(1, 1, 1, 'Loved the intro lesson, very informative!'),
(1, 1, 3, 'How do we use SELECT in real apps?');


-- NOTIFICATIONS
INSERT INTO Notifications (user_id, message, is_read)
VALUES
(1, '🎉 You completed the MySQL Basics course!', FALSE),
(3, '📝 New quiz is available in MySQL Basics.', TRUE);

-- ACTIVITY LOGS
INSERT INTO ActivityLogs (user_id, activity)
VALUES
(1, 'Completed Lesson: Introduction'),
(3, 'Attempted MySQL Basics Quiz');
-- COURSE FEEDBACK
INSERT INTO CourseFeedback (user_id, course_id, rating, comment)
VALUES
(1, 1, 5, 'Excellent course. Everything was clearly explained!'),
(3, 1, 4, 'Good course, but more examples would help.');
