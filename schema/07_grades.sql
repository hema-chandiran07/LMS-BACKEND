-- Create the Grades table to store final grades and pass/fail status.
CREATE TABLE Grades (
    grade_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    course_id INT NOT NULL,
    final_grade DECIMAL(5,2) NOT NULL,
    pass_fail_status ENUM('pass', 'fail') NOT NULL,
    graded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES Courses(course_id) ON DELETE CASCADE,
    UNIQUE KEY unique_grade (user_id, course_id)
);