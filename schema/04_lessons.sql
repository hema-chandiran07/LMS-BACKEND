-- Create the Lessons table to store course lessons/modules.
CREATE TABLE Lessons (
    lesson_id INT AUTO_INCREMENT PRIMARY KEY,
    course_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    content_type VARCHAR(50),  -- e.g., video, text, etc.
    content_url VARCHAR(255),  -- URL or file path
    order_index INT,           -- To specify the order within the course
    FOREIGN KEY (course_id) REFERENCES Courses(course_id) ON DELETE CASCADE
);